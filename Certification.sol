// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Titulo_UVM_G22_2023 {

 address public minter;
 string public recipient;
 string public issuer;
 string public credential;
 string public academic_program;
 string public year_of_award;
 string public country;
 string public folio_digital;

  constructor() {
 minter = msg.sender;
 recipient = "Irvin Aly Luevano Munoz";
 issuer = "Tecnologico de Monterrey";
 credential = "Generacion 22";
 academic_program = "Licenciado en Administracion de Empresas";
 year_of_award = "Junio 22 de 2022";
 country = "Mexico";
 folio_digital = "ERC_2352525F453";
 }
    modifier owner() {
        require(msg.sender == minter);
        _;
    }


    function setRecipient(string memory newRecipient) public owner {
        recipient = newRecipient;
    }

    function setIssuer(string memory newIssuer) public owner {
        issuer = newIssuer;
    }

    function setCredential(string memory newCredential) public owner {
        credential = newCredential;
    }

    function setAcademic_program(string memory newAcademic_program) public owner{
        academic_program = newAcademic_program;
    }

    function setYear_of_award(string memory newYear_of_award) public owner{
        year_of_award = newYear_of_award;
    }

    function setCountry(string memory newCountry) public owner{
        country = newCountry;
    }

    function setFolio_digital(string memory newFolio_digital) public owner{
        folio_digital = newFolio_digital;
    }
}
