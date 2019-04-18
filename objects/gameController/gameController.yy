{
    "id": "6be0b859-e1ae-4584-96a3-eaba0146a83f",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "gameController",
    "eventList": [
        {
            "id": "dd6d67c6-95eb-4648-a916-437bd4cf6271",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "6be0b859-e1ae-4584-96a3-eaba0146a83f"
        },
        {
            "id": "49fd96ab-5d33-4e45-baa0-0cef118ffe05",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "6be0b859-e1ae-4584-96a3-eaba0146a83f"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "abe3076e-5c83-40bd-b965-32accdc0effb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "mapHeight",
            "varType": 0
        },
        {
            "id": "ef170585-0ef8-48f1-a792-6f03c24d038a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "mapWidth",
            "varType": 0
        },
        {
            "id": "902e4526-2637-4c72-af74-1ab81b60c443",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "floorCount",
            "varType": 0
        },
        {
            "id": "88f8d49a-2d7d-4ab5-a948-05edfb4cb274",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "15",
            "varName": "roomCount",
            "varType": 0
        },
        {
            "id": "ff47226b-0fa5-4897-a5e0-90ae13d2d353",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "curRoomX",
            "varType": 0
        },
        {
            "id": "fea98381-efc8-4bdf-8150-d2b3b3bcec8f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "curRoomY",
            "varType": 0
        },
        {
            "id": "416e7a09-d99f-4f17-899c-eaff63c49990",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "flipBit",
            "varType": 0
        },
        {
            "id": "9518436b-1a6d-4fec-a1b1-d44886a1d7d5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "itemRoomX",
            "varType": 0
        },
        {
            "id": "d4fd7ca7-2b58-45a8-9f14-8fb3eff5c979",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "itemRoomY",
            "varType": 0
        },
        {
            "id": "b30049e2-a846-4be3-bb39-7a52bb9ca9b1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "bossRoomX",
            "varType": 0
        },
        {
            "id": "fe84a52b-4ad0-443a-9fdd-329d5af3fdce",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "bossRoomY",
            "varType": 0
        },
        {
            "id": "1abd8394-dfbc-4bd3-b8e6-fa8c263fccae",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "22",
            "varName": "roomCount2",
            "varType": 0
        },
        {
            "id": "94e16058-04f1-4683-9a42-c53f9d769f37",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "itemRoomX2",
            "varType": 0
        },
        {
            "id": "89c37ea4-d35d-4deb-b6fe-8948319549ca",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "itemRoomY2",
            "varType": 0
        },
        {
            "id": "0886cc90-49e0-4c7d-acf6-407cd08b8b8a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "bossRoomX2",
            "varType": 0
        },
        {
            "id": "cc06367d-44a4-4dfa-86f7-3ff9806d0be5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "bossRoomY2",
            "varType": 0
        },
        {
            "id": "2b4c3962-8eb7-412c-9229-d8ca327d6e41",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "curFloor",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}