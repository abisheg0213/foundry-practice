// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract SimpleStorage
{
    uint myfavoriteNumber;
    mapping (string => uint )public nameTofavoriteNumber;
        struct Person{
            uint favoriteNumber;
            string name;
    }
    Person[] public myFriends;
    function addFriend(string memory _name,uint _favoriteNumber) public 
    {
        nameTofavoriteNumber[_name]=_favoriteNumber;
        myFriends.push(Person(_favoriteNumber,_name));
    }
    function store(uint _favoriteNumber) public {
        myfavoriteNumber=_favoriteNumber;
    }
    function retrive() public view returns(uint)
    {
        return myfavoriteNumber;
    }
}
