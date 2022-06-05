# Findings

## On disk

No detection on disk could be found.

## Network

### Startup

`https://auth.edge.hiyaapi.com/v2/auth/token` Register auth token.

Request:
```json
{
    "grants": [
        {
            "jws": "eyJ4NWMiOlsiTUlJREZ6Q0NBb0NnQXdJQkFnSUJBVEFOQmdrcWhraUc5dzBCQVFzRkFEQjJNUXN3Q1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0F3S1xuUTJGc2FXWnZjbTVwWVRFVk1CTUdBMVVFQ2d3TVIyOXZaMnhsTENCSmJtTXVNUkF3RGdZRFZRUUxEQWRCYm1SeWIybGtNU2t3SndZRFxuVlFRRERDQkJibVJ5YjJsa0lGTnZablIzWVhKbElFRjBkR1Z6ZEdGMGFXOXVJRXRsZVRBZ0Z3MDNNREF4TURFd01EQXdNREJhR0E4eVxuTVRBMk1ESXdOekEyTWpneE5Wb3dIekVkTUJzR0ExVUVBd3dVUVc1a2NtOXBaQ0JMWlhsemRHOXlaU0JMWlhrd2daOHdEUVlKS29aSVxuaHZjTkFRRUJCUUFEZ1kwQU1JR0pBb0dCQUxCUEFhaEFVVlc4YXlMb3BSMGRvWGVxa0JHcWJjWENIZjMrXC9ob2lmdW1UZVhNcVlFU0ZcbjFZU2tidkpCMWxMMzJldHpUNHF1VVZhQlFyYlRRU2UyTzNpenhKaDNFS3dNZ1RCTUNRMFBrMFwvMm0xdTVwV2xoV2tHV0JLSGg0QVZoXG5uVHJ4cTk5Ym54QkgrMVluQmJUU0pyUElBWUw2MnFnWmtlSXZCODdGNmV5TEFnTUJBQUdqZ2dFSU1JSUJCREFMQmdOVkhROEVCQU1DXG5CTEF3Z2RNR0Npc0dBUVFCMW5rQ0FSRUVnY1F3Z2NFQ0FRSUtBUUFDQVFNS0FRQUVBQVFBTUlHc29RNHhEQUlCQUFJQkFRSUJBZ0lCXG5BNklEQWdFQm93UUNBZ1FBcFFVeEF3SUJCcVlGTVFNQ0FRV1wvZ1VnRkFnTUJBQUdcL2czY0NCUUNcL2hUMElBZ1lCZ0tWeXJqQ1wvaFQ0RFxuQWdFQXY0VkJCUUlEQVYrUXY0VkNCUUlEQXhTMHY0VkZTd1JKTUVjeElUQWZCQmhqYjIwdWQyVmlZWE5qWlc1a1pYSXVZMkZzYkdWeVxuYVdRQ0F3R3RzVEVpQkNEdmFLY0tPa2Y0M1VaWVV1cmpsNjdXR2tNNDJCUW1CWjdSQWNMUjlqVFozakFBTUI4R0ExVWRJd1FZTUJhQVxuRk5RTUVCdjR6V081OXpsU3RRNFRYS2JYbVpPR01BMEdDU3FHU0liM0RRRUJDd1VBQTRHQkFJdjlZc2VcL3AreDk4UjdRYlNMd2tGMGlcblhIUnZcL2lQbGp2VEgxcDh2VkV0OHRsbWE2dnRJcXhWTWdTSGthU2tTR1psN3d3MVwvdjhObUpYM2xzYTl3N3NxeWVCVldlR21xR3hsa1xuWnVYYkxcL0R5WjNRRzFua0xcL1BDY2FiTDJ3Tmp3eTNDVXhObFlnSTFIT0RcL1lNVlZnZ3ZTaFE4cTVESFJoTGJkVTZhTnd1ZnJKXG4iLCJNSUlDdGpDQ0FoK2dBd0lCQWdJQ0VBQXdEUVlKS29aSWh2Y05BUUVMQlFBd1l6RUxNQWtHQTFVRUJoTUNWVk14RXpBUkJnTlZCQWdNXG5Da05oYkdsbWIzSnVhV0V4RmpBVUJnTlZCQWNNRFUxdmRXNTBZV2x1SUZacFpYY3hGVEFUQmdOVkJBb01ERWR2YjJkc1pTd2dTVzVqXG5MakVRTUE0R0ExVUVDd3dIUVc1a2NtOXBaREFlRncweE5qQXhNRFF4TWpRd05UTmFGdzB6TlRFeU16QXhNalF3TlROYU1IWXhDekFKXG5CZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlEQXBEWVd4cFptOXlibWxoTVJVd0V3WURWUVFLREF4SGIyOW5iR1VzSUVsdVl5NHhFREFPXG5CZ05WQkFzTUIwRnVaSEp2YVdReEtUQW5CZ05WQkFNTUlFRnVaSEp2YVdRZ1UyOW1kSGRoY21VZ1FYUjBaWE4wWVhScGIyNGdTMlY1XG5NSUdmTUEwR0NTcUdTSWIzRFFFQkFRVUFBNEdOQURDQmlRS0JnUURBZ3lQY1ZvZ2J1REFnYWZXd2hXSEc3cjVcL0JlTDFxRUlFaXI2TFxuUjc1MlwvcTd5WFBLYkt2b3lBQlFXQVVLWmlhRmZ6OGFCWHJOaldEd3YwdklMNUpneWc5MkJTeGJYNFlWQmV1Vkt2Q2xxT20yMXdBUUlcbk8yakZWc0h3SXptUlpCbUdUVkMzVFVDdXlraE1kelZzaVZvTUoxcVwvckVtZFhYMGpZdktjWGdMb2NRSURBUUFCbzJZd1pEQWRCZ05WXG5IUTRFRmdRVTFBd1FHXC9qTlk3bjNPVksxRGhOY3B0ZVprNFl3SHdZRFZSMGpCQmd3Rm9BVUtmcnhyTXhOMGt5V1FDZDF0ckRwTXVVSFxuXC9pNHdFZ1lEVlIwVEFRSFwvQkFnd0JnRUJcL3dJQkFEQU9CZ05WSFE4QkFmOEVCQU1DQW9Rd0RRWUpLb1pJaHZjTkFRRUxCUUFEZ1lFQVxubmkxSVg0eG5NOXdhaGEyWjExQWo2aFRzUTdEaG5lckNJMFllY3JVWjNHQWk1S1ZvTVd3TFZjVG1uS0l0bnpwUGsyc3hpeFo0RmcySVxueTltTHpJQ2RoUERDSitOck9QSDkwZWNYY2pGWk5YMlc4OFZcL3E1MlBsbUVtVDdLK2dic05TUVFpaXM2ZjlcL1ZDTGlWRStpRUhFbHFEXG50Vld0R0lMNFFCU2JuQ0JqQkg4PVxuIiwiTUlJQ3B6Q0NBaENnQXdJQkFnSUpBUCtVMmQyZkI4Z01NQTBHQ1NxR1NJYjNEUUVCQ3dVQU1HTXhDekFKQmdOVkJBWVRBbFZUTVJNd1xuRVFZRFZRUUlEQXBEWVd4cFptOXlibWxoTVJZd0ZBWURWUVFIREExTmIzVnVkR0ZwYmlCV2FXVjNNUlV3RXdZRFZRUUtEQXhIYjI5blxuYkdVc0lFbHVZeTR4RURBT0JnTlZCQXNNQjBGdVpISnZhV1F3SGhjTk1UWXdNVEEwTVRJek1UQTRXaGNOTXpVeE1qTXdNVEl6TVRBNFxuV2pCak1Rc3dDUVlEVlFRR0V3SlZVekVUTUJFR0ExVUVDQXdLUTJGc2FXWnZjbTVwWVRFV01CUUdBMVVFQnd3TlRXOTFiblJoYVc0Z1xuVm1sbGR6RVZNQk1HQTFVRUNnd01SMjl2WjJ4bExDQkpibU11TVJBd0RnWURWUVFMREFkQmJtUnliMmxrTUlHZk1BMEdDU3FHU0liM1xuRFFFQkFRVUFBNEdOQURDQmlRS0JnUUNpYTYzcmJpNUVZZVwvVkRvTG10NVRSZFNNZmQ1dGprV1BcLzk2clwvQzNKSFRzQXNRK3d6Zk5lc1xuN1VBK2pDaWdadFgzaHdzemw5NE91RTRUUUt1dnBTZVwvbFdtZ01kc0dVbVg0UkZsWFlmQzc4aGRMdDBHQVpNQW9EbzlTZDQ3YjBrZTJcblJla1p5T21Mdzl2Q2tUXC9YMTFERUhUVm0rVmZrbDVZTENhek9raldGbXdJREFRQUJvMk13WVRBZEJnTlZIUTRFRmdRVUtmcnhyTXhOXG4wa3lXUUNkMXRyRHBNdVVIXC9pNHdId1lEVlIwakJCZ3dGb0FVS2ZyeHJNeE4wa3lXUUNkMXRyRHBNdVVIXC9pNHdEd1lEVlIwVEFRSFwvXG5CQVV3QXdFQlwvekFPQmdOVkhROEJBZjhFQkFNQ0FvUXdEUVlKS29aSWh2Y05BUUVMQlFBRGdZRUFUM0x6TmxtTkRzRzVkRnN4V2Zid1xualNWSk1KNmpIQndwMGtVdElMbE5YMlMwNklESGVIcWNPZDZvc1wvV1wvTDNCZlJ4QmN4ZWJyVFFhWllkS3VtZ2ZcLzkzeTRxK3VjRHlRSFxuWHJGXC91bmx4XC9VMWJudDhVcWY3ZjdYekFpRjM0M1p0a01sYlZOWnJpRVwvbVB6c0Y4M08ra3FySlZ3NE9wTHZ0YzltTDFKMUlYdm1NPVxuIl0sImFsZyI6IlJTNTEyIn0.eyJjcmVhdGVkQXQiOiIyMDIyLTA1LTA4VDIwOjUzOjE4LjQ1MFoiLCJwcm9kdWN0TmFtZSI6IkhpeWFBbmRyb2lkIiwiaW5zdGFsbGF0aW9uSWQiOiJmVWV6S2l5bVJGR2dyVGFEYzFlRk5PIiwiZGV2aWNlSWQiOiJjMmVhZjBiZGI5YmJjZWJhIn0.Umo8GsBwadxLR_weTpRRhAptA3rGrVeJhHtrxuP3Phs81rqzKaJy4w699MCqgKcJ5C6hq4fNfVXWd0dPtPC98nyCr6V0LIrBgExCi8_osZN2tbx2a4uhO7OR5uANe6SjK09dDp9w0woPaOYbLwKwd79PsDn_2yhM54BjZeniEus",
            "type": "HiyaJWSGrant"
        }
    ]
}
```

