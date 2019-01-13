pragma solidity ^0.4.11;

import "./lol_sale.sol";

contract LOLSaleUtil {
    LOLSale  public  sale;

    function LOLSaleUtil(LOLSale _sale) {
        sale = _sale;
    }

    function dailyTotals() constant returns (uint[20] result) {
        for (uint i = 0; i < 20; i++) {        //Past 351
            result[i] = sale.dailyTotals(i);
        }
    }

    function userBuys(address user) constant returns (uint[20] result) {
        for (uint i = 0; i < 20; i++) {
            result[i] = sale.userBuys(i, user);
        }
    }

    function userClaims(address user) constant returns (bool[20] result) {
        for (uint i = 0; i < 20; i++) {
            result[i] = sale.claimed(i, user);
        }
    }
}
