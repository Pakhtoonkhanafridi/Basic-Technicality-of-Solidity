// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Interface{
    uint public  count;

    function increment() external {
        count += 1;
    }
}

interface ICounter  {
    function count() external view returns (uint);

    function increment () external;
}

contract MyContract {
    function incrementCounter(address _count) external  {
       return ICounter(_count).increment();
    }

    function getCount(address _count) external view returns(uint)
    {
         return ICounter(_count).count();
    }

    
    }
    interface UniswapV2Factory  {
        
        function getPair(address tokenA, address tokenB)
        external 
        view
        returns (address pair);
    }

    interface UniswapV2Pair {
        function getReserves()
        external 
        view 
        returns (
            uint112 reserved0,
            uint112 reserved1,
            uint32 blockTimestampLast
        );
    }

    contract UniswapV2Example {
        address private factory = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        address private dai = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
        address private weith = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

        function getTokenRessrves() external view returns (uint, uint) {
            address pair = UniswapV2Factory(factory).getPair(dai, weith);
            (uint reserved0, uint reserved1,) = UniswapV2Pair(pair).getReserves();
            return (reserved0, reserved1);
        }
    }