Response:
```json
{
    "accessToken": "eyJraWQiOiJDMEI0NzVFQi1DREUzLTQ4RUQtOTBDOS1BNDlGQ0Y3RTBGMDUiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJhdXRoLmVkZ2UuaGl5YWFwaS5jb20iLCJhdWQiOlsicmVwb3J0cy5lZGdlLmhpeWFhcGkuY29tIiwicGhvbmVzLmVkZ2UuaGl5YWFwaS5jb20iLCJkdW1iby1vY3RvcHVzLmVkZ2UuaGl5YWFwaS5jb20iLCJub3RpZmljYXRpb25zLmVkZ2UuaGl5YWFwaS5jb20iLCJpbmdlc3Rpb24uZWRnZS5oaXlhYXBpLmNvbSIsImRpcmVjdG9yeS5lZGdlLmhpeWFhcGkuY29tIiwiY2FsbGVycHJvZmlsZS5lZGdlLmhpeWFhcGkuY29tIiwiZWRnZS5oaXlhYXBpLmNvbSIsInBob25lLXN0cmVhbXMuZWRnZS5oaXlhYXBpLmNvbSIsImFjY291bnRzLmVkZ2UuaGl5YWFwaS5jb20iXSwiZXhwIjoxNjUyNjE4OTQwLCJpYXQiOjE2NTIwNDMyMDQsImhndCI6ImhpeWFfZ3JhbnQiLCJocG4iOiJIaXlhQW5kcm9pZCIsImhpbiI6ImZVZXpLaXltUkZHZ3JUYURjMWVGTk8iLCJoYXMiOltdLCJodWkiOiI0NjQ1MjJjNy1mMzY2LTQwNmUtOTUxZC1iNDMyNjYxYTljYzUifQ.lxxza7PD-va_pxVNbUI0MefHqF4Vo2Nrzp38xzsI9-5SSx-QIPplxgXD-moEnYzjHh6Cxp3Mw_lKppu1DYDqM9jnpc6ssOILsDEjza2z2lyUQDiTeZKwE0_iP95YSoW40b1khCU7eW_9qaNGJ5uRi0vqhZzSeMMTt6dHl4vRyvCgYwtZH11ivgmf5oghfV7bfHW6kHDfoBXD4HD35Fqgx7dPg1NIG919CChiO7Ua7FJqD7knHyurNgAP1oZGnGz3GpmJr6exlCef3cX1GVXTVrmsH1lojCiJ_jwAb89K0Cx6g34mW1El-UgX5kerbYbZpGVYxvSPgdC-cIL9kQOW6Q",
    "expiresInSeconds": 575736,
    "grantInfos": []
}
```

