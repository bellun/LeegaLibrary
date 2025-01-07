#15.A Recepcionista Alice Meire solicitou a alteração do bairro do 
#usuário ‘Alberto Roberto’ que morava no ‘IAPI’  e agora mora no bairro de ‘Perdizes’.

#START TRANSACTION;
/*
SELECT @idusuario := us1.ID_usuario
FROM usuario us1
WHERE us1.bairro = 'IAPI'
AND us1.nome_usuario = 'Alberto Roberto';

UPDATE usuario
SET bairro = 'Perdizes'
WHERE ID_usuario = @idusuario;
*/
#ROLLBACK