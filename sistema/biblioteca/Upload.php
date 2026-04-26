<?php

namespace sistema\biblioteca;

use Directory;

    /**
     * Classe Upload
     * 
     * @author Isaac Caraça <isaaccaracayahoo@gmail.com>
     */

class Upload
{
    public $diretorio;
    public $arquivo;
    public $nome;
    public $subDiretorio;

    public function __construct(?string $diretorio = null)
    {
        $this->diretorio = $diretorio ?? 'uploads';
        if(!file_exists($this->diretorio) && !is_dir($this->diretorio)){
            mkdir($this->diretorio, 0755);
        }
    }

    public function arquivo(array $arquivo, ?string $subDiretorio = null)
    {
        $this->arquivo = $arquivo;
        $this->subDiretorio = $subDiretorio ?? 'arquivos';

        $this->criarsubDiretorio();
        $this->moverArquivo();
    }

    public function criarsubDiretorio(): void
    {
        $caminhoCompleto = $this->diretorio . DIRECTORY_SEPARATOR . $this->subDiretorio;

        if (!file_exists($caminhoCompleto) && !is_dir($caminhoCompleto)) {
            mkdir($caminhoCompleto, 0755);
        }
    }
    public function moverArquivo(): void
    {
        if(move_uploaded_file($this->arquivo['tmp_name'], $this->diretorio. DIRECTORY_SEPARATOR.$this->subDiretorio.DIRECTORY_SEPARATOR.$this->arquivo['name'])){
            echo 'movido com sucesso';
        }else {
            echo 'Erro ao enviar arquivo';
        }
    }


}

?>