### Incoming call

`https://callerprofile.edge.hiyaapi.com/v3/phone_numbers/eventProfile` Check incoming phone number.

Request:
```json
{
    "event": {
        "direction": "Incoming",
        "isContact": false,
        "phone": {
            "meta": {
                "countryCode": "US",
                "isShortCode": false,
                "isValid": false,
                "parserVersion": "5.0.2",
                "rawPhone": "00447868726250"
            },
            "phone": "1/00447868726250"
        },
        "timestamp": "2022-05-02T16:11:26.559Z",
        "type": "EventProfileCallEvent"
    },
    "profileScope": {
        "identity": true,
        "registered": true,
        "reputation": true
    }
}
```

Response:
```json
{
    "attribution": {
        "attributionImageUrl": "https://d1l4c4k7e7g7hf.cloudfront.net/v1/attribution/hiya_logo.png",
        "attributionName": "Hiya",
        "attributionUrl": "https://www.hiya.com"
    },
    "callId": "33bf8bb2-d015-449e-a576-39ec1251af33",
    "displayName": "Suspected Spam",
    "profileDetails": {
        "entityType": "UNKNOWN",
        "lineTypeId": "other"
    },
    "profileIcon": "WARN",
    "profileTag": "1:cps:{\"name\":{\"id\":0,\"rep\":2},\"phoneInfo\":0,\"scope\":11,\"spoofing\":{\"safe\":\"\",\"spoofed\":\"mcs\",\"status\":\"spoofed\"}}¦iai:DEFAULT::0¦id:{\"attr\":\"none\",\"conf\":0.0,\"name\":\"none\",\"sources\":0}¦cid:33bf8bb2-d015-449e-a576-39ec1251af33¦rep:2:2::1:rs_us_invalid()#spam",
    "reputationLevel": "SPAM",
    "verified": false
}
```

