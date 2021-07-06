/*
SPDX-License-Identifier: CC-BY-4.0
Desenvolvido por Lucas Bulhões
Trabalho de Conclusão de Curso - Samrt Contracts - PUC-SP
Objeto: registro de livros no blockchain para uma biblioteca
*/

pragma solidity 0.8.4;

contract registroLivrosBiblioteca {
    
    struct registroLivros {
        string titulo;
        string autor;
        string editora;
        uint anoPublicacao;
        uint numeroEdicao;
    }
    
    address public owner;
    
    registroLivros[] public livros;
    
    constructor() {
        owner = msg.sender;
    }
    
    function registerLivro(
        string memory addTitulo,
        string memory addAutor,
        string memory addEditora,
        uint addAnoPublicacao,
        uint addNumeroEdicao
    ) external returns (bool) {
        require(msg.sender == owner, "Voce nao possui permissao para essa acao");
        registroLivros memory novoLivro = registroLivros(addTitulo, addAutor, addEditora, addAnoPublicacao, addNumeroEdicao);
        livros.push(novoLivro);
        return true;
    }
    
}
