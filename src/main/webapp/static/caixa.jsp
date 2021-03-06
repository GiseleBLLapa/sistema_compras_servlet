<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<html>
    <head>
        <meta charset = "UTF-8">
        <title>Caixa</title>
        <link rel = "icon" type = "image/x-icon" href = "assets/favicon.ico">
        <link rel = "stylesheet" href = "styles/style.css">
        <link rel = "stylesheet" href = "styles/caixa.css">
    </head>
    <body>
        <h4 class = "is-center">Busca de Produtos</h4>
        <div class = "container">
            <div class = "hero is-full-screen">
                <nav class = "tabs is-center">
                    <a href = "caixa">Home</a>
                    <a href = "relatorio">Relatório</a>
                    <a href = "estoque">Estoque</a>
                    <a href = "cadastro">Cadastro de Produtos</a>
                </nav>
                <div id = "estoque">
                    <div class = "row">
                        <div class = "col">
                            <div class = "search-box">
                                <form action = "caixa" method = "GET">
                                    <div class = "row">
                                        <div class = "col-10">
                                            <div>
                                                <input type = "text" name = "name" placeholder = "Código do Produto"/>
                                            </div>
                                        </div>
                                        <div class = "col">
                                            <button class = "button icon-only">
                                                <img src = "https://icongr.am/feather/search.svg?size=24">
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <form action = "caixa" method = "GET">
                                    <table class = "striped">
                                        <caption>Resultado da pesquisa</caption>
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Descrição</th>
                                                <th>Preço</th>
                                                <th>Código do Produto</th>
                                                <th>Quantidade</th>
                                                <th>Unidade</th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>KitKat</td>
                                                <td>Chocolate</td>
                                                <td>R$ 2,10</td>
                                                <td>274671264128</td>
                                                <td>
                                                    <div class = "qtd-prod">
                                                        <input type = "number" min = "1" name = "name"/>
                                                    </div>
                                                </td>
                                                <td>unid</td>
                                                <td>
                                                    <input type = "submit" value = "Comprar" style = "align-items: center"/>
                                                </td>
                                                <td>
                                                    <input type = "reset" value = "Cancelar" style = "align-items: center"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </form>
                                <form action = "relatorio" method = "GET">
                                    <table class = "striped">
                                        <thead>
                                            <tr>
                                                <th>Moeda</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>R$</td>
                                                <td>
                                                    <label>0,00</label>
                                                </td>
                                                <td>
                                                    <input type = "submit" value = "Finalizar Compra" style = "align-items: center"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class = "is-text-center">
            <p>
                Sistema para o gerennciamento de caixa
            </p>
        </footer>
    </body>
</html>