`https://callerprofile.edge.hiyaapi.com/v3/phone_numbers/eventProfile` non spam call.

Request:
```json
{
    "event": {
        "direction": "Incoming",
        "isContact": false,
        "phone": {
            "meta": {
                "countryCode": "US",
                "isShortCode": false,
                "isValid": true,
                "lineType": "fixed_or_mobile",
                "parserVersion": "5.0.2",
                "rawPhone": "+16505551212"
            },
            "phone": "1/6505551212"
        },
        "timestamp": "2022-05-02T15:55:31.046Z",
        "type": "EventProfileCallEvent"
    },
    "profileScope": {
        "identity": true,
        "registered": true,
        "reputation": true
    }
}
```

Response:
```json
{
    "attribution": {
        "attributionImageUrl": "https://d1l4c4k7e7g7hf.cloudfront.net/v1/attribution/hiya_logo.png",
        "attributionName": "Hiya",
        "attributionUrl": "https://www.hiya.com"
    },
    "callId": "8dc01369-c85f-4a1f-ad39-f2c345972213",
    "displayDetail": "San Francisco, CA",
    "displayName": "Abraham Farag",
    "profileDetails": {
        "entityType": "BUSINESS",
        "lineTypeId": "fixed_or_mobile",
        "lineTypeName": "Domestic Line",
        "location": "San Francisco, CA"
    },
    "profileIcon": "BUSINESS",
    "profileTag": "1:cps:{\"name\":{\"id\":2,\"rep\":1},\"phoneInfo\":1,\"scope\":11,\"spoofing\":{\"safe\":\"\",\"spoofed\":\"\",\"status\":\"uncertain\"}}¦iai:BUSINESS:A:2¦id:{\"attr\":\"Infobel\",\"conf\":1.0,\"line\":\"fixed_or_mobile\",\"name\":\"Abraham Farag\",\"sources\":65536}¦cid:8dc01369-c85f-4a1f-ad39-f2c345972213¦rep:2:1::1:rd_critical_numbers()#notInCache",
    "reputationLevel": "UNCERTAIN",
    "verified": false
}
```