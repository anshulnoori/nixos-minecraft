{
  pkgs,
  lib,
  config,
  ...
}: let
  mods = [
    (pkgs.fetchurl {
      name = "AllTheTrims-5.0.1-fabric+1.21.jar";
      url = "https://cdn.modrinth.com/data/pnsUKrap/versions/xUFWApCx/AllTheTrims-5.0.1-fabric%2B1.21.jar";
      sha512 = "2f8d4a97b091fdad584a14b37eccc7c35fb689a7f4dd4aa95070ebe988aa2a8519366dfa1a684c076cc07088838fa57c273773351a5c1eec62c4627b4ba5d84e";
    })
    (pkgs.fetchurl {
      name = "Almanac-1.21.1-2-fabric-1.5.2.jar";
      url = "https://cdn.modrinth.com/data/Gi02250Z/versions/hUgNmeCO/Almanac-1.21.1-2-fabric-1.5.2.jar";
      sha512 = "811e3a7172b2e4da98f21d0fba2674a0d9b141c82f78717e7578acc90611dfed7a7756d3514a3484f0393cd6f8829c2d728495544fa7c14eed93577aa08d9a90";
    })
    (pkgs.fetchurl {
      name = "BOMD-1.10.2-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/du3UfiLL/versions/aSCbUUL1/BOMD-1.10.2-1.21.1.jar";
      sha512 = "64e434b0841d594857191eeed066927f3ade0cd71e39e458fffe3208096398123745de57d1e9fce24842496559cb4614e58f34f85201df093647e20dc41dff8f";
    })
    (pkgs.fetchurl {
      name = "BetterTridents-v21.1.0-1.21.1-Fabric.jar";
      url = "https://cdn.modrinth.com/data/KNUSlHiU/versions/qKA8h2Ni/BetterTridents-v21.1.0-1.21.1-Fabric.jar";
      sha512 = "b4ba107fe6c4fdc2b723e9d3c6a015d191924b35c75b27079df67c4496a1cb53f4a63ec3bad9d5f8061e70d21332c3bbd1e45110768bb7a5ed397096c85cdc5c";
    })
    (pkgs.fetchurl {
      name = "Big-Globe---Mythic-Metals-Compatibility-1.9.jar";
      url = "https://cdn.modrinth.com/data/zVynCmEG/versions/IQy4IDsI/Big%20Globe%20-%20Mythic%20Metals%20Compatibility%201.9.jar";
      sha512 = "8deddd9943fcb80ea798891ba6f81c1de7dd55474490989ec6ced40312c81e6b14c05ded32c006f8ff6fea65b7c893cd235b9279ceca7d222d99ec514066d9d6";
    })
    (pkgs.fetchurl {
      name = "Big-Globe---RareSky-1.1.jar";
      url = "https://cdn.modrinth.com/data/268CEqx1/versions/Yt5O2grv/Big%20Globe%20-%20RareSky%201.1.jar";
      sha512 = "416fb857ec8ecc16097faaf6ba64063ceaab1e33818067efd8d949f2b7bb13b9938e547d9725b370bdfd285321d6d640355b44dc82a7b1d653ac712790be5344";
    })
    (pkgs.fetchurl {
      name = "Big-Globe---Universal-Ores-Compatibility-1.1.jar";
      url = "https://cdn.modrinth.com/data/l09oKxsK/versions/SBb7zI8j/Big%20Globe%20-%20Universal%20Ores%20Compatibility%201.1.jar";
      sha512 = "e34e344532ace5af551fbebd1de6441aecbb1451277de3ef15916aa0d4a129e07cdc6a067b3d165efd4368bad2a988a2e812f7c1b684140b18ecb17f481acf3a";
    })
    (pkgs.fetchurl {
      name = "Big-Globe-5.2.0-MC1.21.1.jar";
      url = "https://cdn.modrinth.com/data/xsng1aJf/versions/FsMIVk3J/Big%20Globe-5.2.0-MC1.21.1.jar";
      sha512 = "8b44a253d4872f3f481df5e674163b3204a17e571a3cc9c697776f2f76aea625de5cb0897c005c0032bf8cb3ffa495e5938b302f9d4182f8ff412eb1f60a1b51";
    })
    (pkgs.fetchurl {
      name = "Boids-2.0.4+1.21.jar";
      url = "https://cdn.modrinth.com/data/2OckSy74/versions/7Wk4e9Zz/Boids-2.0.4%2B1.21.jar";
      sha512 = "b9a14de96875c317607583a3dff62f7dad75f1bd21fa6e4268a19e0abaffd557dce2e92df207ebbea41e7a75648ddfba52cc7875cf4b31e245a43382946c2a1e";
    })
    (pkgs.fetchurl {
      name = "BrewinAndChewin-fabric-4.4.2+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/hIu9KJTT/versions/KeuLnLf6/BrewinAndChewin-fabric-4.4.2%2B1.21.1.jar";
      sha512 = "996fa2b5210ed3bc9bebb76ce40d74f68e710e8a33969321956b8c24ce246f979fc1f2125b3325c12e16fff83c5ec179b86ff72f62a99ef76072129a3f081547";
    })
    (pkgs.fetchurl {
      name = "Chunky-Fabric-1.4.23.jar";
      url = "https://cdn.modrinth.com/data/fALzjamp/versions/RVFHfo1D/Chunky-Fabric-1.4.23.jar";
      sha512 = "02ca6af1ed31e9ebc51af20948a2afb670fe653c80aaeb990947caf6b655d6ab8eda3f1b64ef478633b67ef5d2fd0d1fe67e2107a4a522ef45fd1f183c9a6c9c";
    })
    (pkgs.fetchurl {
      name = "Clumps-fabric-1.21.1-19.0.0.1.jar";
      url = "https://cdn.modrinth.com/data/Wnxd13zP/versions/3ene3W1l/Clumps-fabric-1.21.1-19.0.0.1.jar";
      sha512 = "0aa8e3508d0a40ef814d4064c0b6cadba6326128dd878fe69f30677c889cec4ccb8f639c22bdd7083a73ae8fa76e1c115b5e4b1885904dc1244b02ab2f728e78";
    })
    (pkgs.fetchurl {
      name = "Debugify-1.21.1+1.0.jar";
      url = "https://cdn.modrinth.com/data/QwxR6Gcd/versions/dO7QNiof/Debugify-1.21.1%2B1.0.jar";
      sha512 = "079e7bd774abf7e25a916b5d4bb8f08d0176a72881497be80bb48ca89a0c1317f9c347c46911c452ea5f71fe2514d7780b5b8e339a61b07c5c4fc7b5cecdb41d";
    })
    (pkgs.fetchurl {
      name = "DiagonalFences-v21.1.1-1.21.1-Fabric.jar";
      url = "https://cdn.modrinth.com/data/IKARgflD/versions/9jL3vlSG/DiagonalFences-v21.1.1-1.21.1-Fabric.jar";
      sha512 = "567113496f3de0db5b9acd9f62634d3929b56c1a42c1b0b0a447daf8ab96f279769dd72a86be5440640c9d42507e6969dbf412c79db62ddf63af8964042aaec4";
    })
    (pkgs.fetchurl {
      name = "DiagonalWalls-v21.1.2-1.21.1-Fabric.jar";
      url = "https://cdn.modrinth.com/data/FQgc8dib/versions/CeH1sDcA/DiagonalWalls-v21.1.2-1.21.1-Fabric.jar";
      sha512 = "41ff3dad47560a096450519cdcaf079775373080700df0906f0bb5c37fbe1594a512deb70b42d3e9bb31cd68b52f11b0755da49d849344e7356b1beaab5fb214";
    })
    (pkgs.fetchurl {
      name = "DiagonalWindows-v21.1.1-1.21.1-Fabric.jar";
      url = "https://cdn.modrinth.com/data/oOi0CKes/versions/8Kb6Dcsd/DiagonalWindows-v21.1.1-1.21.1-Fabric.jar";
      sha512 = "577dbe0297510b582081db98101891d61827ffde5cec94d25b2893f77914f657337f9a43b10ade5a9ac138ae215c5297be3d7e9dc4377fc10b96a629e3f3cf90";
    })
    (pkgs.fetchurl {
      name = "DistantHorizons-2.4.5-b-1.21.1-fabric-neoforge.jar";
      url = "https://cdn.modrinth.com/data/uCdwusMi/versions/bLPLghy9/DistantHorizons-2.4.5-b-1.21.1-fabric-neoforge.jar";
      sha512 = "6ee8b04af858450eac2e0fe6c3a6cb09dfc0f9c1691fb0f76f79bbc73e08e5dca6f18257294ba647b1520d4fb2110bbbb085830e536c8f4638995c75f66fe1eb";
    })
    (pkgs.fetchurl {
      name = "ExplorersCompass-1.21.1-2.2.5-fabric.jar";
      url = "https://cdn.modrinth.com/data/RV1qfVQ8/versions/i1WCJNIW/ExplorersCompass-1.21.1-2.2.5-fabric.jar";
      sha512 = "2aee404833e040b004cbd5b63c08c1fcf2f05046b1f73a83e89a471f96ff959d400f2450d0fdfaf6e35a476062cf61ff04745ebebf342debec07da524a2f791c";
    })
    (pkgs.fetchurl {
      name = "Explorify-v1.6.4-f15-88.mod.jar";
      url = "https://cdn.modrinth.com/data/HSfsxuTo/versions/9vHj342y/Explorify%20v1.6.4%20f15-88.mod.jar";
      sha512 = "601ee61e3619ab6a929ff06e4e3db6cc480d97a19e5716ac40a2a325d2d609b857a1ac17f2c0ed2b242e662b5486f4e0f59584fbd47acd481b318c45c244254b";
    })
    (pkgs.fetchurl {
      name = "FarmersDelight-1.21.1-3.2.5+refabricated.jar";
      url = "https://cdn.modrinth.com/data/7vxePowz/versions/Sddkv0PO/FarmersDelight-1.21.1-3.2.5%2Brefabricated.jar";
      sha512 = "0c9974c40c18ae33c1b088d0ffdc43c6ade9668a40b496cf3eca8b91147ece47e4d1e9d78d8dfe966955e1634a3119e9f4476012ab90fe57a2d335f006c0f773";
    })
    (pkgs.fetchurl {
      name = "ForgeConfigAPIPort-v21.1.6-1.21.1-Fabric.jar";
      url = "https://cdn.modrinth.com/data/ohNO6lps/versions/N5qzq0XV/ForgeConfigAPIPort-v21.1.6-1.21.1-Fabric.jar";
      sha512 = "cd9296e78ba969f7aed6e3692aa25eb61c102c79c55ca5f9592576bacaa26feab5d5d48fa30cf07ca852e0f1d42afc4d4558feff69a67b225183d2bc15898cf9";
    })
    (pkgs.fetchurl {
      name = "GlitchCore-fabric-1.21.1-2.1.0.0.jar";
      url = "https://cdn.modrinth.com/data/s3dmwKy5/versions/lbSHOhee/GlitchCore-fabric-1.21.1-2.1.0.0.jar";
      sha512 = "ccd5c3812faf1161f61a894deec609eb6c3de36debe63dc00b75698a9b71dfb30bc00e0a34c3e030b3adb4c224e829783f66ad66768c28dedbefc024ddbd6041";
    })
    (pkgs.fetchurl {
      name = "Jade-1.21.1-Fabric-15.10.5.jar";
      url = "https://cdn.modrinth.com/data/nvQzSEkH/versions/5Sbkzz4O/Jade-1.21.1-Fabric-15.10.5.jar";
      sha512 = "14b8ff98fc964d31a650e953fca7b4dcef07b976195a8061b8258469a227bd990205cf3682ccf6ad0e5243258d4be46def7deff6fed0434c136d189cdccf184a";
    })
    (pkgs.fetchurl {
      name = "JadeAddons-1.21.1-Fabric-6.0.3.jar";
      url = "https://cdn.modrinth.com/data/fThnVRli/versions/xtWiiv5X/JadeAddons-1.21.1-Fabric-6.0.3.jar";
      sha512 = "93aeb1e4f329e725740edccd2638902fe932ef973dd64dbca60d981756d04d4e8affd93f015caa264e344d13d09029ddcb277df9875b6dc8dc6171330441593c";
    })
    (pkgs.fetchurl {
      name = "Kiwi-1.21.1-Fabric-15.8.2.jar";
      url = "https://cdn.modrinth.com/data/ufdDoWPd/versions/qCiN1Uwp/Kiwi-1.21.1-Fabric-15.8.2.jar";
      sha512 = "a6ad12f285ab4370fef41fd558f29a797ddea15f11a2abf032a17f9f573778bfa0fa66edaa8e36ce4c7fa4ccb3d0a5598801a4cdebe9bccad7d39f0874300760";
    })
    (pkgs.fetchurl {
      name = "Ksyxis-1.3.4.jar";
      url = "https://cdn.modrinth.com/data/2ecVyZ49/versions/vCQj9Ui7/Ksyxis-1.3.4.jar";
      sha512 = "f085627a6dd242bec916fc5dbec5694733f3a44e7826f51ba64887ae50860b5b6e9f89ceac4ca9beefee356c428211260ce4a40bee6bb136bfe636c42753c972";
    })
    (pkgs.fetchurl {
      name = "MapDistanceFix-1.0.14+mc1.21-1.21.11.jar";
      url = "https://cdn.modrinth.com/data/51BNNAng/versions/tpkUNnlX/MapDistanceFix-1.0.14%2Bmc1.21-1.21.11.jar";
      sha512 = "ea935125ebcc599c64c5d5f03911d587222d3b1b46649f896d16ce5fda3e26a0643b277e74fbe434d73950be2518ed18d3360a0901b3c9e70b13141d5028ff10";
    })
    (pkgs.fetchurl {
      name = "MoogsEndStructures-1.21-2.0.1.jar";
      url = "https://cdn.modrinth.com/data/r4PuRGfV/versions/66xhbndk/MoogsEndStructures-1.21-2.0.1.jar";
      sha512 = "bc6ebffe094c53dc4cdb1a0f7938ec679bdd3da4f2c47867ccc9195270fe8499afee052616e22d28493da13a53a71b6f1c34c3f12a6a7a02806a026c3b3b6e2f";
    })
    (pkgs.fetchurl {
      name = "MoogsNetherStructures-1.21-2.0.31.jar";
      url = "https://cdn.modrinth.com/data/nGUXvjTa/versions/zruwScWL/MoogsNetherStructures-1.21-2.0.31.jar";
      sha512 = "052e0df6a0ec18cb35636bbfff88502537ed05e9ff17315589300244e49fc26dfc689b328231a2153279ed35b76e55d9e02443d8ce6af129e09df2e0c8edb9f5";
    })
    (pkgs.fetchurl {
      name = "MoogsSoaringStructures-1.21-2.0.2.jar";
      url = "https://cdn.modrinth.com/data/RJCLIx7k/versions/5oeZ3VOH/MoogsSoaringStructures-1.21-2.0.2.jar";
      sha512 = "452618a01a81c9101d8f720f51f67f667ca8ff7c8a5e629c05ab0c0f8792e3cf413a914d07db452904c8d00022e31a9c522ec8935bba1f2a3b7ea03832ef0bb1";
    })
    (pkgs.fetchurl {
      name = "MoogsVoyagerStructures-1.21-5.0.5.jar";
      url = "https://cdn.modrinth.com/data/OQAgZMH1/versions/aHamoWna/MoogsVoyagerStructures-1.21-5.0.5.jar";
      sha512 = "bc6f2a0590816e20a9df722181221e4e7769e64f9fe0efdb88666bae3443354ad59df95a0562f5a854cdc3d5d9a9c12448b605cc3b7fee51e61a85b397fd8f05";
    })
    (pkgs.fetchurl {
      name = "MultiplayerServerPause-1.21-Fabric-1.3.3.jar";
      url = "https://cdn.modrinth.com/data/RPXnAvtA/versions/6ZaJGDmk/MultiplayerServerPause-1.21-Fabric-1.3.3.jar";
      sha512 = "78c04f3f80f8c4431a935f7365534283d966b67307ebc8d2c7ae066c9aefaeade582882abaee297c7ccf5e0ff6dc16bfbe5d4b8dcf7fff2d0818c5b15ed941e4";
    })
    (pkgs.fetchurl {
      name = "MyNethersDelight-1.21.1-2.0.3+1.7.8.refabricated.jar";
      url = "https://cdn.modrinth.com/data/uIOfYdnw/versions/sqEAS0LT/MyNethersDelight-1.21.1-2.0.3%2B1.7.8.refabricated.jar";
      sha512 = "3dc9cc9593b99195c20b52eeb5c298ee2d200b1d624320f3a7d1c32ff345b0d43589a438fbcf4b13765a352216161e45ad00ea09a8916e402a36f53d3eaa24ec";
    })
    (pkgs.fetchurl {
      name = "NE-1.21.1-1.10.0.jar";
      url = "https://cdn.modrinth.com/data/2nz0kJ1N/versions/HFdNcDOl/NE-1.21.1-1.10.0.jar";
      sha512 = "aee671ce6c1bd0e637283fbe819c8f45acd8ade1f8cfe36a5a63cbaf7d4e919f040d4578bd6a7023d28b945c9ac539d88f11201412c3ee5f4c0aa8d8626035df";
    })
    (pkgs.fetchurl {
      name = "NaturesCompass-1.21.1-2.2.7-fabric.jar";
      url = "https://cdn.modrinth.com/data/fPetb5Kh/versions/9W2MUsnU/NaturesCompass-1.21.1-2.2.7-fabric.jar";
      sha512 = "95e686f2b4d13c8d2e00ce24ef32075900aaacf38b2b6af676e92ef8936ea39b95146fea05321029a73a3322ba685361afbe7bbe6667143bf27fead0c5d54f8c";
    })
    (pkgs.fetchurl {
      name = "NoChatReports-FABRIC-1.21.1-v2.9.1.jar";
      url = "https://cdn.modrinth.com/data/qQyHxfxd/versions/D8K0KJXM/NoChatReports-FABRIC-1.21.1-v2.9.1.jar";
      sha512 = "23bb4a8a6a3f7071281cf97560e12f37e1f5f638a156e3fcb92a50ff0091f1fcfa3e090e7745e4b1175e7c2c784e38d73536a1044db1bf225a182fab758a5a29";
    })
    (pkgs.fetchurl {
      name = "Pehkui-3.8.3+1.14.4-1.21.jar";
      url = "https://cdn.modrinth.com/data/t5W7Jfwy/versions/6fzxx6SC/Pehkui-3.8.3%2B1.14.4-1.21.jar";
      sha512 = "5eb721d7e0e6889857a81f340451c9a98f8dcddca67dd919f9e69691cadf44b5f001e3c71db69f6b98d5d8709db739ad7b91dc71bd35880a0e6241b723822f1f";
    })
    (pkgs.fetchurl {
      name = "Platform-fabric-1.21.1-1.2.11.5.jar";
      url = "https://cdn.modrinth.com/data/i6fiqm5y/versions/gV5SV031/Platform-fabric-1.21.1-1.2.11.5.jar";
      sha512 = "d08fdbef9148e38f306c951d03c8382308bccca65c4d269ed2901f9e838b8e62bdbdcc8f86e6f02429a52184163653b4914f47eaaf8e90a72370080201a55700";
    })
    (pkgs.fetchurl {
      name = "PuzzlesLib-v21.1.39-1.21.1-Fabric.jar";
      url = "https://cdn.modrinth.com/data/QAGBst4M/versions/L007zH3l/PuzzlesLib-v21.1.39-1.21.1-Fabric.jar";
      sha512 = "2c5bc1f0bc1b2d6edfc66660d33495a76e4268f75ec02c6fe81f3d7f633a8873695f841c0fdb4e828a5b9d0da428d38d37d084da8ab149909f9a36b160492eb1";
    })
    (pkgs.fetchurl {
      name = "Revamped-Shipwrecks-1.1.0.jar";
      url = "https://cdn.modrinth.com/data/ZnZ8uqXN/versions/olo0Q6nb/Revamped%20Shipwrecks%201.1.0.jar";
      sha512 = "ba3b2792359b37bc1918144969211bfa08f7a66b85357640d872985e78a79c45fcc4a2a1bf9093f27f6dcf595fb25bcf99241a7500c95ca1307256c70a946b21";
    })
    (pkgs.fetchurl {
      name = "RuntimeTrims-1.0.6-fabric+1.21.jar";
      url = "https://cdn.modrinth.com/data/eRg6mpBy/versions/POwV8W5M/RuntimeTrims-1.0.6-fabric%2B1.21.jar";
      sha512 = "d2c90035da5984632e3f540c544e642e57b014691885242930ed62534e11e638c4edfbdfc68f1be1c13fbe0e942d7f1e8e11470b66809c0a0e3de23183e8db52";
    })
    (pkgs.fetchurl {
      name = "ScalableLux-0.1.0.1+fabric.d0d58ab-all.jar";
      url = "https://cdn.modrinth.com/data/Ps1zyz6x/versions/Yx1tgJMI/ScalableLux-0.1.0.1%2Bfabric.d0d58ab-all.jar";
      sha512 = "bbfe02184c3bf3b0da28175574a5a236ce7c9acc00069addd69770857f2ac572924893f3eb033bbbc965afa9779c7a7f8fc54168f9e90481a40de92f6ee3645f";
    })
    (pkgs.fetchurl {
      name = "SereneSeasons-fabric-1.21.1-10.1.0.1.jar";
      url = "https://cdn.modrinth.com/data/e0bNACJD/versions/UqA7miTT/SereneSeasons-fabric-1.21.1-10.1.0.1.jar";
      sha512 = "b60eaacd452ea1a99198a8562f5bc4a10c42ae18853cdccb79fd4d33da784cbad7fa354a431fe33e157b82523ed4bcdd14e1c4b03f9f49ccac2e794b4223e73c";
    })
    (pkgs.fetchurl {
      name = "SnowRealMagic-1.21.1-Fabric-12.2.0.jar";
      url = "https://cdn.modrinth.com/data/iJNje1E8/versions/onxIWOna/SnowRealMagic-1.21.1-Fabric-12.2.0.jar";
      sha512 = "3180676447aafc245f559b338bd90e316168484a301edc67583ef7aed83c4c4918cf81f873fc7a7c3cdb7ccfd916cbcfcc69fce4b6644e055b7cbe237b52aea4";
    })
    (pkgs.fetchurl {
      name = "SnowUnderTrees-2.7.4+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/XVnUIUAQ/versions/xIjtPWZo/SnowUnderTrees-2.7.4%2B1.21.1.jar";
      sha512 = "f701cd10e1f41e40fbe48245c82c242b80b76e8009d4ae0cd9cb25e99d9860f23829fcccbd94eb0978bc0bf20ab53c640834dcafe60a901da8c892d87c5d2674";
    })
    (pkgs.fetchurl {
      name = "StackDeobfuscatorFabric-1.4.3+08e71cc.jar";
      url = "https://cdn.modrinth.com/data/NusMqsjF/versions/pyiVLk9R/StackDeobfuscatorFabric-1.4.3%2B08e71cc.jar";
      sha512 = "ef851d54a60e223e90cfd21da91effcdc70175dd32b194366ca3ba29646c9ebdbfb60a1eaa88070c4e9f83bd654da1344e67226dfdf5c68140db4ef693361353";
    })
    (pkgs.fetchurl {
      name = "TaxFreeLevels-1.4.7-fabric-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/jCBrrLTs/versions/PJV01Pls/TaxFreeLevels-1.4.7-fabric-1.21.1.jar";
      sha512 = "82bc601bd8151aea65a95deb0a56abdc9edbe7b41826143046894ebba48693ae21e2451ba4c1fd7398880e8fe45d1134442a304630874f99adb26449167204bf";
    })
    (pkgs.fetchurl {
      name = "Unwrecked-Ships-Plus-2.0.5.jar";
      url = "https://cdn.modrinth.com/data/ae8EZLiC/versions/FrJNgD2B/Unwrecked%20Ships%20Plus%202.0.5.jar";
      sha512 = "2b1210604f0426048ee7668189a84fa310e0ed4daffa5ac7de4c6315096b96054e10e6ed351fc038ed3fe29cebe4c6f74db5ed6954e907f6731197de4f4a00a3";
    })
    (pkgs.fetchurl {
      name = "VanillaBackport-fabric-1.21.1-1.1.5.4.2.jar";
      url = "https://cdn.modrinth.com/data/6xwxDTgf/versions/dQd9n3aB/VanillaBackport-fabric-1.21.1-1.1.5.4.2.jar";
      sha512 = "9623f846019e236583f4791cf8a9062089d62c3b67b89f478c918aaf09dce735ef2857021b9c1500cf6fa1557b6fea760dfef834056ed77643d0fec26601c21f";
    })
    (pkgs.fetchurl {
      name = "Vertigo-1.1.7-MC1.21.1.jar";
      url = "https://cdn.modrinth.com/data/4LzgJp1j/versions/qCWmmMJP/Vertigo-1.1.7-MC1.21.1.jar";
      sha512 = "79096e73337cab66f4c0cb82d3534e7f0f38d97e1163d6f5d767b8a3d328c5aa655305630a413337db8bfc730503d2f4643b6a4bcb45c228e46fda92d924c310";
    })
    (pkgs.fetchurl {
      name = "accessories-fabric-1.1.0-beta.53+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/jtmvUHXj/versions/Xlt4eWBe/accessories-fabric-1.1.0-beta.53%2B1.21.1.jar";
      sha512 = "0d8baf9e5c3828edcc22fc6e10774e9d7fb94616dae137be3eeb30bea8292ec0148dd2d41ae7753c82714f1d9f163189d07d0f78321f95943c0c048288130e71";
    })
    (pkgs.fetchurl {
      name = "accessories_compat_layer-fabric-0.1.12+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/ySnjMzLg/versions/pWxabbaf/accessories_compat_layer-fabric-0.1.12%2B1.21.1.jar";
      sha512 = "aee7f01996f4675df73018691fabc2d155a5c5865129b38479beefb8648b2a55598b07488f3546892ca8e215aaf436892457aedade81b185a3438c7fb9bedc9a";
    })
    (pkgs.fetchurl {
      name = "accessorify-2.4.0-beta.5+1.21.1-fabric.jar";
      url = "https://cdn.modrinth.com/data/CVRzrXGP/versions/UlfvVcjz/accessorify-2.4.0-beta.5%2B1.21.1-fabric.jar";
      sha512 = "183d5845b7b96bc217f4c280c783e146eb5cbecc713cfef4800a7a3eb03ff8f437ec80c6fe968fb4b89e4aa2cc8afbb409bed3b9cbbd0a45d914b84e35668b2e";
    })
    (pkgs.fetchurl {
      name = "alloy-forgery-2.4.1+1.21.jar";
      url = "https://cdn.modrinth.com/data/jhl28YkY/versions/czJc7eUX/alloy-forgery-2.4.1%2B1.21.jar";
      sha512 = "ded73374818ab224946d60cbbf366374cb5b82d9c6bcd6ae7855dc433863c94ef279d558f7c48dce47c2b2a4046f135afb8c80923b799083b317cb5047b64726";
    })
    (pkgs.fetchurl {
      name = "almostunified-fabric-1.21.1-1.3.0.jar";
      url = "https://cdn.modrinth.com/data/sdaSaQEz/versions/4a1ChuOz/almostunified-fabric-1.21.1-1.3.0.jar";
      sha512 = "53e0ed7b98cebdaa1fbef7c10139cb0dfe2f9387b7e7036a1c6ae16a975b6a5e0e51abe7e3c7914687e1948c25500fbbf185873f369068373b67aceea1eeb982";
    })
    (pkgs.fetchurl {
      name = "antiquetradingship-1.0.0-Fabric-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/luvBs7J4/versions/QZrtJsCk/antiquetradingship-1.0.0-Fabric%201.21.1.jar";
      sha512 = "063a3ed2949e12304f618e0be9872967a2eaabba7dd4fb057eace90574d0a142929c8ff5ae4583a884c9ab770c90578943212f2abda70774ebcff119e78261eb";
    })
    (pkgs.fetchurl {
      name = "anvilrestoration-1.21.1-2.4.jar";
      url = "https://cdn.modrinth.com/data/bd8nwTGy/versions/s2Ff8GFL/anvilrestoration-1.21.1-2.4.jar";
      sha512 = "2ca18c9fa3ff32ce5481bce87dec5c213fba81865eee34b7771f41dde877c5a916044fc4d4e013343feef394bb2391bbac30f0d4c9b929196223761c58598f1e";
    })
    (pkgs.fetchurl {
      name = "appleskin-fabric-mc1.21-3.0.6.jar";
      url = "https://cdn.modrinth.com/data/EsAfCjCV/versions/b5ZiCjAr/appleskin-fabric-mc1.21-3.0.6.jar";
      sha512 = "accbb36b863bdeaaeb001f7552534f3bdf0f27556795cf8e813f9b32e7732450ec5133da5e0ec9b92dc22588c48ffb61577c375f596dc351f15c15ce6a6f4228";
    })
    (pkgs.fetchurl {
      name = "architectury-13.0.8-fabric.jar";
      url = "https://cdn.modrinth.com/data/lhGA9TYQ/versions/Wto0RchG/architectury-13.0.8-fabric.jar";
      sha512 = "7a24a0481732c5504b07347d64a2843c10c29e748018af8e5f5844e5ea2f4517433886231025d823f90eb0b0271d1fa9849c27e7b0c81476c73753f79f19302a";
    })
    (pkgs.fetchurl {
      name = "attributefix-fabric-1.21.1-21.1.3.jar";
      url = "https://cdn.modrinth.com/data/lOOpEntO/versions/XwbErf6s/attributefix-fabric-1.21.1-21.1.3.jar";
      sha512 = "0ae9f64b9af206a506722cc11a900f75e8bb137cb9598c0f572ed1c3b993948fc47ebfec54cf0d66043901322c4a0caba220d9e953e0a6b68c244774d65088e5";
    })
    (pkgs.fetchurl {
      name = "bettertrims-4.0.4+1.21.1-fabric.jar";
      url = "https://cdn.modrinth.com/data/98ytUvlc/versions/mScSjkvX/bettertrims-4.0.4%2B1.21.1-fabric.jar";
      sha512 = "313974b543457045a30b3f29f59aecb6607aa8347c67945039c2e646a0c4790af5db63a8e131f6bcaafaa58f001adf247c0eb4e592b619466fa7e45620d6fe57";
    })
    (pkgs.fetchurl {
      name = "big-globe-antique-trading-ship-1.0.jar";
      url = "https://cdn.modrinth.com/data/xxKHfhgl/versions/1Ix3keQE/big-globe-antique-trading-ship-1.0.jar";
      sha512 = "c3a9d9857a4a7fee11ae84f6104d43e9608a7baec5ec17ca4353775ad3aee8f98ed25b11ce593078783cee85ea04ef8ddfa527dd7151e7d6e7ec4faa726afb22";
    })
    (pkgs.fetchurl {
      name = "big-globe-biome-tags-1.0.0.jar";
      url = "https://cdn.modrinth.com/data/ANkGyA2l/versions/eCLoNMHp/big-globe-biome-tags-1.0.0.jar";
      sha512 = "1e7fa7cf002037853f36d490c3ab3942cb8c5d47bcd6b219cecb31aaa34d5b43dc99890606bf5b1bd5046d148e95ce983dd77bb78604d952f05c02a36814ded8";
    })
    (pkgs.fetchurl {
      name = "big-globe-explorify-compatibility-1.0.jar";
      url = "https://cdn.modrinth.com/data/SiaQhWsG/versions/Pjp7ChCT/big-globe-explorify-compatibility-1.0.jar";
      sha512 = "890f0c1a2231c7eb951f93f27ef5d03d47a6578c5f30423264c7c5055084077b3b2310e63ac00280329a00101d730db1a18294680ebe238f28539cd36d91eb0a";
    })
    (pkgs.fetchurl {
      name = "big-globe-it-takes-a-pillage-compatibility-1.0.jar";
      url = "https://cdn.modrinth.com/data/9Wkvc9ge/versions/FSPAgg8m/big-globe-it-takes-a-pillage-compatibility-1.0.jar";
      sha512 = "b2e2214b3f9b41d23ec5b39e97712a98931c5a4d982d69bbb59d77c37f77f766ae28f48054da01623f78497a7bde62479dd4d5db3a5727eab3da73215dc9e963";
    })
    (pkgs.fetchurl {
      name = "big-globe-remove-abandoned-city-1.0.jar";
      url = "https://cdn.modrinth.com/data/HadW6te3/versions/wA1hu8Cd/big-globe-remove-abandoned-city-1.0.jar";
      sha512 = "fd49bce95bbde79aaf6e72d77994aff8a6536ce42092fe21fade5cadf4d812a6b7a11f6ed58623337018cb47c9e3183c21807dd7c32649bd47d8f5cae32c722a";
    })
    (pkgs.fetchurl {
      name = "big-globe-remove-obelisk-1.0.jar";
      url = "https://cdn.modrinth.com/data/meg0js6s/versions/f3804iqD/big-globe-remove-obelisk-1.0.jar";
      sha512 = "b14ed4221627a7c3a3cda478409555ae7c689a69d4afc66f04651230ad745047bc8c04fc76844a60d148a124b034a8004c2f1198a85252971e9f5cc6bab738a4";
    })
    (pkgs.fetchurl {
      name = "big-globe-towns-and-towers-compatibility-1.0.jar";
      url = "https://cdn.modrinth.com/data/pfBmkDr3/versions/y7jTwV5a/big-globe-towns-and-towers-compatibility-1.0.jar";
      sha512 = "4d8295e54252c08e81be271890f5c50514410fc6e4a387ece087f8001a2c1b77405a4967176ae45bd50a18c373599f7a8407e6d93af684c477319d2cd7025580";
    })
    (pkgs.fetchurl {
      name = "big-globe-unwrecked-ships-compatibility-1.0.jar";
      url = "https://cdn.modrinth.com/data/kQSkOkAk/versions/MNB7PyXW/big-globe-unwrecked-ships-compatibility-1.0.jar";
      sha512 = "c52952ec6c43d17a2d84aed0e769c38e6ebde1e65a94ad49fb442cbe37bc669f77693a6f3cde6569ddd75a20b21acef67b799ce8ad6727ef588a67bf9fcd8bae";
    })
    (pkgs.fetchurl {
      name = "blast-back-1.1.jar";
      url = "https://cdn.modrinth.com/data/iecmIh2A/versions/4lyLQF7t/blast-back-1.1.jar";
      sha512 = "1a62dddcb2a4edd4613b1bc58ef8480bb1f25f9c2276dc865f542758b597968d62ce018802d88d62d52b78993f6ac6fd40b7ea81cd528b46a56e9c2201c3ea89";
    })
    (pkgs.fetchurl {
      name = "bookshelf-fabric-1.21.1-21.1.81.jar";
      url = "https://cdn.modrinth.com/data/uy4Cnpcm/versions/kpkjWpa5/bookshelf-fabric-1.21.1-21.1.81.jar";
      sha512 = "bde761951e48ce293dc99290a1e0139dcd10f96c01a0f1ec348e87c416b76f328490e226b5e0eb4fb61224a6f77718bf1c929868f07834f3bdecce8718074f97";
    })
    (pkgs.fetchurl {
      name = "c2me-fabric-mc1.21.1-0.3.0+alpha.0.362.jar";
      url = "https://cdn.modrinth.com/data/VSNURh3q/versions/DSqOVCaF/c2me-fabric-mc1.21.1-0.3.0%2Balpha.0.362.jar";
      sha512 = "8653a751eb2ad1ad70da38017ccad0ee2bda5448ffe405d28049f09a61936765303f63ba4fcff798f32bb1e6b4645e892c275515b69c98c1730e24caab0ba7e0";
    })
    (pkgs.fetchurl {
      name = "calcmod-1.3.2+fabric.1.21.jar";
      url = "https://cdn.modrinth.com/data/XoHTb2Ap/versions/LE8aEZ5E/calcmod-1.3.2%2Bfabric.1.21.jar";
      sha512 = "cd6e2859661f2020a52d1f61596e1db8156af69cf8879cf297237cb80ea5a955c1cb9eb6ee4fd59c3538411779d121fab0333b9e915f863e9c605a89b6bb74fb";
    })
    (pkgs.fetchurl {
      name = "caravans-fabric-1.21.1-2.1.1.jar";
      url = "https://cdn.modrinth.com/data/8jJHxtdz/versions/xBUai8Zr/caravans-fabric-1.21.1-2.1.1.jar";
      sha512 = "890057ac0da1ad1fa32264fd13b6912fdcc9ec807a96914e37fb6b4271230923a3bf27cfb6661e9a605a5c9dcbe15716e524fa2372e484fecfec35a9276f525d";
    })
    (pkgs.fetchurl {
      name = "cardinal-components-api-6.1.3.jar";
      url = "https://cdn.modrinth.com/data/K01OU20C/versions/nLsCe2VD/cardinal-components-api-6.1.3.jar";
      sha512 = "db52fc8c4f14dda723b69eec5a52a693fcb1db72e97114cb530ac8a306d95c13a4234ea54bc6e632134038cb05ba551b5240b9187562fb775a4c7bacb681eff1";
    })
    (pkgs.fetchurl {
      name = "chunky-offline-v1.1.0.jar";
      url = "https://cdn.modrinth.com/data/VfHc5JEX/versions/56xL4i2r/chunky-offline-v1.1.0.jar";
      sha512 = "12506295bba4909b8882b8e4b8802cadb648877be1ba8dfe3f7d8f9a7dbe5cbc6ff712be7d5a3f3b54cdc4190df1be005ae8bb53ae202b40173064810ffb536e";
    })
    (pkgs.fetchurl {
      name = "cloth-config-15.0.140-fabric.jar";
      url = "https://cdn.modrinth.com/data/9s6osm5g/versions/HpMb5wGb/cloth-config-15.0.140-fabric.jar";
      sha512 = "1b3f5db4fc1d481704053db9837d530919374bf7518d7cede607360f0348c04fc6347a3a72ccfef355559e1f4aef0b650cd58e5ee79c73b12ff0fc2746797a00";
    })
    (pkgs.fetchurl {
      name = "collective-1.21.1-8.13.jar";
      url = "https://cdn.modrinth.com/data/e0M1UDsY/versions/VTg6femX/collective-1.21.1-8.13.jar";
      sha512 = "20ade6d666440659d38ec43202624993f47681a844c7f9e3e66a462e9f88f5d98bdd9a0a26278b1ed94bd4836b3c9cdbcfef73ad8515555f239e84bfea45d938";
    })
    (pkgs.fetchurl {
      name = "compatdelight-1.0.0.1.jar";
      url = "https://cdn.modrinth.com/data/iNJJU8Ib/versions/xLaL5q5D/compatdelight-1.0.0.1.jar";
      sha512 = "0bfe64496bcbf82554ca437d02fc724297b1f23a165fd963d370fdd10e22186981258e217b78eeeb6784b87253fb23376a5ed824b04d17f9991b63cee88c4d79";
    })
    (pkgs.fetchurl {
      name = "configurable-3.3.2+1.21.1-fabric.jar";
      url = "https://cdn.modrinth.com/data/lGffrQ3O/versions/PT4XibkI/configurable-3.3.2%2B1.21.1-fabric.jar";
      sha512 = "0d63b0015579a1d0a2f1f918ed82d6510c302c58835df063fcab40168f12f40e3960dca34d59389cd60fb7e655736f126d23c885184894aa38855690fcde9f25";
    })
    (pkgs.fetchurl {
      name = "cristellib-fabric-1.21.1-3.0.3.jar";
      url = "https://cdn.modrinth.com/data/cl223EMc/versions/h5nfApnW/cristellib-fabric-1.21.1-3.0.3.jar";
      sha512 = "defe699f6300bef3bef95c6676e625111a09b891d7595320d8b2dba39dfd8e117d0fc294642885cadbcdfb71c8aaf4a0038e5d09ac78f9218d7db8bdc2569061";
    })
    (pkgs.fetchurl {
      name = "cryingportals-1.21.1-2.8.jar";
      url = "https://cdn.modrinth.com/data/3RkVNglH/versions/Dia7FQQi/cryingportals-1.21.1-2.8.jar";
      sha512 = "e9fc18a8c2f2199cb89cc5d3e79f7382c1a5825b5bf37939904c66634fdc5e2033bd966d9a5c1bd77df5f2eaefd082f5d483017243f1e41f706f83216715a08a";
    })
    (pkgs.fetchurl {
      name = "deeperdarker-fabric-1.21-1.3.3-plus-b.jar";
      url = "https://cdn.modrinth.com/data/fnAffV0n/versions/3MnQb3Tb/deeperdarker-fabric-1.21-1.3.3-plus-b.jar";
      sha512 = "e549ebb6a408ac852267a1175c00a01d722c6290754cac030221e2390ed8805caf24d29ede5f87e868ad741141a43dfc5e6be9e68dc7390b9669213fee032175";
    })
    (pkgs.fetchurl {
      name = "dismountentity-1.21.1-3.6.jar";
      url = "https://cdn.modrinth.com/data/H7N61Wcl/versions/PVx8sPK6/dismountentity-1.21.1-3.6.jar";
      sha512 = "390c03a2ce2644abfa95645b9395cd472ae32ead35f206ce763b32ab21691f9fb090ab8c3edc4a522ebbdbb450b27b8987e658ac8b76d464f8a687529467cc98";
    })
    (pkgs.fetchurl {
      name = "distractingtrims-fabric-1.21.1-21.1.1.jar";
      url = "https://cdn.modrinth.com/data/xQU6E1ee/versions/Ec8SZtTM/distractingtrims-fabric-1.21.1-21.1.1.jar";
      sha512 = "8acde770e532564196bc14dfec15f6e082d729bef7090ded0825aab726e93e81da5097ab8fe84f692ec352f7c2b26300c1c59470c72d26e626fadb418e9e4973";
    })
    (pkgs.fetchurl {
      name = "dungeons-and-taverns-v4.4.4.jar";
      url = "https://cdn.modrinth.com/data/tpehi7ww/versions/EUlNXs9V/dungeons-and-taverns-v4.4.4.jar";
      sha512 = "ceeaaa41bafeb23d54abb498a4291b1905a53b6b3d17d14d892e9fa0d81cd56275c5edfdc999910520547939a17c1884d4553543d5aaafcf2295fb818cadba01";
    })
    (pkgs.fetchurl {
      name = "eldritch-mobs-1.16.4.jar";
      url = "https://cdn.modrinth.com/data/emXFPmJd/versions/UGRkjXxG/eldritch-mobs-1.16.4.jar";
      sha512 = "10506882611fa7540552ca5cd447754ebe6c3c5eeadcfc9ca1de2f5ee3eeaea8e9cd4c6883a4345f3fadb9a981a1a99956b37b3cc7cd07990e875a47ab2230c3";
    })
    (pkgs.fetchurl {
      name = "elytratrims-fabric-3.9.3+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/XpzGz7KD/versions/KOEvdSw7/elytratrims-fabric-3.9.3%2B1.21.1.jar";
      sha512 = "012dacd1dace68e522d903e8e3609ae196d08c798ae32d9a04835588b63f660f56ced79f98622a7ffa223b148e9f7f2e683202b24af60a6f464b1ea4011a52ad";
    })
    (pkgs.fetchurl {
      name = "emi-1.1.22+1.21.1+fabric.jar";
      url = "https://cdn.modrinth.com/data/fRiHVvU7/versions/mYQ3bJs5/emi-1.1.22%2B1.21.1%2Bfabric.jar";
      sha512 = "8af56f91ccb203b9c4e055d81065c0ea48e025ec6d9a0848901868e262afb6ddb52f0f34de5b4ece42f25fc5ed04f96ccf7aee4f2cc12a2906985ba7c31fd30c";
    })
    (pkgs.fetchurl {
      name = "emi_loot-0.7.9+1.21+fabric.jar";
      url = "https://cdn.modrinth.com/data/qbbO7Jns/versions/6uDAJNif/emi_loot-0.7.9%2B1.21%2Bfabric.jar";
      sha512 = "e274a094e5469bd70134135a4a3319e24d7d0b33631cb8a6b013f9ee3c01b7ab23298fc7b698b2c8a1b474c725230ec8e28e984f51829f45083cf25210e52a93";
    })
    (pkgs.fetchurl {
      name = "emi_ores-1.2+1.21.1+fabric.jar";
      url = "https://cdn.modrinth.com/data/sG4TqDb8/versions/OwDhxsDZ/emi_ores-1.2%2B1.21.1%2Bfabric.jar";
      sha512 = "3ab30a424dc2f5c3bcb71d86ebffaa82767dd51710513bed2caa35574dd922a1f663357caeb5f4ce8e4392ad9518cafe79d281744b6c010612aef96f42eec094";
    })
    (pkgs.fetchurl {
      name = "enchanter_fix-1.8+mc1.20-1.21.11.jar";
      url = "https://cdn.modrinth.com/data/vNE5j3Te/versions/q98qlPBf/enchanter_fix-1.8%2Bmc1.20-1.21.11.jar";
      sha512 = "dda91e85a0256dd1d12e4e304da3b818cbb791c6011bcabf4eb3e2c447ab28d099f29ab3a4a0866515d39d5138f10c915c1a2a53b89baa3b9b93847d138d61c8";
    })
    (pkgs.fetchurl {
      name = "ends_delight-2.5.2+refabricated.1.21.1.jar";
      url = "https://cdn.modrinth.com/data/yHN0njMr/versions/KOKpRenr/ends_delight-2.5.2%2Brefabricated.1.21.1.jar";
      sha512 = "8a5f8cc53e59a089705b79dd1146356560891d541a6d7817408a222f1b190c899b6c0fd019470c20b96941600395c4141f1e467924700f6032504851d8f24636";
    })
    (pkgs.fetchurl {
      name = "everycomp-1.21-2.11.29-fabric.jar";
      url = "https://cdn.modrinth.com/data/eiktJyw1/versions/56HEHmGg/everycomp-1.21-2.11.29-fabric.jar";
      sha512 = "8d57a857080046239da8695ed84a12ca4b7a18a1b1e5ef125ab79f5c3cf10a5e5acc4d08b80ec90e0f2be301430e1ae3d6c856c819eca35d4f53fa7fc4f62ea6";
    })
    (pkgs.fetchurl {
      name = "fabric-api-0.116.9+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/P7dR8mSH/versions/yGAe1owa/fabric-api-0.116.9%2B1.21.1.jar";
      sha512 = "e643876079b950aef9aad3eee8d27046305895e8d0f595f7f95010839adeaa25c55a6dc8624ccfba1201194d6598fcbc11f23a7a553ccefbb8c0ceacf388bb79";
    })
    (pkgs.fetchurl {
      name = "fabric-language-kotlin-1.13.9+kotlin.2.3.10.jar";
      url = "https://cdn.modrinth.com/data/Ha28R6CL/versions/ViT4gucI/fabric-language-kotlin-1.13.9%2Bkotlin.2.3.10.jar";
      sha512 = "498672ee88cf703685026e74f82a85e30d980c62a1c8cc14744cb73add09a857db8d585b405e19f558ec490613642750eb00e09d8ef5a3c9578bc52b53568d51";
    })
    (pkgs.fetchurl {
      name = "farsighted-mobs-fabric-1.1-1.20.5.jar";
      url = "https://cdn.modrinth.com/data/eEpWUjwq/versions/hpcdszty/farsighted-mobs-fabric-1.1-1.20.5.jar";
      sha512 = "5fd8f2d54f6ba75ee9cbee4830187f4ce82871107c806869bf606d76d0ba3c28b532fa82eff7437ad3a79a61c0e7d3781c6b1d9120e57fd4f90d2cdecb1768f2";
    })
    (pkgs.fetchurl {
      name = "ferritecore-7.0.3-fabric.jar";
      url = "https://cdn.modrinth.com/data/uXXizFIs/versions/sOzRw3CG/ferritecore-7.0.3-fabric.jar";
      sha512 = "3ad31620fac4ff44327dc7dedbe162b2d978f3f246dc16255a6e400ce9592a0d326fe36a626f3c1bf30a11f813093cbb4dcc107af039cff724d0cdf648541fdf";
    })
    (pkgs.fetchurl {
      name = "fragmentum-fabric-1.21.1-2.1.1.jar";
      url = "https://cdn.modrinth.com/data/49C5QgTK/versions/7QJER6Ij/fragmentum-fabric-1.21.1-2.1.1.jar";
      sha512 = "b00c68796629afc99ca891b29b92aeefd7c3033d628b0af3d95a58bd36e6281c206341d824a18c78e74866421f29b5549667d591ac3dc1e28a051e45ca7d45c3";
    })
    (pkgs.fetchurl {
      name = "friendsandfoes-fabric-4.0.21+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/POQ2i9zu/versions/FBUAcWSb/friendsandfoes-fabric-4.0.21%2Bmc1.21.1.jar";
      sha512 = "ae27884bc9d7fe8dfd226b2e5fa952c69aa7f04034666273efa1985d654b5de496d843cede1801ce78538a369c18eb4192ffd35bae5df19a40a14f367ad323e5";
    })
    (pkgs.fetchurl {
      name = "frostiful-2.3.1+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/Ae6qoBj3/versions/hNTurvHs/frostiful-2.3.1%2B1.21.1.jar";
      sha512 = "2613da7ac6f36211402bff6ae7eaaef1d50dc58dd28fd4072715d699291072ba217a55de5865480eb27bc13bbb019e26bb264ed2c2cea97f7d2b7d153a14e471";
    })
    (pkgs.fetchurl {
      name = "fzzy_config-0.7.6+1.21.jar";
      url = "https://cdn.modrinth.com/data/hYykXjDp/versions/kOmySYD4/fzzy_config-0.7.6%2B1.21.jar";
      sha512 = "84f4176e371e65c838e7b78a7defdf18cad1fe5ad47dabe2a3fc5a940d900296d8af7a0320fb0c15040e38bf9be98d046f38a93d392a6ecaed71926de5158ddf";
    })
    (pkgs.fetchurl {
      name = "geckolib-fabric-1.21.1-4.8.4.jar";
      url = "https://cdn.modrinth.com/data/8BmcQJ2H/versions/3GjkJptS/geckolib-fabric-1.21.1-4.8.4.jar";
      sha512 = "fe2592bce89898c5dadba718cc3b58f4201c0a19fe3561cdab6a410155f43073ea57b9c1a83229589c8816c8e89a42336c4f0ae09c77640d3dfbadc07afb5f9e";
    })
    (pkgs.fetchurl {
      name = "gemsrealm-1.21-2.11.0-fabric.jar";
      url = "https://cdn.modrinth.com/data/v259p1An/versions/VD6DDu65/gemsrealm-1.21-2.11.0-fabric.jar";
      sha512 = "63717571a7295bbde43a4f0c2d207064a21d78c91a67bb25d166ebaa2edc49db96472ac64c982c102caa9bc9c9cf684a2b346e62def924ec79d89bee2651f3a6";
    })
    (pkgs.fetchurl {
      name = "gravestones-1.2.10+1.21+A.jar";
      url = "https://cdn.modrinth.com/data/Heh3BbSv/versions/qht7ppsj/gravestones-1.2.10%2B1.21%2BA.jar";
      sha512 = "cc5b6b371098d43c646e776fdf46a573466eb4c93ec581501b9ef3aa77775790e0e88a89d3533fa68d3bab60210738093d237d96314fbae665abb2af5ea29b5a";
    })
    (pkgs.fetchurl {
      name = "grind-enchantments-4.0.0+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/WC4UgDcZ/versions/fQ1HXxD4/grind-enchantments-4.0.0%2B1.21.1.jar";
      sha512 = "a6290f8b2a7546d4910389d619937f6e435f731cb206e23baf6888c690ae661d6bca62c26a4af37e26a1e89910c3a9a087ff7a50af27e0643759ad6b4691e263";
    })
    (pkgs.fetchurl {
      name = "helium-1.6.1.jar";
      url = "https://cdn.modrinth.com/data/dciNwIPV/versions/VNkjgc3Z/helium-1.6.1.jar";
      sha512 = "3f2963a61ee7529393f204d4fe930c9cedd7a56a8c6e12726a05038199591c09ebe206d927258e1276407e06837bcc3b118dbddefba9e5ab594612dcaa237e95";
    })
    (pkgs.fetchurl {
      name = "horseman-fabric-1.21.1-1.5.9.jar";
      url = "https://cdn.modrinth.com/data/qIv5FhAA/versions/HgOnHXUH/horseman-fabric-1.21.1-1.5.9.jar";
      sha512 = "a91da389f01ae951db3c7d52835c85547bfdd5f488c9533ac95d669fa04b19c6ce0cc5374f28de6ae3ea089cba10f783f9ed1e16d0d4ba5fdbbdfb6a6182d0dc";
    })
    (pkgs.fetchurl {
      name = "iChunUtil-1.21-Fabric-1.0.3.jar";
      url = "https://cdn.modrinth.com/data/W6ROj0Hl/versions/gfAOoiwe/iChunUtil-1.21-Fabric-1.0.3.jar";
      sha512 = "6aef7838146304010792a62aba34c466cb8605945ed59b1c2a873932020b26ee598c665abb295e36e186ae796832217f81b0b4dac76943a2da388ad519653b30";
    })
    (pkgs.fetchurl {
      name = "imfast-FABRIC-1.0.2.jar";
      url = "https://cdn.modrinth.com/data/PaUMOeP0/versions/xNGfkEBd/imfast-FABRIC-1.0.2.jar";
      sha512 = "dc3867c9ff9bd1769aefa68c6d515cb62691a82d07a93c85d997a62e3ef582a290b9fd61b3fc8c449857d496ac9dc4edf1bb511bccd5c3ae570ebdbce202f3a4";
    })
    (pkgs.fetchurl {
      name = "immersive_melodies-fabric-0.6.2+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/TaSmHw8V/versions/96UFoshO/immersive_melodies-fabric-0.6.2%2B1.21.1.jar";
      sha512 = "f1a9d98a0cd1492f8d8ba8fd09f25a08361df75a1d63cc6923f404b9150c6956b5402679b8c94b067b5f03e2ab1049cea688eecbba04b4f5b39c9b8b305c811f";
    })
    (pkgs.fetchurl {
      name = "immersive_optimization-fabric-1.21-0.1.4.jar";
      url = "https://cdn.modrinth.com/data/vNZgQmjg/versions/broKYqbi/immersive_optimization-fabric-1.21-0.1.4.jar";
      sha512 = "5c2ae0fe475d46da60ca213b8843e5249de322711573aa27b2a331d5c005b4b1e771a7f9bbca00b640abe976f0b06990fbe7d435cbe84ecfd1aa2b9c70af15ea";
    })
    (pkgs.fetchurl {
      name = "immersive_paintings-fabric-1.21.1-0.7.6.jar";
      url = "https://cdn.modrinth.com/data/6txNkua3/versions/LGth3NbU/immersive_paintings-fabric-1.21.1-0.7.6.jar";
      sha512 = "4addcd4a1ceb5c545742e97f06df749f6aab9cff1eb9dcafceab183510947bafb952a22c5ee4584a53a067c8e8e1eb46eb20cd2b5cb6f7d8f048c1ee421c9733";
    })
    (pkgs.fetchurl {
      name = "infinitetrading-1.21.1-4.6.jar";
      url = "https://cdn.modrinth.com/data/U3eoZT3o/versions/QV78XqMj/infinitetrading-1.21.1-4.6.jar";
      sha512 = "481b5ff880cc5b8adbda34f6e082c9df51956b0d2d2418703bd21257d71ad914b4f696edeeeaeec960fff475c0b2108923b3bb532abee665c4b5a075a1e26363";
    })
    (pkgs.fetchurl {
      name = "krypton-0.2.8.jar";
      url = "https://cdn.modrinth.com/data/fQEb0iXm/versions/Acz3ttTp/krypton-0.2.8.jar";
      sha512 = "5f8cf96c79bfd4d893f1d70da582e62026bed36af49a7fa7b1e00fb6efb28d9ad6a1eec147020496b4fe38693d33fe6bfcd1eebbd93475612ee44290c2483784";
    })
    (pkgs.fetchurl {
      name = "letmedespawn-1.21.x-fabric-1.5.0.jar";
      url = "https://cdn.modrinth.com/data/vE2FN5qn/versions/Wb7jqi55/letmedespawn-1.21.x-fabric-1.5.0.jar";
      sha512 = "a1fc557b9985954258f30fa32d4134867d6cd1d045147171a89a711d63b1b94f5dd58564aa3060ce10e8d81c2be1d8bae7ff828ee9c24a1c1b9f8398564936a9";
    })
    (pkgs.fetchurl {
      name = "lithium-fabric-0.15.2+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/gvQqBUqZ/versions/Yu6L8EnD/lithium-fabric-0.15.2%2Bmc1.21.1.jar";
      sha512 = "0422a6694c997aa91ce01fa038bd5d46d7d8d64f0a5abae7420e5a2a10fdcd1e6cf9033f1d95b402a9ba0f07c8c7cf5cfcd3e50ae7c4fe2ac82f39a58583012e";
    })
    (pkgs.fetchurl {
      name = "lmft-1.1.1+1.21.9-fabric.jar";
      url = "https://cdn.modrinth.com/data/67kVxsaO/versions/mn7K4mkS/lmft-1.1.1%2B1.21.9-fabric.jar";
      sha512 = "a8010b73e78e3ca0a2dc9b80ac0fd0412b0ad6693756631c0897de1a8a7e4168d917bfd86c3a0448c4731bafad666fb8270778def151bf08f54840763d9e3d50";
    })
    (pkgs.fetchurl {
      name = "maestro-fabric-1.21.1-4.0.0.jar";
      url = "https://cdn.modrinth.com/data/jcZX6rvP/versions/crjsHtW2/maestro-fabric-1.21.1-4.0.0.jar";
      sha512 = "7bede5b0e8342eff0b27b7c8b433f44fe7724f3ab7d99d03eb5f4d94c5bbcc107ac3ad99543f7fbec6d3087fd58e7400e34d9f130c1e3b35f7de75ee18f051a7";
    })
    (pkgs.fetchurl {
      name = "midnightlib-fabric-1.9.2+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/codAaoxh/versions/3tCMjbnf/midnightlib-fabric-1.9.2%2B1.21.1.jar";
      sha512 = "6ec997857e395c2b6081e4e117995e3b58ff3aff8353f51867d241db1b8f45c2d9985647301cb1946ddd85bf783362030b83ec1f61ec5c74e18ea5b48f1fd683";
    })
    (pkgs.fetchurl {
      name = "mixintrace-1.1.1+1.17.jar";
      url = "https://cdn.modrinth.com/data/sGmHWmeL/versions/1.1.1%2B1.17/mixintrace-1.1.1%2B1.17.jar";
      sha512 = "ea9034b60bc1c64629a9bcad2e619907692fe6e7464026236c55cc5a4892a20d21dd6318ad0380ab2ec245f7077939b6717d2ed58e00708c17470be14f5e0b5f";
    })
    (pkgs.fetchurl {
      name = "modernfix-fabric-5.25.1+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/nmDcB62a/versions/NnNX8LBn/modernfix-fabric-5.25.1%2Bmc1.21.1.jar";
      sha512 = "dc67d6e023e1fcdeaf7837917c477cba212c611dfc2463c6ea021319c644087c79b477e0ea8194e113ddd7332fd5c6d82baa47c291eaac7f4a86252507b4e19f";
    })
    (pkgs.fetchurl {
      name = "monsters-in-the-closet-1.0.3+1.21.jar";
      url = "https://cdn.modrinth.com/data/GMA8jFBD/versions/iBLoBKBc/monsters-in-the-closet-1.0.3%2B1.21.jar";
      sha512 = "3050abfa65fa003f0a2230f5e84ac31f4cbcac8ca3fee983df98ed4ddd1f54776a8f11b884c5646f8adba6319916e14a4fb9eeaaeefa5f87617d65a2ecebc204";
    })
    (pkgs.fetchurl {
      name = "moogs_structures-1.1.0-1.21-1.21.1-fabric.jar";
      url = "https://cdn.modrinth.com/data/1oUDhxuy/versions/jQCmAAAT/moogs_structures-1.1.0-1.21-1.21.1-fabric.jar";
      sha512 = "ca3507c70fc6fc096b2082ab3568635e76c67382c95267b8f5dab7a76a761042785d506a0b6f0803a32c7e54e88dd240978de40f35f280d337dbc8617609fa10";
    })
    (pkgs.fetchurl {
      name = "moonlight-1.21-2.29.20-fabric.jar";
      url = "https://cdn.modrinth.com/data/twkfQtEc/versions/nOYRAzG7/moonlight-1.21-2.29.20-fabric.jar";
      sha512 = "dfd25aca78d6fbe9d850c47bdc9d3cc2dc54982f76375e3b7e30a8b0e3598d6c5d9a1254f3e9c412fffe136ad8d3a5ca1f4c4ac99dfae4e4952e74bec6a3d983";
    })
    (pkgs.fetchurl {
      name = "more_armor_trims-1.5.2-1.21.jar";
      url = "https://cdn.modrinth.com/data/FGNYBAJ6/versions/5PTwuDHb/more_armor_trims-1.5.2-1.21.jar";
      sha512 = "ed0647394bcdfd49af89ba45864a9f99bb54c16e04444ca41593eeb7a2e8e0afdf5f09142013a77ab80947375da6f37138f729ce43029a47998e6a95c2cc566f";
    })
    (pkgs.fetchurl {
      name = "mru-1.0.19+LTS+1.21.1+fabric.jar";
      url = "https://cdn.modrinth.com/data/SNVQ2c0g/versions/hXVm1N3M/mru-1.0.19%2BLTS%2B1.21.1%2Bfabric.jar";
      sha512 = "092ae73bb2ca8363fbcbf71b702b4fd71e75832240dd4b088ddd5f02f3b0d53b2b04fb87f824dbff0ed546c5d96ac91669be65510ce0ef64a112f6cd10f1d44a";
    })
    (pkgs.fetchurl {
      name = "mythic_mounts-1.0V.jar";
      url = "https://cdn.modrinth.com/data/vDBg3dpI/versions/a8WVUitL/mythic_mounts-1.0V.jar";
      sha512 = "5afdb21a9ac6b89f603d1cccc238687c3da2596feaba6e91b2e3bbeb4c8297838e53047c5ce612b5a1d89eca924f2e990cd4f77f40cf4422cf2575eec898bc8e";
    })
    (pkgs.fetchurl {
      name = "mythicmetals-0.24.4+1.21.jar";
      url = "https://cdn.modrinth.com/data/bAWzYNRd/versions/L4U4Xcn7/mythicmetals-0.24.4%2B1.21.jar";
      sha512 = "8d9904e15fa3f0d7f775ff910a1e0657453e625dfee2f96353e52d81cfd856f0dfd133012839bf5a1c7a3c67cb714742ba884e3659a4a2b1d0baf8e593bec408";
    })
    (pkgs.fetchurl {
      name = "mythicmetals-decorations-0.9.2+1.21.jar";
      url = "https://cdn.modrinth.com/data/Wtv23AFN/versions/OBaNY2Lt/mythicmetals-decorations-0.9.2%2B1.21.jar";
      sha512 = "a5bdf7e15e8f56426b23a9c3e1ed29c2f1f400d717707222716bb6d7422fdbe3dcdc5b42425f8b257d1ec474812b2ee1ee2f6de6509806a8eb76fea03b686ae8";
    })
    (pkgs.fetchurl {
      name = "naturallychargedcreepers-1.21.1-3.6.jar";
      url = "https://cdn.modrinth.com/data/j5LquiGA/versions/K8PJOLPj/naturallychargedcreepers-1.21.1-3.6.jar";
      sha512 = "f5133e6f456ad8af1f1592ef59eb60f5af7b0afacc5b09bf26e1f3e985876e66a1fbbae96028fabfb51837e0cb92dac3c82c7bde6d742b11f8e9db2a692beab9";
    })
    (pkgs.fetchurl {
      name = "neruina-3.2.2+1.21.1-fabric.jar";
      url = "https://cdn.modrinth.com/data/1s5x833P/versions/yrmq727A/neruina-3.2.2%2B1.21.1-fabric.jar";
      sha512 = "ba498ec2f1f4d73728ec9c168f441910c096f09b74698d4b0435a974fe7530227d618406678c264a9042ca38c3b66b8bf6cfb8cc11459271c91f7e0cfcb825a9";
    })
    (pkgs.fetchurl {
      name = "nofeathertrample-1.21.1-1.3.jar";
      url = "https://cdn.modrinth.com/data/VmGOLJeH/versions/PBWeN39J/nofeathertrample-1.21.1-1.3.jar";
      sha512 = "aca1787822c62271d5aa52bbec8ce9301beecffedada40b18cc2dbadba9af00c692b71664aa42d3045da27cc76e65b67510e60e246f6dcc0bb05ef2b1d384bd6";
    })
    (pkgs.fetchurl {
      name = "oceansdelight-fdrf-fabric-1.0.2-1.21.jar";
      url = "https://cdn.modrinth.com/data/DGiq4ZSW/versions/I5D1raJA/oceansdelight-fdrf-fabric-1.0.2-1.21.jar";
      sha512 = "bbd72b47bf54eab34928d139a46d016702530c3133f8347e36f31b2894bfc5abf421f63ec763abf1879b98ba5e726efcf098997ae68338c9ab3590258a67b3f0";
    })
    (pkgs.fetchurl {
      name = "owo-lib-0.12.15.4+1.21.jar";
      url = "https://cdn.modrinth.com/data/ccKDOlHs/versions/JB1fLQnc/owo-lib-0.12.15.4%2B1.21.jar";
      sha512 = "b9c79035c912ef043722f2a1f0bc0166e0ca047ea5237a86f23198dea487289e0a0f92a96e46bd683ffc39e4190b95450d13456b14f6280587635b51c9393a1b";
    })
    (pkgs.fetchurl {
      name = "packetfixer-3.3.1-1.20.5-1.21.X-merged.jar";
      url = "https://cdn.modrinth.com/data/c7m1mi73/versions/2C41Q8WX/packetfixer-3.3.1-1.20.5-1.21.X-merged.jar";
      sha512 = "d0acfaa6ef394fc7d9e677022bda06a6c8be7851ba8860897999775b657b5e10878578fe626505b0c9dbc01d26f559dbb1214aabb081d076824648047094e2e1";
    })
    (pkgs.fetchurl {
      name = "placeholder-api-2.4.2+1.21.jar";
      url = "https://cdn.modrinth.com/data/eXts2L7r/versions/U5bhVym2/placeholder-api-2.4.2%2B1.21.jar";
      sha512 = "fc13d3a5c048dbaab86318edaf8b6c6b46ef9f1d367e8f063d19f5a9b0da66c5ae419d92c8c4608edc89a01eb44d91ffcf017fea73f39b222cbd85e82f70a233";
    })
    (pkgs.fetchurl {
      name = "pneumonocore-1.2.1+1.21+A.jar";
      url = "https://cdn.modrinth.com/data/ZLKQjA7t/versions/QKvgjhTZ/pneumonocore-1.2.1%2B1.21%2BA.jar";
      sha512 = "028e18a7ec6719f67b3d2e2d0c57d207ff7ddf0b048d64c2dfed127566283aaafc17d70927d1c30259d4990ce0c12d5c177c4f5bbc2285a9163c08e29b364c28";
    })
    (pkgs.fetchurl {
      name = "polymorph-fabric-1.1.0+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/tagwiZkJ/versions/Ng5Y6KVo/polymorph-fabric-1.1.0%2B1.21.1.jar";
      sha512 = "701cbff45976dcc5e8c480582fdcfaf20565d17b763a091e551debd343c37430cd711844d3d11b3f1abb236cca56ae907045b64c6ac5f70553aaa98e4fb69527";
    })
    (pkgs.fetchurl {
      name = "prickle-fabric-1.21.1-21.1.11.jar";
      url = "https://cdn.modrinth.com/data/aaRl8GiW/versions/Ef7P6Rb7/prickle-fabric-1.21.1-21.1.11.jar";
      sha512 = "d161b19004c72f87763d7ca12b845482e656535991a779211cad248f2646fe83c985f26bbe910290fa514260c7a6bdb5f1dac59bb4774c93c513409a1c3cab07";
    })
    (pkgs.fetchurl {
      name = "puddles-2.0.0.jar";
      url = "https://cdn.modrinth.com/data/535D1YoA/versions/ST936B3l/puddles-2.0.0.jar";
      sha512 = "81ba1bb5a065bff7d4b70ae49c6a09190e9f883b19315b790d1fcf217ce37340e3d2ca6b03bb88318716ec44ef7dd43c961023afa6fd957f9af5f57d4e18c38e";
    })
    (pkgs.fetchurl {
      name = "resourcefulconfig-fabric-1.21-3.0.11.jar";
      url = "https://cdn.modrinth.com/data/M1953qlQ/versions/dQh99ERC/resourcefulconfig-fabric-1.21-3.0.11.jar";
      sha512 = "11189c68626404bef5021bae51bcec1840dba0c3356ca275e9b3439e20ba474fb9ba6f6bf4b4f08b3e9a43c58ac553e2e0d182429bd606948d8211bd49c1d0e7";
    })
    (pkgs.fetchurl {
      name = "resourcefullib-fabric-1.21-3.0.12.jar";
      url = "https://cdn.modrinth.com/data/G1hIVOrD/versions/Hf91FuVF/resourcefullib-fabric-1.21-3.0.12.jar";
      sha512 = "df8a9586eaa0e2f8e1e6a5651ba79ff6c95327b0ab89cdab4708cc6ed51c3da6829d00e8f176e7e7b7b37d4af8c5bd9e3df047f3a8a04fd1af925d80c774185b";
    })
    (pkgs.fetchurl {
      name = "scaffoldingdropsnearby-1.21.1-3.4.jar";
      url = "https://cdn.modrinth.com/data/uO522mgw/versions/y1BpbvCk/scaffoldingdropsnearby-1.21.1-3.4.jar";
      sha512 = "3c9c97190023555670f49c33fab1c07bc836627e186ebf703f16d6be6ae401787d9eaaf3d97441281814785c62fd40ac750fe547b2bd5fb22193928821376759";
    })
    (pkgs.fetchurl {
      name = "scorchful-0.15.10+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/SZQ5qcdn/versions/Nx8FoZMe/scorchful-0.15.10%2B1.21.1.jar";
      sha512 = "09b62c497d8e181bc6496f7f152936ba58652cc88f1723bd1715728237b8d837ef4e7cf269f3eb906b287efeaa4ed0238c280031de1c3811ffdb7ab964f7f538";
    })
    (pkgs.fetchurl {
      name = "servercore-fabric-1.5.10+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/4WWQxlQP/versions/FDzBkBBD/servercore-fabric-1.5.10%2B1.21.1.jar";
      sha512 = "dac68103d1ab69adeecdff220d391b4b5d9a826db1b94a8c5372fec8d5e6c41eb37ebc96b8361be84df5c3499a1b0e4d2a657d60df553b47dde133100666268d";
    })
    (pkgs.fetchurl {
      name = "servux-fabric-1.21-0.3.16.jar";
      url = "https://cdn.modrinth.com/data/zQhsx8KF/versions/KnpV801L/servux-fabric-1.21-0.3.16.jar";
      sha512 = "f174d85a2b86096f14fad29a9f05a51be24c8b4a02400319a8e0841ea4841121d0cd7a71a2360a414a638f1f8ee08b42261e20988462f98faee5702897c3d38a";
    })
    (pkgs.fetchurl {
      name = "shulkerboxtooltip-fabric-5.1.8+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/2M01OLQq/versions/nGPvABlf/shulkerboxtooltip-fabric-5.1.8%2B1.21.1.jar";
      sha512 = "b0b79aae60a2f88ac88ceb7bf114f7e1ce7701586da6b1acbd9d6f4e1d11d71dcc68e20e5f5cf5840832eabcb614f710a621bbe806eee9effeb9d778e122f1a4";
    })
    (pkgs.fetchurl {
      name = "silent-mobs-1.jar";
      url = "https://cdn.modrinth.com/data/ShlEFXjF/versions/nkdEWKhI/silent-mobs-1.jar";
      sha512 = "aeca2a2365ce8f470ba6ca7fdf7c631afddfe3b0f7eef2dc72b19f60c3a6ecb0cc1900890395859cf81ff5b354435b0db622658eb43ff6800192106eb395ee7a";
    })
    (pkgs.fetchurl {
      name = "silkiertouch-1.21.1-1.0.jar";
      url = "https://cdn.modrinth.com/data/dUaXeoyM/versions/TngkMccX/silkiertouch-1.21.1-1.0.jar";
      sha512 = "7aacad10ee0ea27d6c38c3c2feeb09393ae1317804da6d24ecaa0b3a6fdec019a44762c922c0c2adf54fc2cfe8a5b71825955662592195969752bbabf650153b";
    })
    (pkgs.fetchurl {
      name = "smallernetherportals-1.21.1-3.9.jar";
      url = "https://cdn.modrinth.com/data/fYAofsi6/versions/ZAbiGvCu/smallernetherportals-1.21.1-3.9.jar";
      sha512 = "94f75829c7ef07b28280240052be4fe3411eaee6c6fd70f98958b478fb3f04d3bf8646f63f57470a3ea21c42ff1871053d8d8107219fa51965d798688b3335a4";
    })
    (pkgs.fetchurl {
      name = "smallships-fabric-1.21.1-2.0.0-b2.1.jar";
      url = "https://cdn.modrinth.com/data/rGWEHQrP/versions/BSRcyUiv/smallships-fabric-1.21.1-2.0.0-b2.1.jar";
      sha512 = "130a549cfd92daecf9c4cc7e3c84ff49b2fb547b597752fc1d521ecbe4405d219617ea4b92d5b144aad041ba1aca881242492d7c021eb2c258f6a9407d2acb46";
    })
    (pkgs.fetchurl {
      name = "sophisticatedbackpacks-1.21.1-3.23.4.3.106.jar";
      url = "https://cdn.modrinth.com/data/ouNrBQtq/versions/nHhuPdda/sophisticatedbackpacks-1.21.1-3.23.4.3.106.jar";
      sha512 = "04c0c22489a16d782b644ec7ad6aa5bf4353614148a9fb1e152e9ec6c72be14d36b1c0793c25b720f2baf85aa299fc6585b4ee1991de25ac426166dc72fb0def";
    })
    (pkgs.fetchurl {
      name = "sophisticatedcore-1.21.1-1.2.9.21.168.jar";
      url = "https://cdn.modrinth.com/data/9jxwkYQL/versions/ZLVrtF0Q/sophisticatedcore-1.21.1-1.2.9.21.168.jar";
      sha512 = "330489fa3434702a01aa1a98d46eca5d155cb4c2dd25b30c70f6afb29a8d027381cf395d5965b3c46df899bb96675536604302d9db6273f624ba959f4009ce25";
    })
    (pkgs.fetchurl {
      name = "sophisticatedstorage-1.21.1-1.3.7.9.139.jar";
      url = "https://cdn.modrinth.com/data/iHtpVwJL/versions/kjNlOByJ/sophisticatedstorage-1.21.1-1.3.7.9.139.jar";
      sha512 = "52a72f10e54cf21d1dc3a94812a815bf6292815410f6d3ff2dfc928d9091352314f1b1b9c6760b303c3e58132c76dea584e31b16e5479cd0ea2c4ea256854937";
    })
    (pkgs.fetchurl {
      name = "sophisticatedstorageinmotion-1.21.1-0.10.5.1.38.jar";
      url = "https://cdn.modrinth.com/data/T8h6Gr5g/versions/h9XqC1Wb/sophisticatedstorageinmotion-1.21.1-0.10.5.1.38.jar";
      sha512 = "b5f55e2b087ca1064dbc0c15ef909ec0bf4a80d0a0a014b6c3591a1934713bcb553960e61ef7c0deb72a69c26b66994be245f3415c3e9df7365b0015483f5615";
    })
    (pkgs.fetchurl {
      name = "sound-physics-remastered-fabric-1.21.1-1.5.1.jar";
      url = "https://cdn.modrinth.com/data/qyVF9oeo/versions/tVu2EZ4u/sound-physics-remastered-fabric-1.21.1-1.5.1.jar";
      sha512 = "72c69678b6afc5ec48027f6e40f7421370dffa1483e23767e0b5f1b36581be652308b33864848e186845df9052f512b79698c69242adb297058cdc3357b64d60";
    })
    (pkgs.fetchurl {
      name = "spark-1.10.109-fabric.jar";
      url = "https://cdn.modrinth.com/data/l6YH9Als/versions/cALUj9l1/spark-1.10.109-fabric.jar";
      sha512 = "367f574f6d28432067f09737577d799ced9c309c1725da1d09ffdfe10eacf461a66967205cc938131afbcc8b8255c8c25f8aa516e15f061c6481b6e7b8c94250";
    })
    (pkgs.fetchurl {
      name = "ssdh-1.0.0.jar";
      url = "https://cdn.modrinth.com/data/Zk33BG8E/versions/fFoLlBr8/ssdh-1.0.0.jar";
      sha512 = "e7130f4042b75dc6ed6843d5645bc992ceebf6e67747e6c7bfd399cf887924bf0dd6e5e5945916ded17a0a082f3b37a3ffd886029436455d2d968c92ffc3c2ed";
    })
    (pkgs.fetchurl {
      name = "stonezone-1.21-2.11.11-fabric.jar";
      url = "https://cdn.modrinth.com/data/uYwn8IP5/versions/FdpTgg97/stonezone-1.21-2.11.11-fabric.jar";
      sha512 = "27256d779ad3a4db9ec73ceb9042bc0db812e5c03973035250305140e6f1b36683f3523a1a2fe32016ad09c51a03d01404aa908808015d8975dccb6d144176d7";
    })
    (pkgs.fetchurl {
      name = "structure_layout_optimizer-fabric-1.0.12.jar";
      url = "https://cdn.modrinth.com/data/ayPU0OHc/versions/522Wudew/structure_layout_optimizer-fabric-1.0.12.jar";
      sha512 = "658db517456e7b9ce1b92b34cf8e7e411ca2d8004cccbb2608e3cd278f79846eafa176c40d1e6666d23a7dff6e1f2bc4ad97a8bfc168976168effce42979333b";
    })
    (pkgs.fetchurl {
      name = "t_and_t-neoforge-fabric-1.13.7+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/DjLobEOy/versions/E4Wy3O8Y/t_and_t-neoforge-fabric-1.13.7%2B1.21.1.jar";
      sha512 = "5edc9324618b481b60e1c970138a60842d79a9e486cc89c83f01ca41eb193c55ac622dedbe48799492c59b4e8d25c53757396f8fb3d4806eb5b1de12e5d7dd0c";
    })
    (pkgs.fetchurl {
      name = "takesapillage-fabric-1.0.10+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/QOJOg1gE/versions/EM1arfEM/takesapillage-fabric-1.0.10%2Bmc1.21.1.jar";
      sha512 = "c3fe248405ad7ee28c9a2bbad9ea5fc0857026b5913660591a8de75860bde694ab9b237daf284029cbb934d5b5a8a4828bac176cdff8a8ba6764a0a75fb6df32";
    })
    (pkgs.fetchurl {
      name = "thermoo-4.8.0.jar";
      url = "https://cdn.modrinth.com/data/9TbXlAut/versions/mdiwqAsQ/thermoo-4.8.0.jar";
      sha512 = "c1df852d9236723c973e3bff52d1c0733494f0f6e4c986735986a6505ab061c3b76b862b05c93db6783b3ca38c84aeb017b2ee808a831934d168100b92e0232c";
    })
    (pkgs.fetchurl {
      name = "thermoo-patches-3.7.2.jar";
      url = "https://cdn.modrinth.com/data/TYRF9nUy/versions/KpMLEP9e/thermoo-patches-3.7.2.jar";
      sha512 = "0b8f158c7be0588a03ef6718dd9acce9c0cc6a140e15b1c7e13d74bb0fcc0b48fe3e5808c12d112968ed1d5d243114065f57191a0cc08a935a9f72d9ae57a5dc";
    })
    (pkgs.fetchurl {
      name = "threadtweak-fabric-0.1.5+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/vSEH1ERy/versions/F4sjmsi3/threadtweak-fabric-0.1.5%2Bmc1.21.1.jar";
      sha512 = "b0221075239b9998d08e9a42d7bb3205c22482dc39f4b62a1c57c1f7444c9ec9cdee4a245b6b9c6b23f61f3cec82056c40cfc09e6c1bc0690cd936dfed6393a1";
    })
    (pkgs.fetchurl {
      name = "trade-cycling-fabric-1.21.1-1.0.20.jar";
      url = "https://cdn.modrinth.com/data/qpPoAL6m/versions/g1AEWhmh/trade-cycling-fabric-1.21.1-1.0.20.jar";
      sha512 = "0175ee505a1050bb0e97eee25197bd2f31665902f941aac7203cf06675484bf7312d1ea1ff9733f1504182833fb6891ea9c8a405a141343d0263d2a4286c30df";
    })
    (pkgs.fetchurl {
      name = "trinkets-3.10.0.jar";
      url = "https://cdn.modrinth.com/data/5aaWibi9/versions/JagCscwi/trinkets-3.10.0.jar";
      sha512 = "3ea846c945a0559696501ff65b373c8ee8fd9b394604e9910b4ed710c3e07cadc674a615a2c3b385951a42253a418201975df951b3100053ed39afadc70221c9";
    })
    (pkgs.fetchurl {
      name = "undergroundbeacons-1.21.1-1.0.jar";
      url = "https://cdn.modrinth.com/data/SMC0xf5E/versions/LHTttXOg/undergroundbeacons-1.21.1-1.0.jar";
      sha512 = "89741776b22f597422bc5a2a0900dba3f1047a13e82ac667cbd41a683c5f4f86c8fda8c84b5ce0285f55a3300adddecffce2fd52470dc9c52926ddc01889a704";
    })
    (pkgs.fetchurl {
      name = "underwater-swim-fix-1.0.2.jar";
      url = "https://cdn.modrinth.com/data/GsElPB9F/versions/kPPvQkYk/underwater-swim-fix-1.0.2.jar";
      sha512 = "865b0cebd4255efbe3de6ee7bc66f652da74e99cd97c0dc4dc4f31ce4c71eb9f686a58f7edd0a18663ee34b2fc571e9b4fdf8d8a80706460ad0adb462bbf36d5";
    })
    (pkgs.fetchurl {
      name = "underwaterenchanting-1.21.1-2.9.jar";
      url = "https://cdn.modrinth.com/data/e8JtTY4h/versions/W9F80lKW/underwaterenchanting-1.21.1-2.9.jar";
      sha512 = "ad623f54a0a4167865597048503e610dd73f9ddd188c89112069f39fa14daea6d25980d6f57010c80f6a6d16dc22b82a0c0ddb500a8d77a2f55c10d2c314e6ec";
    })
    (pkgs.fetchurl {
      name = "universal_ores-v1.6.1.jar";
      url = "https://cdn.modrinth.com/data/68kWHuUF/versions/n0hOKzrC/universal_ores-v1.6.1.jar";
      sha512 = "9cd57fcf62e9b16b16455765b58e175624b7f8c876b25ce1f1de833cc433990081b5a9e1c1d6611a14e0eaa95dc74202a660f2790ca6946c33d81cbe5819f310";
    })
    (pkgs.fetchurl {
      name = "vb-compat-1.7-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/jcYHXHwz/versions/Fnr9j5Nt/vb-compat-1.7-1.21.1.jar";
      sha512 = "f67ee5f49a80ba78cff392b9c96463f9362065cf5be828992c3fe8806859330a8d9263bd08fb7334f7cd0258c894af15327e4fa790f8c15d5e0889b45747e079";
    })
    (pkgs.fetchurl {
      name = "villainousfishai-fabric-1.21.1-1.2.jar";
      url = "https://cdn.modrinth.com/data/I3Sx4TFv/versions/QAJExyH4/villainousfishai-fabric-1.21.1-1.2.jar";
      sha512 = "daa5cb9b546c7b941e466339b606e1d994d9cb96ef4ebed1354f86020f334c048920eef6e37c01f05e31e6866a281606870a9e811d51fe7c2df3956453247c22";
    })
    (pkgs.fetchurl {
      name = "walkablerails-1.0.0+1.21.1-fabric.jar";
      url = "https://cdn.modrinth.com/data/iQK4D5yO/versions/UGqxiBMd/walkablerails-1.0.0%2B1.21.1-fabric.jar";
      sha512 = "0c4ddeb3e8cc726b8aa7ebfe9e628248eda0063b900d14aa2c6cd87665639d5b775448d8b7f094e04f08adc907f7e3bfe824315976a996838eb3ac2f89d0ef5e";
    })
    (pkgs.fetchurl {
      name = "xaerominimap-fabric-1.21.1-25.3.10.jar";
      url = "https://cdn.modrinth.com/data/1bokaNcj/versions/9kt7Yxig/xaerominimap-fabric-1.21.1-25.3.10.jar";
      sha512 = "2cabff39e66fdbe0b7ba514573bc743c40bc827d6edecbe59941cfb693f105340d11226fe06b5f5fff95fc8d63f42445d92d0f31eb34ffde540422271ceb823e";
    })
    (pkgs.fetchurl {
      name = "xaeroworldmap-fabric-1.21.1-1.40.11.jar";
      url = "https://cdn.modrinth.com/data/NcUtCpym/versions/wB9wNHUk/xaeroworldmap-fabric-1.21.1-1.40.11.jar";
      sha512 = "a225d17b43d0aff03dacb0826c024aa8620afa45b43e63c8e9d5002c4dbced4afb0f2bc8c92508b60b967b6a0d78ab0f7af645a578f3632e151c0fd4f26ce89e";
    })
    (pkgs.fetchurl {
      name = "yet_another_config_lib_v3-3.8.2+1.21.1-fabric.jar";
      url = "https://cdn.modrinth.com/data/1eAoo2KR/versions/o3cDn8Vp/yet_another_config_lib_v3-3.8.2%2B1.21.1-fabric.jar";
      sha512 = "353169f85fa63e73ce9bdd0d4ddce54e3cbc4d71153a93c982f74c68fd93325986663f94fc2f2b10f4427e8b15a0485c608c5587b3840d933204b50ea4cb6d4c";
    })
    (pkgs.fetchurl {
      name = "yo_hooks-fabric-3.10.0.jar";
      url = "https://cdn.modrinth.com/data/t1p8V2nl/versions/qheIB9EF/yo_hooks-fabric-3.10.0.jar";
      sha512 = "ea8b8134853c1b81e9a522f243e32b2f217a4107a82baa28fceb9c9f3c1990ffcac72f0e5fab9995662d5b51d2ab8fc4ca385a47ec6faf1e323ca5110321dea7";
    })
    (pkgs.fetchurl {
      name = "your-reputation-0.2.9+jade.1.21.1.jar";
      url = "https://cdn.modrinth.com/data/uDBLJfwG/versions/JVwmrNbn/your-reputation-0.2.9%2Bjade.1.21.1.jar";
      sha512 = "f4025c5a141504ae70a3048a4b29e81c2a0bbc58990660b19455ff2548e7a7e5f86642f6a177af407b048e81f49ee7c4f9a1b80a8be3bb26c25cf9b6d2f6e38d";
    })
    (pkgs.fetchurl {
      name = "zfastnoise-1.0.11+1.21.jar";
      url = "https://cdn.modrinth.com/data/OnlVIpq5/versions/qETA8Qja/zfastnoise-1.0.11%2B1.21.jar";
      sha512 = "16a8c997be7f14be0aeb08465a378cdc2ed2643b9a2d1f6a25dad44995d521dd16ac3809d2be79bc018d6abe9b5c051e653a230cc4a1bd8f2ebd76371e153a6e";
    })
  ];
  datapacks = [
    (pkgs.runCommand "Big-Globe---MNS-Compat-1.0.3.zip" {} "cp ${./datapacks/Big-Globe---MNS-Compat-1.0.3.zip} $out")
    (pkgs.runCommand "Big-Globe---MSS-Compat-1.0.3.zip" {} "cp ${./datapacks/Big-Globe---MSS-Compat-1.0.3.zip} $out")
    (pkgs.runCommand "Big-Globe---MVS-Compat-1.1.5.zip" {} "cp ${./datapacks/Big-Globe---MVS-Compat-1.1.5.zip} $out")
    (pkgs.runCommand "bigglobe-vanillabackport-3.zip" {} "cp ${./datapacks/bigglobe-vanillabackport-3.zip} $out")
  ];
in {
  options.minecraftMods = {
    modsDrv = lib.mkOption {type = lib.types.package;};
    datapacks = lib.mkOption {type = lib.types.package;};
  };
  config.minecraftMods = {
    modsDrv = pkgs.linkFarmFromDrvs "mods" mods;
    datapacks = pkgs.linkFarmFromDrvs "datapacks" datapacks;
  };
}
