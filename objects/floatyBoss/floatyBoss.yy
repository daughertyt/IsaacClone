{
    "id": "46241bf6-6ac5-4de9-8d38-68d58211f4ab",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "floatyBoss",
    "eventList": [
        {
            "id": "a26cc9a7-1e9d-4bbe-9941-d27d51497a33",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "46241bf6-6ac5-4de9-8d38-68d58211f4ab"
        },
        {
            "id": "eccfbec1-9c09-40ec-bd6b-560ed9549f4f",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "46241bf6-6ac5-4de9-8d38-68d58211f4ab"
        },
        {
            "id": "cf2b6f37-aad6-49c9-b9cb-c645e8977ba8",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "6fef60c2-b729-4e41-abb0-7a64d14da56d",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "46241bf6-6ac5-4de9-8d38-68d58211f4ab"
        },
        {
            "id": "a7c93be9-117f-445a-a0d9-2358e66f1b3f",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "d0df3e6e-0bf2-426a-89db-bab8ab08ac87",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "46241bf6-6ac5-4de9-8d38-68d58211f4ab"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "83c6190a-620f-420b-9e5a-87b3ab7a95ed",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "1811a20f-e987-4982-a46a-0b98724f2c19",
            "propertyId": "f88c855a-e9a1-4b9e-8e4b-7cf975eaf0c1",
            "value": "200"
        },
        {
            "id": "fedc3218-d0e5-48d1-8577-8ae33f5751c3",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "1811a20f-e987-4982-a46a-0b98724f2c19",
            "propertyId": "276bc242-e5ec-424b-9bc3-b21d39033ff6",
            "value": "1"
        }
    ],
    "parentObjectId": "6ad999f2-715a-4c47-88cf-2faf721f44f5",
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
            "id": "1f37800d-f0fe-46f2-ab35-d9f8a1a45d65",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "curSpeed",
            "varType": 0
        },
        {
            "id": "0c0783db-214d-48a3-9c43-dd0b068eccf9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "8",
            "varName": "fireRate",
            "varType": 0
        },
        {
            "id": "2a49f375-6748-41e6-8c84-aafef7e7139a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "curFireTime",
            "varType": 0
        },
        {
            "id": "1c425ac9-983a-4645-ab60-124ebcd13f99",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "150",
            "varName": "hpThreshold",
            "varType": 0
        },
        {
            "id": "c3a1c5f7-5fb7-4b4d-b1b3-c092567007bd",
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
            "id": "bedc0afb-e5f6-4542-a7b4-6dbe837239ec",
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
        }
    ],
    "solid": false,
    "spriteId": "cae2cb37-2868-4128-a3e7-0b5b83b8c263",
    "visible": true
}