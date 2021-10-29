<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="SistemaWebControlerEstoque.Produto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="CSS.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="cadastroDeProdutos" runat="server" Font-Bold="True" Font-Size="Larger" Text="Cadastro de Produtos" CssClass="label-title"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnLimpar" runat="server" CssClass="botao-limpar" OnClick="btnLimpar_Click" style="margin-left: 25px" Text="Limpar" />
            <asp:Button ID="btnGravar" runat="server" CssClass="botao-gravar" OnClick="btnGravar_Click" style="margin-left: 25px" Text="Gravar" />
            <asp:Button ID="btnCarregar" runat="server" CssClass="botao-carregar" OnClick="btnCarregar_Click" style="margin-left: 25px" Text="Carregar" />
            <asp:Button ID="btnExcluir" runat="server" CssClass="botao-excluir" OnClick="btnExcluir_Click" style="margin-left: 25px" Text="Excluir" />
            <br />
            <br />
        </div>
        <asp:Label ID="labelId" runat="server" Text="Id: " Width="140px"></asp:Label>
        <asp:TextBox ID="txtId" runat="server" style="margin-left: 0px" Width="50px"></asp:TextBox>
        <p>
            <asp:Label ID="labelNome" runat="server" Text="Nome: " Width="140px"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server" style="margin-left: 0px" Width="370px"></asp:TextBox>
        </p>
        <asp:Label ID="labelDescricao" runat="server" Height="105px" Text="Descrição: " Width="140px"></asp:Label>
        <asp:TextBox ID="txtDescricao" runat="server" Height="100px" style="margin-left: 0px" TextMode="MultiLine" Width="370px"></asp:TextBox>
        <p>
            <asp:Label ID="labelCusto" runat="server" Text="Preço de Custo: " Width="140px"></asp:Label>
            <asp:TextBox ID="txtCusto" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="labelVenda" runat="server" Text="Preço de Venda: " Width="140px"></asp:Label>
            <asp:TextBox ID="txtVenda" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="labelQuantidade" runat="server" Text="Quantidade:" Width="140px"></asp:Label>
            <asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="labelUnidade" runat="server" Text="Unidade: " Width="140px"></asp:Label>
            <asp:TextBox ID="txtUnidade" runat="server" style="margin-left: 0px" Width="50px"></asp:TextBox>
        </p>
        <asp:Label ID="labelCategoria" runat="server" Text="Categoria: " Width="140px"></asp:Label>
        <asp:DropDownList ID="ddlCategoria" runat="server" Height="24px" style="margin-left: 0px" Width="219px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="gridProdutos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="874px">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </form>
</body>
</html>
