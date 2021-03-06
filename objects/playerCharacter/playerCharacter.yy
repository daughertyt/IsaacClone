{
    "id": "bb1e8f19-2e32-48c0-8035-935ef43f6897",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "playerCharacter",
    "eventList": [
        {
            "id": "b01fb3a4-49e6-4956-8626-3f4bf2874163",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "bb1e8f19-2e32-48c0-8035-935ef43f6897"
        },
        {
            "id": "855520df-b731-4ea7-b77f-65951c6bfab9",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "6fef60c2-b729-4e41-abb0-7a64d14da56d",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "bb1e8f19-2e32-48c0-8035-935ef43f6897"
        },
        {
            "id": "e28ba8d1-315d-46a0-b5dc-36b2d3950aab",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "bb1e8f19-2e32-48c0-8035-935ef43f6897"
        },
        {
            "id": "3951530f-eb15-4089-93a4-6bfb2f78deb4",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "1811a20f-e987-4982-a46a-0b98724f2c19",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "bb1e8f19-2e32-48c0-8035-935ef43f6897"
        },
        {
            "id": "d2b88695-8fa3-468e-a3d0-7cadcad2ab18",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "c5ff9cc6-8d76-46e8-b068-ffd69114a9a6",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "bb1e8f19-2e32-48c0-8035-935ef43f6897"
        },
        {
            "id": "3c88bd0f-6003-45d3-86ca-82e4a610465c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 4,
            "eventtype": 7,
            "m_owner": "bb1e8f19-2e32-48c0-8035-935ef43f6897"
        },
        {
            "id": "7940d01f-ce84-4067-bdc3-16f42ba0d317",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "8f036b66-1899-40ff-a7f1-d9a8326b2cc1",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "bb1e8f19-2e32-48c0-8035-935ef43f6897"
        },
        {
            "id": "d60a257b-754d-469e-a424-c877dae407d0",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 1,
            "m_owner": "bb1e8f19-2e32-48c0-8035-935ef43f6897"
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
            "id": "bf19628a-f961-4ad9-95ff-35d80b957883",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2.5",
            "varName": "charSpeed",
            "varType": 0
        },
        {
            "id": "08f509e4-d44b-409d-962e-60746421ecd2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "fireRate",
            "varType": 0
        },
        {
            "id": "cb60a8c0-4730-48b6-8d1d-fba0ec8ec7ca",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "curFireTime",
            "varType": 0
        },
        {
            "id": "6676648e-807e-44f2-b11f-0c6e70fcc792",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "playerDamage",
            "varType": 0
        },
        {
            "id": "d4b1cfe9-afae-49f4-a56c-3b38ced1582a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "6",
            "varName": "curHealth",
            "varType": 0
        },
        {
            "id": "d873f9b4-831c-4c0a-a324-3184592841ea",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "6",
            "varName": "maxHealth",
            "varType": 0
        },
        {
            "id": "1f7e76ea-8741-46ea-b2d1-c5198165f8ad",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "oldX",
            "varType": 0
        },
        {
            "id": "4f8ab9ff-2440-45ad-b582-570f899cc9e3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "oldY",
            "varType": 0
        },
        {
            "id": "e0727ba7-a73f-4ed2-9cd1-5e0e83b3ed5f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "curSpeedX",
            "varType": 0
        },
        {
            "id": "ff351261-c0bc-4696-bc7b-796835a9749e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "curSpeedY",
            "varType": 0
        },
        {
            "id": "4faa0197-1608-47bf-a987-c2cf86fe612a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "mercyTimer",
            "varType": 0
        },
        {
            "id": "b386cea6-27dc-4f62-a5e5-1b6fecd5680a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "curMercyTimer",
            "varType": 0
        },
        {
            "id": "59c0f0d5-bca1-42d3-8e08-a397b84eca0b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "curArmor",
            "varType": 0
        },
        {
            "id": "2fc0d3b2-7424-46da-874b-bc265399aea0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "projectileSpeed",
            "varType": 0
        },
        {
            "id": "0a4d8c4d-e788-4f9c-98c3-1822ff8958c7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "violentDeath",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "df594743-a49f-45b7-a8fd-50738e5b8d0b",
    "visible": true
}