unit UFuncoes;

interface
//Declara as fun�oes e variaveis
function TestarPermissao (NOME_FORM:string):boolean;

implementation
// Aqui ser� implementado as fun��es
uses Vcl.Dialogs;

// Esta ser� a fun��o que testa a permiss�o do usuario
function TestarPermissao (NOME_FORM:string):boolean;
begin
  Result := True;
  if Result = False then
  ShowMessage('Acesso Negado')


end;

end.
