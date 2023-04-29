unit UFuncoes;

interface
//Declara as funçoes e variaveis
function TestarPermissao (NOME_FORM:string):boolean;

implementation
// Aqui será implementado as funções
uses Vcl.Dialogs;

// Esta será a função que testa a permissão do usuario
function TestarPermissao (NOME_FORM:string):boolean;
begin
  Result := True;
  if Result = False then
  ShowMessage('Acesso Negado')


end;

end.
