<!DOCTYPE html>
<html style="margin: 0 auto; padding: 0 auto;">
<head>
    <title>Cadastro de Empresa - PRAC</title>
</head>

<body style="margin: 0 auto; padding: 0 auto; font-family: Arial">
<header style="width: 100%; margin: auto">
    <div style="height: 1em; width: 100%; background: #024981;">
        &nbsp;</div>

    <div style="width: 50%; margin: auto">
        <img src="http://www.prac.com.br/site/images/logotipo1.jpg"
             alt="logo">
    </div>
</header>
<section style="width: 80%; margin: auto; background: #EBEBEB">

    <table>
        <tr>
            <td><strong>Empresa:</strong></td>
            <td colspan="6">${company.companyName}</td>
        </tr>
        <tr>
            <td><strong>CNPJ:</strong></td>
            <td>${company.companyRegistration}</td>
        </tr>

        <tr>
            <#if company.municipalRegistration??  && company.municipalRegistration != "" >
            <td><strong>Inscrição Municipal:</strong></td>
            <td>${company.municipalRegistration}</td>
            </#if>

            <#if company.stateRegistration?? && company.stateRegistration != "">
            <td><strong>Inscrição Estadual:</strong></td>
            <td>${company.stateRegistration}</td>
            </#if>
        </tr>

        <tr>
            <td><strong>Enredeço:</strong></td>
            <td>${company.address.street}</td>
            <td><strong>Nº:</strong></td>
            <td>${company.address.number}</td>
        </tr>

        <tr>
            <td><strong>Complemento:</strong></td>
            <td>${company.address.complement}</td>
            <td><strong>CEP:</strong></td>
            <td>${company.address.zipCode}</td>
        </tr>

        <tr>
            <td><strong>Cidade:</strong></td>
            <td>${company.address.city}</td>
            <td><strong>Estado:</strong></td>
            <td>${company.address.state}</td>

        </tr>

        <tr>
            <td><strong>Nome:</strong></td>
            <td>${company.contact.name}</td>
            <td><strong>Cargo:</strong></td>
            <td>${company.contact.jobTitle}</td>
        </tr>

        <tr>
            <td><strong>E-mail:</strong></td>
            <td>${company.contact.email}</td>
        </tr>
        <tr>
            <td><strong>Telefone:</strong></td>
            <td>${company.phoneNumber}</td>
        </tr>
        <tr>
            <td><strong>Celular:</strong></td>
            <td>${company.cellNumber}</td>
        </tr>
    </table>

    <a href="${url}/companies/activation/${company.activationHash}" style="text-decoration: none;">
        <div style="height: 1em; margin: auto; width: 33.33%; background: #024981; text-align: center; padding: 1em; color: #FFF">
            Aprovar</div>
    </a>

</section>

<footer
        style="width: 100%; margin: 80px 0px 0px 0px; background: none repeat scroll 0 0 #EBEBEB; box-shadow: 0px -6px 8px 4px rgba(00, 00, 00, 0.2);">
    <div style="width: 50%; margin: auto;">
			<span
                    style="background: none repeat scroll 0 0 #4195A0; color: #FFFFFF; display: block; font-size: 12px; margin-bottom: -8px; padding: 2px 8px; width: 178px; text-align: center">©
				PRAC - Programa de Responsabilidade Ambiental Compartilhada 2001 -
				2016 </span> <br /> Todos os Direitos Reservados.
    </div>
</footer>

</body>
</html>