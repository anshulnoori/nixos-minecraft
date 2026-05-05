{
  pkgs,
  lib,
  config,
  ...
}: let
  mods = [
    (pkgs.fetchurl {
      name = "ChunkDebug-2.1.2+1.21.1$fabric-permissions-api-0.3.1.jar";
      url = "https://cdn.modrinth.com/data/lzVo0Dll/versions/62DUD085/fabric-permissions-api-0.3.1.jar";
      sha512 = "98f94da37879e66a3db9856481b3f9acdc8be64dd086a3a380e2d17f48f8723c8914c572602a3b76a734ef3b100d037b5e82c2991f13d00759b4c6441d1128b5";
    })
    (pkgs.fetchurl {
      name = "chesttracker-2.6.7+1.21.1$whereisit-2.6.3+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/FCTyEqkn/versions/l7AnqnrL/whereisit-2.6.3%2B1.21.1.jar";
      sha512 = "8aae3f45e717f8669487fb1c63dead968f9a5f496e8dc50a2334f18909a2b2d819e954b5d6042f535de7eb0822c8d757d061e222c526cbce21b92eb81d2c9ac1";
    })
    (pkgs.fetchurl {
      name = "techutils-0.6.2+1.21.1$Fabric-ASM-v2.3.jar";
      url = "https://cdn.modrinth.com/data/jEEzLOmA/versions/rpcALVHS/Fabric-ASM-v2.3.jar";
      sha512 = "60627b24815567356fc0e595cc87e78fe69c9652ab1c85b7320b15677b953c99bb02094b78264e393301f1d72a396d6d3e200328eebdfb9cfd244048d5696a94";
    })
    (pkgs.fetchurl {
      name = "AchievementOptimizer-neoforge-1.21.1-2.1.0.jar";
      url = "https://cdn.modrinth.com/data/SvXrP8rT/versions/qHMtEGz4/AchievementOptimizer-neoforge-1.21.1-2.1.0.jar";
      sha512 = "534b4ded2849793359afc447a910065f294c69a5a4042ed4b2cb3ab542f2c87ffd667a23565d36677ad443ce1cb5373f2a1ff346eda0869103bb238797555dfd";
    })
    (pkgs.fetchurl {
      name = "AdvancedLootInfo-neoforge-1.21.1-1.10.0.jar";
      url = "https://cdn.modrinth.com/data/PEPVViac/versions/9jJT2Kmz/AdvancedLootInfo-neoforge-1.21.1-1.10.0.jar";
      sha512 = "4d6e3171771de6d03e691b26d467d21be0be1f75e46c1785453b553493a61947f20bbcab0460654027ce836395c5f0e38e7377a785e08b6f9ecea1f312bbe536";
    })
    (pkgs.fetchurl {
      name = "AllTheTrims-5.0.1-neoforge+1.21.jar";
      url = "https://cdn.modrinth.com/data/pnsUKrap/versions/h5Zbk0kV/AllTheTrims-5.0.1-neoforge%2B1.21.jar";
      sha512 = "526eecfabf131b02759be500b8920069c7e509d6148e091fd8c6587ec2839747a15d974fb0f7a505605cc806fc0dcf884f3f75d3414ab6db5a0afec07cf924fa";
    })
    (pkgs.fetchurl {
      name = "BOMD-NeoForge-1.21-1.3.2.jar";
      url = "https://cdn.modrinth.com/data/hFUzfDsn/versions/HMIiPvSY/BOMD-NeoForge-1.21-1.3.2.jar";
      sha512 = "a0d8ee00f1190a6e35b1e03a6f088c2d559fd1cf9ea1e5a2f87698442bf800a2cee7bbacc9a02014b7805629b926f07f7183b68403a26815b6dc65a372885576";
    })
    (pkgs.fetchurl {
      name = "BetterEnd-21.0.24.jar";
      url = "https://cdn.modrinth.com/data/IcERKldh/versions/QWW9Gwwf/BetterEnd-21.0.24.jar";
      sha512 = "062b2d6f555fe00827d3dc55740ff0a3c2ad3f3023de70509d8dfc422fb8685f6c48b29e5256a08dbbe17069c2137610d80c31a981d82077f4531d085706b311";
    })
    (pkgs.fetchurl {
      name = "BetterNether-21.0.19.jar";
      url = "https://cdn.modrinth.com/data/fxX3RlL5/versions/zjCPvMgN/BetterNether-21.0.19.jar";
      sha512 = "f0564043fd7da679f82daaa2c3baded09513b63e90513ad1e66efdbb22f56deab7fc5cc4cb62654e09c659b9be3f8b9b40617258f486c207479850b63328344e";
    })
    (pkgs.fetchurl {
      name = "BetterTridents-v21.1.0-1.21.1-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/KNUSlHiU/versions/UVSMPjiS/BetterTridents-v21.1.0-1.21.1-NeoForge.jar";
      sha512 = "2be3dbdadb6d2e71a4be9a4b96864af72fb9f358e9f6770e9a00565284d8aaa966f9d7a14917241234c340e7eadfb45603732d10c284b01325c749dd9d9fd629";
    })
    (pkgs.fetchurl {
      name = "BetterTrims-3.2.8-neoforge+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/98ytUvlc/versions/jfQ0J3p9/BetterTrims-3.2.8-neoforge%2B1.21.1.jar";
      sha512 = "afea579696484bc657eb3a33b42aa10ed125e10d2eb670e8aff07bb419ddcf94e04d5f20637bf0bab4658eba41ebb3a4c0f0105c88bc511fda3db8daf18f3206";
    })
    (pkgs.fetchurl {
      name = "BiomesOPlenty-neoforge-1.21.1-21.1.0.13.jar";
      url = "https://cdn.modrinth.com/data/HXF82T3G/versions/8vIRXPpR/BiomesOPlenty-neoforge-1.21.1-21.1.0.13.jar";
      sha512 = "a238c6dbeccf9bb8f7144601e8f8fd7973d76c60344b50670141e76f49f886f6f89487eb81749dfca7c36166831924052106884a9f8dc18893261476a34d4b32";
    })
    (pkgs.fetchurl {
      name = "Boids-2.0.4+1.21.jar";
      url = "https://cdn.modrinth.com/data/2OckSy74/versions/7Wk4e9Zz/Boids-2.0.4%2B1.21.jar";
      sha512 = "b9a14de96875c317607583a3dff62f7dad75f1bd21fa6e4268a19e0abaffd557dce2e92df207ebbea41e7a75648ddfba52cc7875cf4b31e245a43382946c2a1e";
    })
    (pkgs.fetchurl {
      name = "BrewinAndChewin-neoforge-4.4.2+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/hIu9KJTT/versions/CKLYp96Y/BrewinAndChewin-neoforge-4.4.2%2B1.21.1.jar";
      sha512 = "ca6db594cc244307041b9f896956ad7dcba4727c62609a30aef9f913f5513238b7c898ecc39d4599385bdd177dea5c5de3149da34ab086217a307ab3f3e5aa06";
    })
    (pkgs.fetchurl {
      name = "CerbonsAPI-NeoForge-1.21-1.3.0.jar";
      url = "https://cdn.modrinth.com/data/GkIc6rRo/versions/5wbxkBQ1/CerbonsAPI-NeoForge-1.21-1.3.0.jar";
      sha512 = "6bd24b718d532cdd0c49150eefc223b4d7c3550bbc81d5c65ed84b704bf3c8e20d3cb3524082688383cc4aba38e190921976b056b84d5755670c5399a7c7e627";
    })
    (pkgs.fetchurl {
      name = "Chunky-NeoForge-1.4.23.jar";
      url = "https://cdn.modrinth.com/data/fALzjamp/versions/LuFhm4eU/Chunky-NeoForge-1.4.23.jar";
      sha512 = "2db769dd723f243a21e1881e7c9f825e9c193da6f2bed454b70cb6fa9e51c57f63fdcf017c0657bbd26f7bba30815413e27c74d3c7be0783390a96ee9baa4bf7";
    })
    (pkgs.fetchurl {
      name = "Clumps-neoforge-1.21.1-19.0.0.1.jar";
      url = "https://cdn.modrinth.com/data/Wnxd13zP/versions/jo7lDoK4/Clumps-neoforge-1.21.1-19.0.0.1.jar";
      sha512 = "314d8d8e640d73041f27e0f3f2cad7aad8b4c77dbd7fb31700ef7760362261f77085eed5289555c725d99c3f47a114e7290cd608f39c9f0f12ef74958463bdcc";
    })
    (pkgs.fetchurl {
      name = "Companion-1.21.1-NeoForge-6.1.1.jar";
      url = "https://cdn.modrinth.com/data/4w0EzGRW/versions/eOB43rJ0/Companion-1.21.1-NeoForge-6.1.1.jar";
      sha512 = "9ea754d6e87618a042b134d3e864a8155f99b12ef7aa13190cd646b7462429c13bff191368ae38062fd1de486339a94c4cbef06e7ccfd79f08f01420ee20eed6";
    })
    (pkgs.fetchurl {
      name = "ConnectorExtras-1.12.1+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/FYpiwiBR/versions/dgLCqZyo/ConnectorExtras-1.12.1%2B1.21.1.jar";
      sha512 = "ff9fc5d48a81e820c8c26b8a045e0ab7a3b0e9b5eaee7369b2eadb3f93d7eb423255073dfc327d131cb667df93be066560f3704b4cc8a12b07486b98a12bad1d";
    })
    (pkgs.fetchurl {
      name = "Corgilib-NeoForge-1.21.1-5.0.0.9.jar";
      url = "https://cdn.modrinth.com/data/ziOp6EO8/versions/nqrTa84r/Corgilib-NeoForge-1.21.1-5.0.0.9.jar";
      sha512 = "d5461d5fab247fe2d30ba5578c7768cf3c4c8758b155acb5c901913c22c43ddd6af6e7dbd5ae4cca8b106f7e2953b4427c0a97e53869861d64b0266c825d178b";
    })
    (pkgs.fetchurl {
      name = "CreateDragonsPlus-1.10.0b.jar";
      url = "https://cdn.modrinth.com/data/dzb1a5WV/versions/ew6gKsnx/CreateDragonsPlus-1.10.0b.jar";
      sha512 = "e54e40f1d0f005693a2a165f15a694482c44406ee34f1658d687ad0397f173227be42cc208bafd6706ad0be547b8ee85cbad5b52f17c7fa7216fb729d4e81684";
    })
    (pkgs.fetchurl {
      name = "CreateOPlenty-NeoForge-Create+6.0.7-3.0.jar";
      url = "https://cdn.modrinth.com/data/HgWaxodv/versions/k7AAVyW3/CreateOPlenty-NeoForge-Create%2B6.0.7-3.0.jar";
      sha512 = "758ef597ea2f1767d6f7a17bc6ea43c3a441b15fb8ff48d2bdcf71a7168f28e903d19c47547ac7fda3a02cd7c324ea7baab8ead18593b17a3799ae15642d77ec";
    })
    (pkgs.fetchurl {
      name = "Design-n-Decor-1.21.1-2.1.0.jar";
      url = "https://cdn.modrinth.com/data/x49wilh8/versions/m6PCLHcp/Design-n-Decor-1.21.1-2.1.0.jar";
      sha512 = "4aedb1e3a3fe67b391b5c877e094c6cbb5eb395b4f3173b860c90e2ea4e803d1367fd6593bb378184ad46991cf2d5c656444e60edebecf9887e053f29e9e5a9f";
    })
    (pkgs.fetchurl {
      name = "DiagonalFences-v21.1.1-1.21.1-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/IKARgflD/versions/bgR1e0O5/DiagonalFences-v21.1.1-1.21.1-NeoForge.jar";
      sha512 = "856e035193eb99264321e6d971881bad14baeb7196cb3ae75463457802dfb4d967eaec27a046e1290f074721fc1cd85d59adfd773a287b159a7baac1435c09d1";
    })
    (pkgs.fetchurl {
      name = "DiagonalWalls-v21.1.2-1.21.1-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/FQgc8dib/versions/2k3GCxEt/DiagonalWalls-v21.1.2-1.21.1-NeoForge.jar";
      sha512 = "69495235948a9786b6c99eac06cf2a406f478b4425f08699b205da667a3a8a7f9cd3e7ac643199a01487d3a7319b275e014d2a81885008845d2ec798664620f0";
    })
    (pkgs.fetchurl {
      name = "DiagonalWindows-v21.1.1-1.21.1-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/oOi0CKes/versions/IwUmOLxe/DiagonalWindows-v21.1.1-1.21.1-NeoForge.jar";
      sha512 = "fd335b7789321a1d0de9691d855c2bcc51d669f4614bdd2cd6fe17f7881f9dd39e63cb28c39a1a1798e98a6876ad1658ef2e3805e884f13e4650810611227849";
    })
    (pkgs.fetchurl {
      name = "DistantHorizons-3.0.3-b-1.21.1-fabric-neoforge.jar";
      url = "https://cdn.modrinth.com/data/uCdwusMi/versions/oYXIfeus/DistantHorizons-3.0.3-b-1.21.1-fabric-neoforge.jar";
      sha512 = "8b39994ee6c5d71b8afacc80c2d13dd92fad10281374392c0049d1b6aebc823d7e137125268dee7383d3ff753eacf708fbe87d773cf0087d7b6057a05cf18ad3";
    })
    (pkgs.fetchurl {
      name = "DungeonsArise-1.21.1-2.1.68-release.jar";
      url = "https://cdn.modrinth.com/data/8DfbfASn/versions/XIRJSFQ0/DungeonsArise-1.21.1-2.1.68-release.jar";
      sha512 = "cf87e06c8a49c9147fac2cf4d218d0e0eb56bb75819ab85f84ed7ae775bb3e259e2ebd5c423696d4d9026f6a69698babf5e7c82c74e480fbbf107359ef30a97e";
    })
    (pkgs.fetchurl {
      name = "DungeonsAriseSevenSeas-1.21.x-1.0.4-neoforge.jar";
      url = "https://cdn.modrinth.com/data/ZsrrjDbP/versions/erk04BGa/DungeonsAriseSevenSeas-1.21.x-1.0.4-neoforge.jar";
      sha512 = "14c9a833f85e343561547a5efb44a7f275b4e3fa97294ca36628c54b990a3634fb0df1223a127a02b5bdc5b113dfbfca46d76906b0efa3e797f0622cc14d3b50";
    })
    (pkgs.fetchurl {
      name = "DustyDecorations_1.21.1Neoforge_V1.13.jar";
      url = "https://cdn.modrinth.com/data/KgFOuaiZ/versions/vAhGaZOr/DustyDecorations_1.21.1Neoforge_V1.13.jar";
      sha512 = "a424b00b5ac9b2622c6310e65ab74e99e8360788591942095fcd6c0e754fd652b5d45eb02599ddb0249d821a6a61b7aa26edf71f7bd28c24462aace423ba5c25";
    })
    (pkgs.fetchurl {
      name = "Dynamic-Trees-for-Nature-s-Spirit-1.21.1-neoforge-1.3.jar";
      url = "https://cdn.modrinth.com/data/RenmoBVn/versions/h4NLmhR2/Dynamic%20Trees%20for%20Nature%27s%20Spirit-1.21.1-neoforge-1.3.jar";
      sha512 = "054e5fe10d5d19f564d6a3be0a0e21ca7440bc360ccb40ae91d5f5fdbe1206e50831cd339f34a030f46da0c2404e9b986e0d35a16f07e74b1d6c89362bf36cef";
    })
    (pkgs.fetchurl {
      name = "DynamicTrees-AddonLib-DTteam-neoforge-1.21.1-0.2.0-BETA03.jar";
      url = "https://cdn.modrinth.com/data/ju42L8G7/versions/88Ju5vgF/DynamicTrees-AddonLib-DTteam-neoforge-1.21.1-0.2.0-BETA03.jar";
      sha512 = "82dbca7afc8146234fdafce26a5ff7b3664781aef340d29aba5abe9547373b21f3b42ce7df1fc2c3a5ae957261eb1519eb5426ef0df51a3efe46fa781327a6f1";
    })
    (pkgs.fetchurl {
      name = "DynamicTreesPlus-neoforge-1.21.1-1.3.2.jar";
      url = "https://cdn.modrinth.com/data/qaO9Dqpu/versions/LX5fWOvU/DynamicTreesPlus-neoforge-1.21.1-1.3.2.jar";
      sha512 = "e5ccd43fb43c6d1417fcc070f87a15a606ed062415bd00e72a8fb8ea30b195f5a23f5629e17844e232368653f0cd2bfd48d77b71aedd46fe64a92e7e7c731a76";
    })
    (pkgs.fetchurl {
      name = "ExplorersCompass-1.21.1-3.4.0-neoforge.jar";
      url = "https://cdn.modrinth.com/data/RV1qfVQ8/versions/hIJ2Ev1Q/ExplorersCompass-1.21.1-3.4.0-neoforge.jar";
      sha512 = "a1b2e385aaacb547763441fc23e9a33a0b1d67bd32094cd605ded3fbdd1c7a0e5fc4520fdfa090c29d2d3384b685e3ead91b32d20030e45632c94145ee3ec668";
    })
    (pkgs.fetchurl {
      name = "Explorify-v1.6.4-f15-88.mod.jar";
      url = "https://cdn.modrinth.com/data/HSfsxuTo/versions/9vHj342y/Explorify%20v1.6.4%20f15-88.mod.jar";
      sha512 = "601ee61e3619ab6a929ff06e4e3db6cc480d97a19e5716ac40a2a325d2d609b857a1ac17f2c0ed2b242e662b5486f4e0f59584fbd47acd481b318c45c244254b";
    })
    (pkgs.fetchurl {
      name = "FallingTree-1.21.1-1.21.1.11.jar";
      url = "https://cdn.modrinth.com/data/Fb4jn8m6/versions/wxGXaJMA/FallingTree-1.21.1-1.21.1.11.jar";
      sha512 = "21876b270ca40e3ad6168423f2aba04460f590be191c5558d53e4f542993efa6070589029cb3218557309b096cd920e4da65e53f19687b86c638ec6c342d83e5";
    })
    (pkgs.fetchurl {
      name = "FarmersDelight-1.21.1-1.3.1.jar";
      url = "https://cdn.modrinth.com/data/R2OftAxM/versions/9gp7w8NC/FarmersDelight-1.21.1-1.3.1.jar";
      sha512 = "596340db019049e8da066df13cedb76eb06a8e877c86fd10b38332317b5fd5001cad485a6de87e3a8bf0423d87a1ffbdd51a86f6c06560f40995d68fe05edf95";
    })
    (pkgs.fetchurl {
      name = "FastItemFrames-v21.1.6-1.21.1-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/FsoeTIV0/versions/gAkkWcSn/FastItemFrames-v21.1.6-1.21.1-NeoForge.jar";
      sha512 = "3c8a0cf3909ecf63bb6d059ee899fd6a0a326fcd1be3395447da04b4ea2dde8e991b5ae2ebf5dbe6adad8e8be1b04dde152a5ac071cf24adce1ce90608dbfb4d";
    })
    (pkgs.fetchurl {
      name = "ForgeConfigAPIPort-v21.1.6-1.21.1-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/ohNO6lps/versions/tWlsPKJI/ForgeConfigAPIPort-v21.1.6-1.21.1-NeoForge.jar";
      sha512 = "902825abb4e46c070d12a1197af640894eb45ac29bfe5547162d6d3fc1a24fad9bb59dd4f06874690518bf1425ecffcb754feea9aed28d1f689cf9f53a339676";
    })
    (pkgs.fetchurl {
      name = "GlitchCore-neoforge-1.21.1-2.1.0.0.jar";
      url = "https://cdn.modrinth.com/data/s3dmwKy5/versions/8wmCpbQ2/GlitchCore-neoforge-1.21.1-2.1.0.0.jar";
      sha512 = "008ec969716ffa2a45bf74f8c44d2c28e16558688a71806670e307d29fa76a82daf4d2f990a4964345228a7ba77bdb8592d1572c723b7b06c8f9c3ffae63acdb";
    })
    (pkgs.fetchurl {
      name = "HopperTheHedgehog-2.1.0-1.20.5.jar";
      url = "https://cdn.modrinth.com/data/o8M31HQZ/versions/f6UDT2eq/HopperTheHedgehog-2.1.0-1.20.5.jar";
      sha512 = "f24a02af21b53907db8c561bbc430e9649fd835568195420c3e4580be5429915040b04d90bde045f4111e3bad8deb20df5dbe10b479d7e88a2bc214038609c48";
    })
    (pkgs.fetchurl {
      name = "IllagerInvasion-v21.1.6-1.21.1-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/jSV9w0J5/versions/9bEpNrvK/IllagerInvasion-v21.1.6-1.21.1-NeoForge.jar";
      sha512 = "5ad618c60d78ab9196ef386c63d5855f3eab2f90006156b786d5b4f4ea7e6bcc1fd9f61dfa45b7b2df44dd900fe9747c9ac1ccac6fdb11814e2f4a7e53d93107";
    })
    (pkgs.fetchurl {
      name = "Incendium_1.21.x_v5.4.4.jar";
      url = "https://cdn.modrinth.com/data/ZVzW5oNS/versions/7mVvV9Th/Incendium_1.21.x_v5.4.4.jar";
      sha512 = "ca897be9059ea691860715dac6c0ccd934720d7d42c8af45b95257e8f91a6c9470f506bfb9ef3c770e6a6c57e58885add2126150a35927848817433fd227ce0e";
    })
    (pkgs.fetchurl {
      name = "Jade-1.21.1-NeoForge-15.10.5.jar";
      url = "https://cdn.modrinth.com/data/nvQzSEkH/versions/yd8FKCmx/Jade-1.21.1-NeoForge-15.10.5.jar";
      sha512 = "678b998677a3d73f98f82dac4093893bfc8a3c2335ec627b4147811c381a040475decdb8db31cc3cbe600abb5a7a6dedcd356eed0ba471af0becdcf49bf5b137";
    })
    (pkgs.fetchurl {
      name = "JadeAddons-1.21.1-NeoForge-6.1.0.jar";
      url = "https://cdn.modrinth.com/data/xuDOzCLy/versions/Z9s9lM56/JadeAddons-1.21.1-NeoForge-6.1.0.jar";
      sha512 = "dcf1135718e74c55d4b01116c9955b88a8c8a5180e61dc51d292479aff3d2fff38c8ca0f1b4a6e42e54644f1c8907846a61799491df455b71541aa342d8b8896";
    })
    (pkgs.fetchurl {
      name = "Kiwi-1.21.1-NeoForge-15.8.3.jar";
      url = "https://cdn.modrinth.com/data/ufdDoWPd/versions/2flHQIzv/Kiwi-1.21.1-NeoForge-15.8.3.jar";
      sha512 = "3d0168a9189adf81002533421d183d83f75c30523be5499416ee430288e10175df0d43027435600f4c49d5fffffd0f78b86b2bef5bd67f82b1c494ba2f8b5536";
    })
    (pkgs.fetchurl {
      name = "Ksyxis-1.4.3.jar";
      url = "https://cdn.modrinth.com/data/2ecVyZ49/versions/kL32PN9Q/Ksyxis-1.4.3.jar";
      sha512 = "55b1ec940910a6c36fa40595b0d7b8617e3a817c55ecb2d5c1ee54c026936d6f1a4bbe63228c60ebf75195bb14f3c9128c913ba949df2c5877b9b99d21bab9a4";
    })
    (pkgs.fetchurl {
      name = "L_Ender-s-Cataclysm-1.21.1-3.27.jar";
      url = "https://cdn.modrinth.com/data/46KJle7n/versions/RM2acghH/L_Ender%27s%20Cataclysm%201.21.1-3.27.jar";
      sha512 = "dfc01042f30e3960e1a7db5d45b75971861b7c9a59a21f180ef6f7adc977004811b0c2e4c0ec2b492812ecaec00f7cb2ed3779ae9acf98c40d02e6f844bf1008";
    })
    (pkgs.fetchurl {
      name = "MoogsBountifulStructures-1.21-1.0.4.jar";
      url = "https://cdn.modrinth.com/data/Qnb1HbfK/versions/Akz9Vwj9/MoogsBountifulStructures-1.21-1.0.4.jar";
      sha512 = "dd14f2c9b6d851724c007c945270f7eaf15ef4aec2705d71bf9f7b35b41a4d6a87b148c5d1693042c5df9d5a54f3d90ed57743c9826230f970d84503f06de3bd";
    })
    (pkgs.fetchurl {
      name = "MoogsEndStructures-1.21-2.0.1.jar";
      url = "https://cdn.modrinth.com/data/r4PuRGfV/versions/66xhbndk/MoogsEndStructures-1.21-2.0.1.jar";
      sha512 = "bc6ebffe094c53dc4cdb1a0f7938ec679bdd3da4f2c47867ccc9195270fe8499afee052616e22d28493da13a53a71b6f1c34c3f12a6a7a02806a026c3b3b6e2f";
    })
    (pkgs.fetchurl {
      name = "MoogsMissingVillages-1.21-2.1.0.jar";
      url = "https://cdn.modrinth.com/data/spZb29SD/versions/AWz4Sd2h/MoogsMissingVillages-1.21-2.1.0.jar";
      sha512 = "33ec22eb3ff7eebab80a99d5dc61316031b03f2628274fb53a332bf691a757858a035f87074ae362eae6f812548aebc11efdb2d6a1ab8cc83f027e695a3bdb0c";
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
      name = "MoogsTemplesReimagined-1.21-1.1.0.jar";
      url = "https://cdn.modrinth.com/data/UNanzCXS/versions/FSSbRbVq/MoogsTemplesReimagined-1.21-1.1.0.jar";
      sha512 = "9daa9625e1134d59da5c4de12e97ff875af7dacb27235b0e4a68d4b75e441495f0e0e283aa0424633a2edc410234ab05ab8246aedf470d241b683fcd1e0c23e8";
    })
    (pkgs.fetchurl {
      name = "MoogsVoyagerStructures-1.21-5.0.9.jar";
      url = "https://cdn.modrinth.com/data/OQAgZMH1/versions/w8dck0sA/MoogsVoyagerStructures-1.21-5.0.9.jar";
      sha512 = "00e0129978efa67e619fadaed236de097b687612b9eefb7254c9c2e4fa449186c8ef4035ba17cf6792f3050703b1ee151858db81be0250d430aa9c9108485566";
    })
    (pkgs.fetchurl {
      name = "MyNethersDelight-1.21.1-1.10.2.jar";
      url = "https://cdn.modrinth.com/data/O53VhQoZ/versions/qBUSJw5Z/MyNethersDelight-1.21.1-1.10.2.jar";
      sha512 = "2d16064b7cbbc1ef829c731d7ede5c680709ac6fe808c5bf2122443aa17862f86860b9d61f42b39847bebe6dfff42b883696503b986a9c88c5b6dfa82cd5d0fe";
    })
    (pkgs.fetchurl {
      name = "NE-1.21.1-1.10.0.jar";
      url = "https://cdn.modrinth.com/data/2nz0kJ1N/versions/HFdNcDOl/NE-1.21.1-1.10.0.jar";
      sha512 = "aee671ce6c1bd0e637283fbe819c8f45acd8ade1f8cfe36a5a63cbaf7d4e919f040d4578bd6a7023d28b945c9ac539d88f11201412c3ee5f4c0aa8d8626035df";
    })
    (pkgs.fetchurl {
      name = "NaturesCompass-1.21.1-3.4.0-neoforge.jar";
      url = "https://cdn.modrinth.com/data/fPetb5Kh/versions/nFniEtJV/NaturesCompass-1.21.1-3.4.0-neoforge.jar";
      sha512 = "5314b536bcb9a594a9cf2bbd46c82468d17e1559bd6c00da9d91e96c0814f50416799a011705f0d184bd731dac3f03dec009c76fea3d02b3556a6013f9649014";
    })
    (pkgs.fetchurl {
      name = "NeoForge-Version-Serene-Seasons-Plus-1.21.1-4.2.3.jar";
      url = "https://cdn.modrinth.com/data/4Al4H3t9/versions/QiOlBGcz/NeoForge-Version-Serene%20Seasons%20Plus-1.21.1-4.2.3.jar";
      sha512 = "02273b48ff4180c379257b3cf48070a067949928de69c220178ef07f9760d5e9101a7e29a78ddc9289e8070ee3229bce63df4a3a9bef117bd1f6e16f70f7b009";
    })
    (pkgs.fetchurl {
      name = "NoChatReports-NEOFORGE-1.21.1-v2.9.1.jar";
      url = "https://cdn.modrinth.com/data/qQyHxfxd/versions/ZV8eL55E/NoChatReports-NEOFORGE-1.21.1-v2.9.1.jar";
      sha512 = "292a3623b5addb17e9f15681a4f2534562e9882ef809e504f49da4778fafc12e21a71995b5d05554d435201f401ace1e86af50e6e26f6ce9d203a5896a1ece21";
    })
    (pkgs.fetchurl {
      name = "Not-Enough-Recipe-Book-NEOFORGE-0.4.3+1.21.jar";
      url = "https://cdn.modrinth.com/data/bQh7xzFq/versions/8SBaRv1t/Not%20Enough%20Recipe%20Book-NEOFORGE-0.4.3%2B1.21.jar";
      sha512 = "544f83caec2e894e7422571f154bb5a470e9156d5b5b70e6352c754f1bac47ac2c055893064faae2d05ca3a8bef699343c851c925c2c1f8c3ace7de38cfd67ed";
    })
    (pkgs.fetchurl {
      name = "Nullscape_1.21.x_v1.2.14.jar";
      url = "https://cdn.modrinth.com/data/LPjGiSO4/versions/3fv8O3xX/Nullscape_1.21.x_v1.2.14.jar";
      sha512 = "b35a9dfdc7180ca851aea378ee4687e18b3aae717c16870a7762afc67dc0c77598fb2c4a62cb12d6ed0eacf7c9166520e0a3e7dce20da09817065d27e62c8b44";
    })
    (pkgs.fetchurl {
      name = "OctoLib-NEOFORGE-0.6.1+1.21.jar";
      url = "https://cdn.modrinth.com/data/RH2KUdKJ/versions/AbiyvpxR/OctoLib-NEOFORGE-0.6.1%2B1.21.jar";
      sha512 = "6e0194da00ae7cc1e67f0033b97965acc460edaa86e204e5f8498ea83be94a2019cb5a3254e07b59562e66297f12f3ea2262f9f0005a52c12b9a680b6f218c4d";
    })
    (pkgs.fetchurl {
      name = "Oh-The-Biomes-Weve-Gone-NeoForge-2.5.5.jar";
      url = "https://cdn.modrinth.com/data/NTi7d3Xc/versions/6cLkgRgD/Oh-The-Biomes-Weve-Gone-NeoForge-2.5.5.jar";
      sha512 = "c71db94abe31f563f44b6384cdf562ed32fe93d27d7b9dbe6b0e85e043b0da7373bd49c1f430ff4fed81da1c6bece04cfba66ab53407a834d307f241b6ddd596";
    })
    (pkgs.fetchurl {
      name = "Oh-The-Trees-Youll-Grow-neoforge-1.21.1-5.3.1.jar";
      url = "https://cdn.modrinth.com/data/g8NOG5OR/versions/oOXz8pIt/Oh-The-Trees-Youll-Grow-neoforge-1.21.1-5.3.1.jar";
      sha512 = "270717185efecd7a29e6673a45bee36edd917ab08388dca28ae97417cbdd57807c7bfa058a02bdcd37e766de1a59d959cbe4b6bb136576277f40857a4c43052c";
    })
    (pkgs.fetchurl {
      name = "OverweightFarming-1.21.1-2.2.0-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/bCxmmxKN/versions/9w8TG5JN/OverweightFarming-1.21.1-2.2.0-NeoForge.jar";
      sha512 = "32aaa8a506019ceefc9e6dfda2617b217911b92e25d11451d5afb7f022c0ad7274045e31230667421f1837193c04bd87dda0a80bf7ab0774c3fa96870f84a97a";
    })
    (pkgs.fetchurl {
      name = "Platform-neoforge-1.21.1-1.3.jar";
      url = "https://cdn.modrinth.com/data/i6fiqm5y/versions/XGtKmpbq/Platform-neoforge-1.21.1-1.3.jar";
      sha512 = "cb1b54f4f5273eec00d7a08d8c4b8a27523812442cae340191c0ea576868962f63af077ac3da955c24722862d6e3e51610dafa6490ba512ead8c79450fcb76b5";
    })
    (pkgs.fetchurl {
      name = "PuzzlesLib-v21.1.39-1.21.1-NeoForge.jar";
      url = "https://cdn.modrinth.com/data/QAGBst4M/versions/EgWWSAhJ/PuzzlesLib-v21.1.39-1.21.1-NeoForge.jar";
      sha512 = "84bac5cddae511234eea4387d34a96cc961a0e7d23b8c1ab17523b9762bee96a6aa132f57a417e5bc679565439784c268b92ee8d353e4b26f86d3ef5e1c5453b";
    })
    (pkgs.fetchurl {
      name = "Quad-1.2.9+1.21.1-Neo.jar";
      url = "https://cdn.modrinth.com/data/7jzrCiK0/versions/sTJ6hLWf/Quad-1.2.9%2B1.21.1-Neo.jar";
      sha512 = "ca9f276118ea9872c15c7ffbe794064b22eef1897204567475862455afce9dcfc25da1fb92f8d5420a1710b0f445386df6cde03e8d042c9b374dd666f0ae7fdf";
    })
    (pkgs.fetchurl {
      name = "Revamped-Shipwrecks-1.1.0.jar";
      url = "https://cdn.modrinth.com/data/ZnZ8uqXN/versions/olo0Q6nb/Revamped%20Shipwrecks%201.1.0.jar";
      sha512 = "ba3b2792359b37bc1918144969211bfa08f7a66b85357640d872985e78a79c45fcc4a2a1bf9093f27f6dcf595fb25bcf99241a7500c95ca1307256c70a946b21";
    })
    (pkgs.fetchurl {
      name = "RuntimeTrims-1.0.6-neoforge+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/eRg6mpBy/versions/fCsbN0SK/RuntimeTrims-1.0.6-neoforge%2B1.21.1.jar";
      sha512 = "bf0498ff9f4c9827403541b648a95ed2330ea562728257595080e4edf329c1d3266e7f6d2dfb05b8a66d1ed679fa485247921f1bdda5b317a21a493f3b25f65d";
    })
    (pkgs.fetchurl {
      name = "SereneSeasons-neoforge-1.21.1-10.1.0.3.jar";
      url = "https://cdn.modrinth.com/data/e0bNACJD/versions/SPj5bJoM/SereneSeasons-neoforge-1.21.1-10.1.0.3.jar";
      sha512 = "8d6c2712019da586c9f3a1372f2951173cd5f7a821645ffa03e4448e56f6b277aab0651307e1d4d9e0944cb02d32b2caff581bde912cb21fc6fd7b7d84655b8c";
    })
    (pkgs.fetchurl {
      name = "SnowRealMagic-1.21.1-NeoForge-12.2.1.jar";
      url = "https://cdn.modrinth.com/data/iJNje1E8/versions/39KBx8YI/SnowRealMagic-1.21.1-NeoForge-12.2.1.jar";
      sha512 = "c83b6ae690fc8acb95eb30249de6487dfd73031178032211d493c7010f0c50529d74cffe52ea168c068f3ece829f320336e265b106988c06efcf6094f35dac2e";
    })
    (pkgs.fetchurl {
      name = "Structory_26.1_v1.3.16.jar";
      url = "https://cdn.modrinth.com/data/aKCwCJlY/versions/Nvh2sSPX/Structory_26.1_v1.3.16.jar";
      sha512 = "c3528d32c888d5b57cd14d1cf085ceeb567457e770b021dcedfe4475e36e16522cea5796ccb84a6467801d6f3c8d054feefa4a6bac5c4a91b1e8350ad736912d";
    })
    (pkgs.fetchurl {
      name = "Structory_Towers_26.1_v1.0.16.jar";
      url = "https://cdn.modrinth.com/data/j3FONRYr/versions/ioKwCTuD/Structory_Towers_26.1_v1.0.16.jar";
      sha512 = "d8a5602b82f4dcfb3f0ce29d11b658a6d141d67b8363290a68e965c9da016b79e8daa5e20627537833d59f12f4f67732a1d692772382d544b6ec8c013b689da8";
    })
    (pkgs.fetchurl {
      name = "TaxFreeLevels-1.4.7-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/jCBrrLTs/versions/eD8qmM43/TaxFreeLevels-1.4.7-neoforge-1.21.1.jar";
      sha512 = "f02e7c8ba0aacca9a04db0861fb61e3940cba767a77fea347f65f86fd9443a52cfee85d96678bdf2cb935970eb98c8573673d03b1263e0b6f6bcdfbd9ecc39b5";
    })
    (pkgs.fetchurl {
      name = "TerraBlender-neoforge-1.21.1-4.1.0.8.jar";
      url = "https://cdn.modrinth.com/data/kkmrDlKT/versions/6e8GCrLb/TerraBlender-neoforge-1.21.1-4.1.0.8.jar";
      sha512 = "9d4b2a1be5139c0fb2fad92ed21805b17d9e83b6ea48e637e018bb14063c1823a206390755dbfe8d025c20fd62ac11cdd84db53ddb956dabaeda01bff57bac50";
    })
    (pkgs.fetchurl {
      name = "Terralith_1.21.x_v2.5.8.jar";
      url = "https://cdn.modrinth.com/data/8oi3bsk5/versions/MuJMtPGQ/Terralith_1.21.x_v2.5.8.jar";
      sha512 = "f862ed5435ce4c11a97d2ea5c40eee9f817c908f3223b5fd3e3fff0562a55111d7429dc73a2f1ca0b1af7b1ff6fa0470ed6efebb5de13336c40bb70fb357dd60";
    })
    (pkgs.fetchurl {
      name = "ThirstWasTaken-1.21.1-2.1.5.jar";
      url = "https://cdn.modrinth.com/data/iUheEnjm/versions/YqPoqXIx/ThirstWasTaken-1.21.1-2.1.5.jar";
      sha512 = "8f6fb11312cb057bcdf018baf9b99ca66523ef4a34576856e3af9d06fbf14749257399aabfe44ff8f8b490799ba89b9b03157e85145465a3f710393964127ef5";
    })
    (pkgs.fetchurl {
      name = "VanillaBackport-neoforge-1.21.1-1.1.6.3.jar";
      url = "https://cdn.modrinth.com/data/6xwxDTgf/versions/TJ1RI2mA/VanillaBackport-neoforge-1.21.1-1.1.6.3.jar";
      sha512 = "dea48d0be304269af459d429a6a048a6a73260cd8f1400d262a96e85d493639992658df174fd6ae4347fd742051244ef4b3c593348f27a727cb7af314b1a4dcd";
    })
    (pkgs.fetchurl {
      name = "YungsApi-1.21.1-NeoForge-5.1.6.jar";
      url = "https://cdn.modrinth.com/data/Ua7DFN59/versions/ZB22DE9q/YungsApi-1.21.1-NeoForge-5.1.6.jar";
      sha512 = "5f36d5166a67a156df52699071f20219bc2320b3c4fbcd9dac38631f66136f034e3219ac89ff4bfb6e26e4c68513a94c833797f2e5ed5bf58cfa1531eeed162d";
    })
    (pkgs.fetchurl {
      name = "accessories-neoforge-1.1.0-beta.53+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/jtmvUHXj/versions/Fb55Fgjz/accessories-neoforge-1.1.0-beta.53%2B1.21.1.jar";
      sha512 = "baafa9a5e48c17c243d45b6260095ffef2ad00e4e970aafc5b1ca9ab5f4a542b18b0fb35d4584318791edbaf00a3c44806f62062513d991383192aca4df27a07";
    })
    (pkgs.fetchurl {
      name = "accessories_compat_layer-neoforge-0.1.12+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/ySnjMzLg/versions/JMgVNypu/accessories_compat_layer-neoforge-0.1.12%2B1.21.1.jar";
      sha512 = "f729c4e1c069182aac89805551a056b937e17fd6d9c031b14a6003b5c4fac609563f2c3d6786fe56ecfb62a1094124e68b2e4fb6e2612818d899d3bac181c215";
    })
    (pkgs.fetchurl {
      name = "accessorify-2.4.0-beta.5+1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/CVRzrXGP/versions/IuFUIaK4/accessorify-2.4.0-beta.5%2B1.21.1-neoforge.jar";
      sha512 = "d5d8fc3e1450d358feef5d0fc0ec9c626d3142264895e447db8438c33e2bc2472fff91728ded1b9ac7eb2bdecebc39fcd32098d650474989c532a0d4fd378171";
    })
    (pkgs.fetchurl {
      name = "adorabuild-structures-2.11.0-neoforge-1.21.3.jar";
      url = "https://cdn.modrinth.com/data/rYlnn25U/versions/l7GS6bZj/adorabuild-structures-2.11.0-neoforge-1.21.3.jar";
      sha512 = "9e7e3f65dce3cf9216939bd81ca44412ddb7992ddfda33b8fdc444eda6c0b86b2072d5fc93c26ac399e961a15d07b35d290214b92abcda7721676c4cb87e5864";
    })
    (pkgs.fetchurl {
      name = "advancednetherite-neoforge-2.3.1-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/CFX9ftUJ/versions/tsu9b2K9/advancednetherite-neoforge-2.3.1-1.21.1.jar";
      sha512 = "e5750002f1780b6c7effd0258f6ca37d0f4a8db134c172b9ff54dcb9d0a83e6bd2452bd449ace8aefc9d425d178709376d2c82c7b424cb61b3a58e9952056f08";
    })
    (pkgs.fetchurl {
      name = "almostunified-neoforge-1.21.1-1.4.1.jar";
      url = "https://cdn.modrinth.com/data/sdaSaQEz/versions/vvzNMESp/almostunified-neoforge-1.21.1-1.4.1.jar";
      sha512 = "cb96a81a3bd4291113655097f66f5b0944b0fcf049bac663b0116b639b0989dbf5701d3ffa191df2735bd9af18bd66bca5e206bd2367b2b2dd143ee989284a81";
    })
    (pkgs.fetchurl {
      name = "anvilrestoration-1.21.1-2.4.jar";
      url = "https://cdn.modrinth.com/data/bd8nwTGy/versions/s2Ff8GFL/anvilrestoration-1.21.1-2.4.jar";
      sha512 = "2ca18c9fa3ff32ce5481bce87dec5c213fba81865eee34b7771f41dde877c5a916044fc4d4e013343feef394bb2391bbac30f0d4c9b929196223761c58598f1e";
    })
    (pkgs.fetchurl {
      name = "appleskin-neoforge-mc1.21-3.0.9.jar.disabled";
      url = "https://cdn.modrinth.com/data/EsAfCjCV/versions/uAKA6Laj/appleskin-neoforge-mc1.21-3.0.9.jar";
      sha512 = "f4ea46273e407334b63e262e2555c9a8204f7b5e60f23f272fbaa83ad9e88800e0ee186aca840710df2dbe0a18b37758695fef2ae1a902c10b3706e3de772937";
    })
    (pkgs.fetchurl {
      name = "architectury-13.0.8-neoforge.jar";
      url = "https://cdn.modrinth.com/data/lhGA9TYQ/versions/ZxYGwlk0/architectury-13.0.8-neoforge.jar";
      sha512 = "65e3664953385d880320dd6bb818bcb96d361c07c53e2a7f65e64c6a47720ee26b233224ae9cad465ef0b2bbaefdaf30fb0175a983cecd91de058817d6fcf57e";
    })
    (pkgs.fetchurl {
      name = "artifacts-neoforge-13.2.1.jar";
      url = "https://cdn.modrinth.com/data/P0Mu4wcQ/versions/rGPw090r/artifacts-neoforge-13.2.1.jar";
      sha512 = "4e5ccc2733e2ede833e6c4ae6b44751eab5ac48857055b61fdcbb6434c7d867c17b438eea9f226f6af652ee397f3fb4d7583f263a5d706d730ff7243ace865dc";
    })
    (pkgs.fetchurl {
      name = "astikorcartsredux-1.2.2.jar";
      url = "https://cdn.modrinth.com/data/mnLFouB0/versions/6t5FXuOX/astikorcartsredux-1.2.2.jar";
      sha512 = "c3cbee867aa4ef73606105247c9c1106dfcb7d3e9f6bf387f3285ba1425f9d9966beb335fc01c8d314a56251933dcc712384eb4b6953fa948a0191b915f5e9ea";
    })
    (pkgs.fetchurl {
      name = "async-locator-refined-neoforge-1.21.1-1.5.3.jar";
      url = "https://cdn.modrinth.com/data/LUIHK4LD/versions/3BdGHbV2/async-locator-refined-neoforge-1.21.1-1.5.3.jar";
      sha512 = "fd11ad8ca6a9149fe9ab8819e07c033142a270bef3ad6513a440872bc4acc2e383d62f586fd1675d49d843366aed0edbab6bfad438553f85b3051f1e1575b4cd";
    })
    (pkgs.fetchurl {
      name = "attributefix-neoforge-1.21.1-21.1.3.jar";
      url = "https://cdn.modrinth.com/data/lOOpEntO/versions/TyNITLDY/attributefix-neoforge-1.21.1-21.1.3.jar";
      sha512 = "09e1ff6012d5b7bef7bb701d38feaaab41db4f2fc8b9f669b820fc2c91e53098e093e401062ad80a0ce249c68aa7a6209ac9ee341518b8f640bae2393b1595ae";
    })
    (pkgs.fetchurl {
      name = "baguettelib-1.21.1-NeoForge-2.0.3.jar";
      url = "https://cdn.modrinth.com/data/OfKzpbRU/versions/guIAbyuH/baguettelib-1.21.1-NeoForge-2.0.3.jar";
      sha512 = "3def04f7f11ba743516594b69250ca7c54c11e0c4ffeeb718bfd9736096bfb25768642eb210f6cf716f33b8c12faf2e998df2db98cf495f0527620e8bec80a79";
    })
    (pkgs.fetchurl {
      name = "balm-neoforge-1.21.1-21.0.57.jar";
      url = "https://cdn.modrinth.com/data/MBAkmtvl/versions/XC1JUHmA/balm-neoforge-1.21.1-21.0.57.jar";
      sha512 = "433178c6c70a87dfe0b057323b3df4dfc00aca317d37634bfc53ff6dfa6cb8601e9d9fe773cb3491bbde46489d8b918f58ed1ae735357106466cfbc594334645";
    })
    (pkgs.fetchurl {
      name = "barbequesdelight-1.3.0.jar";
      url = "https://cdn.modrinth.com/data/rtu7uERF/versions/rvUhMw6d/barbequesdelight-1.3.0.jar";
      sha512 = "27d8338f862934a2eb7efb62cffcbba6675c00e4dcd1b66a482ad3a07d68aafe9f9e320525da50314cdbdc59d7b0b71d3f72b830b1f32d9f2c14293a62d54815";
    })
    (pkgs.fetchurl {
      name = "bclib-21.0.20.jar";
      url = "https://cdn.modrinth.com/data/7bdKEtKC/versions/sH6onskf/bclib-21.0.20.jar";
      sha512 = "fb69f4f8c2cd4cc86e611f8fa83856351edd507d9c8998fb84f4ead478afbeaeac4a45b04f36eefcd16117ce987f61d90a6c4d66f388eb626a476e5682b6a970";
    })
    (pkgs.fetchurl {
      name = "beautify-neoforge-1.21.1-2.0.2.jar";
      url = "https://cdn.modrinth.com/data/9BPuv4vL/versions/xVfv1ket/beautify-neoforge-1.21.1-2.0.2.jar";
      sha512 = "e48161fc0c3a7ef916154a9885fcae7f6666a4aa14e75b874e3f0d1b3afef6a298413a51f25ec7c63c3692ffb15ad4885b210e26f9f1a7d4b701e6f912495c09";
    })
    (pkgs.fetchurl {
      name = "bellsandwhistles-0.4.7-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/gJ5afkVv/versions/w0mifib8/bellsandwhistles-0.4.7-1.21.1.jar";
      sha512 = "482ee096477b89ed8ec5ce008a4a8ac0ae853079a4f5ce16ad0e0dd9b2eb12b3326f17acaaca1eae0bc51ad238f4e51c8d5b93ded71fe7240717ac8600041c59";
    })
    (pkgs.fetchurl {
      name = "better_gold_equipment-1.0.2-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/xQGX3YLJ/versions/4Nl8U8E0/better_gold_equipment-1.0.2-neoforge-1.21.1.jar";
      sha512 = "60c987d0d9d876c4ef1442e21cfa2b52bb4e268eb7232f7283a2f56876a627f9e802fda3359266b9b7cbe6b6104b13310d5ae294228fbc2588a6f07174c5dc55";
    })
    (pkgs.fetchurl {
      name = "betterdays-1.21.1-3.3.6.3-NEOFORGE.jar";
      url = "https://cdn.modrinth.com/data/tPLE214j/versions/Ho93yCC3/betterdays-1.21.1-3.3.6.3-NEOFORGE.jar";
      sha512 = "0eb11977abb06a0c36764019a9299347480bfc728233a2df4e968b368487626728d546ade45a2edcb0e620485189e440c22fc7a99671888a86367514551ac78d";
    })
    (pkgs.fetchurl {
      name = "betterend-infusions-extra-compatibility-1.0.0.jar";
      url = "https://cdn.modrinth.com/data/wvD11Diw/versions/MwmNjqpe/betterend-infusions-extra-compatibility-1.0.0.jar";
      sha512 = "565820831c1ef0f622fa8b8866ee8810d3aea9964ecd3f5a37458414d5da35536b6ccaf75884d1a9b668a46dc0c2c5386e1dc5df0d7f49e8ff02b915477bf819";
    })
    (pkgs.fetchurl {
      name = "betterspawnercontrol-1.21.1-4.7.jar";
      url = "https://cdn.modrinth.com/data/hmAeYRJT/versions/ABKjxHEJ/betterspawnercontrol-1.21.1-4.7.jar";
      sha512 = "6352dc57e74c2d7cbf5c4abe9a90fcdbdf2b00759820aff270c59ce8c820b7f3ab168ce7853479f82a2d1e77207af207fd249db2490f080fd534d93a51c9c8d2";
    })
    (pkgs.fetchurl {
      name = "betterstats-3.13.9+fabric-1.21.jar";
      url = "https://cdn.modrinth.com/data/n6PXGAoM/versions/YDvjPyKn/betterstats-3.13.9%2Bfabric-1.21.jar";
      sha512 = "30b4088c73181077358ec8f5ea0da6021711e408c9022df8c163171f52d48d3dff125886ead03929cd553f9d18aa8da16cb599e26da3e6ff1fb2e6828ddbff62";
    })
    (pkgs.fetchurl {
      name = "bettertrims-4.0.4+1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/98ytUvlc/versions/GnrrdYj6/bettertrims-4.0.4%2B1.21.1-neoforge.jar";
      sha512 = "05d0c088133c5b882f61c3018c86a53c11324cba70421c29cde91dcddf31f9ca577600dfba1edaf9509a2a15e48bc36f457191bff77553dfae0a7138bfdf46a7";
    })
    (pkgs.fetchurl {
      name = "biolith-neoforge-3.0.10.jar";
      url = "https://cdn.modrinth.com/data/iGEl6Crx/versions/byVGeYWw/biolith-neoforge-3.0.10.jar";
      sha512 = "cc3c37d53af4c0dec19dd7b2cff5c3145e1d97993fb52969288d4d00a2a11dd5f118d5501fec128125f429189556476bc5ba45d20b580fa18bbfd722617f6041";
    })
    (pkgs.fetchurl {
      name = "birdsboids-1.3.1.jar";
      url = "https://cdn.modrinth.com/data/CvX6rOtB/versions/kUcR0o7l/birdsboids-1.3.1.jar";
      sha512 = "c18255c7f82ca95af640b7e2090d0bf15d39339a026745a5b60843d9e08ec9736cdf5df74174d7b25cfe186f7b8355d8bccd02ba100c8339ac185a7a11e1ba89";
    })
    (pkgs.fetchurl {
      name = "bookshelf-neoforge-1.21.1-21.1.81.jar";
      url = "https://cdn.modrinth.com/data/uy4Cnpcm/versions/1sdJl7J1/bookshelf-neoforge-1.21.1-21.1.81.jar";
      sha512 = "78d4577a8e8fbb241216968475dd73f5b9e5efeb7da802b18a4e6c290e49af6cb4a5676e9855d0d8ff3613f967812e4bd363bbb9196c17c954d19454f84b2214";
    })
    (pkgs.fetchurl {
      name = "bookshelfinspector-neoforge-2.1+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/rOrXjyPb/versions/U7JA8ltl/bookshelfinspector-neoforge-2.1%2B1.21.1.jar";
      sha512 = "f5b2f7e313b5acb81efbf7d909db41a3456b825862ae4357020958f090dbddc702497fad2d541fd4fba4927ee5e41f33bee5c32a8dacae0f8287a7f7952a6218";
    })
    (pkgs.fetchurl {
      name = "bop_rose_quartz_sanding_neoforge-1.0.jar";
      url = "https://cdn.modrinth.com/data/YjQL8nJT/versions/zIkFZdjK/bop_rose_quartz_sanding_neoforge-1.0.jar";
      sha512 = "63d14284f4ca364e5ab2174e33bb5bae3268e71cc7679bc3f60f6f7baacdf669e66cd1dfdf730fee1848ce7fe21fbfbd0145d58c5c9f74fc23ed779a4440b448";
    })
    (pkgs.fetchurl {
      name = "bountiful-neoforge-8.0.0-beta.2.jar";
      url = "https://cdn.modrinth.com/data/BpwWFOVM/versions/swTb6NU9/bountiful-neoforge-8.0.0-beta.2.jar";
      sha512 = "a30c55813348a1f1f2869996e627f7357b9a47de478c477ef02b767d36a33f4ffad8836c60974146d4c6be3e75e42eba9285a84ad95e544c6f0549a12ceb08fb";
    })
    (pkgs.fetchurl {
      name = "c2me-neoforge-mc1.21.1-0.3.0+alpha.0.91.jar";
      url = "https://cdn.modrinth.com/data/COlSi5iR/versions/9iPiN34N/c2me-neoforge-mc1.21.1-0.3.0%2Balpha.0.91.jar";
      sha512 = "9e0bc6fe17ebbaaec9999c5f742e6e0eb50abd9eea578a76e15ed411adebe8cdf9d17224493ffdc17f16d46bad52efe10efebfb998e346997b03cb5edd144c3f";
    })
    (pkgs.fetchurl {
      name = "calcmod-1.3.2+fabric.1.21.jar";
      url = "https://cdn.modrinth.com/data/XoHTb2Ap/versions/LE8aEZ5E/calcmod-1.3.2%2Bfabric.1.21.jar";
      sha512 = "cd6e2859661f2020a52d1f61596e1db8156af69cf8879cf297237cb80ea5a955c1cb9eb6ee4fd59c3538411779d121fab0333b9e915f863e9c605a89b6bb74fb";
    })
    (pkgs.fetchurl {
      name = "caravans-neoforge-1.21.1-2.1.1.jar";
      url = "https://cdn.modrinth.com/data/8jJHxtdz/versions/LoE1S6Fk/caravans-neoforge-1.21.1-2.1.1.jar";
      sha512 = "778d963a6ade763d3dd493907745e4aaf35210d4cb7da1cf21c3c39e541c7755efefd667f2a28d86d1e5b0de40dc921de0c9c32a76366f9217973b0accdada7e";
    })
    (pkgs.fetchurl {
      name = "cbc_at_Neoforge_1.21.1_0.1.4c.jar";
      url = "https://cdn.modrinth.com/data/pTfszyXD/versions/ds01YFge/cbc_at_Neoforge_1.21.1_0.1.4c.jar";
      sha512 = "5e94655294b568e08e7d04de7ce369811baad3c01355a614e04933c5c46e6f33700cc44688e9038b61ded245c8bb1cd0c01d14ab8369898ac3a0dfb263a7deed";
    })
    (pkgs.fetchurl {
      name = "cbc_going_ballistic-0.1.1.jar";
      url = "https://cdn.modrinth.com/data/xxaCKdq3/versions/UOSyKzPr/cbc_going_ballistic-0.1.1.jar";
      sha512 = "31d3d1ef6d665c352fc724abb30563351258ed9dec958006607674aaa259799d29dcf3734dac59d4a57f595a9375ff69269e4e4d5f527372dd44ace13d0509d6";
    })
    (pkgs.fetchurl {
      name = "cc-tweaked-1.21.1-forge-1.118.0.jar";
      url = "https://cdn.modrinth.com/data/gu7yAYhd/versions/tufB2KsB/cc-tweaked-1.21.1-forge-1.118.0.jar";
      sha512 = "191f2d88e4760343c141fac1c14239215dadffcacd934767e4d796a97fe09c43cde3b819a4137ab502db0f9995ee11cac3cff805d7c602241798e5cf155cb743";
    })
    (pkgs.fetchurl {
      name = "cc_sable-neoforge-1.2.3.jar";
      url = "https://cdn.modrinth.com/data/OPNBxiZD/versions/RPIcIbOf/cc_sable-neoforge-1.2.3.jar";
      sha512 = "83cc13851f0e6056158dd8e29e3518775cd1a4d087b627f2e273be65ce78e8b70c436e4cca6c01e57f332f89f08b82e42fff0955bbafe650993f052fcacaecbe";
    })
    (pkgs.fetchurl {
      name = "ccbr-1.2.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/WZfuGM1m/versions/UcvDwdvO/ccbr-1.2.0-neoforge-1.21.1.jar";
      sha512 = "53af168c2635d716476c71747c4df7a968d01657cc55aeccadf04c95a8b9adf598c91d4254576bd6c963c05edbd917362b475ec37c31bdd6a8ba31bd9f3cc26a";
    })
    (pkgs.fetchurl {
      name = "chefsdelight-1.0.5-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/pvcsfne4/versions/csBO1q5h/chefsdelight-1.0.5-neoforge-1.21.1.jar";
      sha512 = "ea8bb83fd10a9936d52c72b7952ab46674ca3426d741a7e42f301df19e1474b47594ab9ad1b8b424011305f58146522afe4e991d79920a59f7ff066dd9ae620a";
    })
    (pkgs.fetchurl {
      name = "chunkactivitytracker-neoforge-1.0.1-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/BNuR43mM/versions/ezAcslcX/chunkactivitytracker-neoforge-1.0.1-1.21.1.jar";
      sha512 = "353d240170fc3c37d7445b20579f814522bfa4526de57b9f26aef4cc5b1d48710ee0d675b5cb9fc4489815f5992f4ca6f0d1479b2fad9d03f7184ce8dd292273";
    })
    (pkgs.fetchurl {
      name = "cloth-config-15.0.140-neoforge.jar";
      url = "https://cdn.modrinth.com/data/9s6osm5g/versions/izKINKFg/cloth-config-15.0.140-neoforge.jar";
      sha512 = "aaf9b010955b8cd294e5a92f069985b18729fd5e2cf22d351f1dff9680f15488688803ec41e77e941cbde130ceb535014ca4c868047d80ab69c2d508e216654d";
    })
    (pkgs.fetchurl {
      name = "collective-1.21.1-8.22.jar";
      url = "https://cdn.modrinth.com/data/e0M1UDsY/versions/6xEh8Qbr/collective-1.21.1-8.22.jar";
      sha512 = "e598ce7f8bd822fa8a5ffa21c45fa1a14716191b6791ab8cdb96a66b4647483c1b6e2c4e38ba13a2ff5e97a93d851cb9000985a0f2dc7034391811fbbdcfe9a9";
    })
    (pkgs.fetchurl {
      name = "compatdatapacks76-1.0.13.210-neoforge.jar";
      url = "https://cdn.modrinth.com/data/WcHRLVFE/versions/qfJRc6cQ/compatdatapacks76-1.0.13.210-neoforge.jar";
      sha512 = "e1c1fec7c8efe3ffc32b6941f23be53d3d656617e89294a6abca2076a67ad5faf0bc918f58ebe797b7619b1aeed231af8873de745d40b38238e1a70986899a9a";
    })
    (pkgs.fetchurl {
      name = "compatdelight-1.0.1.1.jar";
      url = "https://cdn.modrinth.com/data/iNJJU8Ib/versions/lBjjKnwQ/compatdelight-1.0.1.1.jar";
      sha512 = "b3b0693287a939db42836d176512081583655fab902a6afabbe8d77a37308e51a0057bb937a44618e77b12efbfd69cf75284865237428a6c08c7012a761c268c";
    })
    (pkgs.fetchurl {
      name = "configurable-3.5.1+1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/lGffrQ3O/versions/WYcVbsBw/configurable-3.5.1%2B1.21.1-neoforge.jar";
      sha512 = "2b8b1f2e3711e4a23f8da0f0941e8cb03fd558113f164b807611b2c6728fa6390c8a78f9ae45bebbe025843f286b55e3ed318637b7cfa49f23b7a43944638d61";
    })
    (pkgs.fetchurl {
      name = "connectiblechains-2.5.7+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/ykSfIgTw/versions/bix8ndct/connectiblechains-2.5.7%2B1.21.1.jar";
      sha512 = "cc07ecea73147645a8a61f85a0d50ae0c090ecd58ad083f8d4bb187fc722c4bca15d63f7ffb084cf1c9cb88c39c214615dfb2577f1b624f83fef3d854ca30bba";
    })
    (pkgs.fetchurl {
      name = "connector-2.0.0-beta.14+1.21.1-full.jar";
      url = "https://cdn.modrinth.com/data/u58R1TMW/versions/1i8teo7m/connector-2.0.0-beta.14%2B1.21.1-full.jar";
      sha512 = "6ed3168c2c7dad2606ada1fdf63ee412bb8bb5620718a702f6ac51310e671f2f93ab46fc96400e258f4433e51b96f9dd21441e1a8963d8b356c75b578e156dcc";
    })
    (pkgs.fetchurl {
      name = "copycats-3.0.4+mc.1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/UT2M39wf/versions/kecZ0sl7/copycats-3.0.4%2Bmc.1.21.1-neoforge.jar";
      sha512 = "ecc98e659be66a71af0aee66a9f4c7c8838f4f0101402644929079ce7280a572a000e7e417905e1869a51d6e49ebbd601008f54585e07ee4ed01f2c4bc752bfe";
    })
    (pkgs.fetchurl {
      name = "corpse-neoforge-1.21.1-1.1.13.jar";
      url = "https://cdn.modrinth.com/data/WrpuIfhw/versions/Zwf8nv8y/corpse-neoforge-1.21.1-1.1.13.jar";
      sha512 = "473aafd82008c1e041e3b4a5a177507d555c8bc9dd1f121f252f1e81bc0c69c79a91cb64be0df343babcb3d4db76efbaa7aa2adaeaae29337808a368bc290ad0";
    })
    (pkgs.fetchurl {
      name = "corpsecurioscompat-1.21.1-NeoForge-4.0.1.jar";
      url = "https://cdn.modrinth.com/data/pJGcKPh1/versions/Ix4uAd2i/corpsecurioscompat-1.21.1-NeoForge-4.0.1.jar";
      sha512 = "3a75b28b4bf25d775c399c8b5eff1f186020957332f3698d4e313cd0c0785c8b5814ca7fd7194e8b938e276073bab99e8d22aa2c5c10ca78763945db825059fe";
    })
    (pkgs.fetchurl {
      name = "crabbersdelight-1.21.1-1.2.6.jar";
      url = "https://cdn.modrinth.com/data/gBGdVBJy/versions/uwSpUkrQ/crabbersdelight-1.21.1-1.2.6.jar";
      sha512 = "26225d7926c0cc45a58de75ca89ec8c4b6f6bdcc03a76918ffc5094ee52fb9d0c38040213af37ee41c22494fafeaf5b862591f47523c497632425f18b3dde434";
    })
    (pkgs.fetchurl {
      name = "cratedelight-25.09.22-1.21-neoforge.jar";
      url = "https://cdn.modrinth.com/data/9rlXSyLg/versions/YYynf5qc/cratedelight-25.09.22-1.21-neoforge.jar";
      sha512 = "bc1618b6c9d38386f4df4c60ef1cc18447b9967ac7ca30e9012c7f771d2f6098c1873a9a974c8b728110e68e5561e25ba9b1e047c6373a1c3191aae825001e41";
    })
    (pkgs.fetchurl {
      name = "create-1.21.1-6.0.10.jar";
      url = "https://cdn.modrinth.com/data/LNytGWDc/versions/UjX6dr61/create-1.21.1-6.0.10.jar";
      sha512 = "11cc8fc049d2f67f6548c7abfada6b82a3adb5c7ca410a742de04bbca76e03862c518721b88d806f6e6d768a4d68531fdb903a85859b25d1484d550cc7bafd4b";
    })
    (pkgs.fetchurl {
      name = "create-central-kitchen-2.4.0.jar";
      url = "https://cdn.modrinth.com/data/btq68HMO/versions/TUJIHmUh/create-central-kitchen-2.4.0.jar";
      sha512 = "adcdb5a85b2dd727fa2b0563aa9e73d26b58ee3ae57192e049f0c2a1e4a878dc9d07fe20589f6e52e6f4be2ba1bb5ab3a64f5fcf5f1f9a42b9518e7c2380fd23";
    })
    (pkgs.fetchurl {
      name = "create-enchantment-industry-2.3.1.jar";
      url = "https://cdn.modrinth.com/data/JWGBpFUP/versions/zjSKnkVT/create-enchantment-industry-2.3.1.jar";
      sha512 = "0e83fef0ae333a2bad9cff09cb661d72c0ab48a5b8a97a06c946d54da1eb967b7bd532e780845ff62d19f3bb094daed07f63daec7c1caaa1aeb5050ec4bfcd7c";
    })
    (pkgs.fetchurl {
      name = "create-integrated-farming-1.2.2.jar";
      url = "https://cdn.modrinth.com/data/9k1pAsfR/versions/DKe4Owf4/create-integrated-farming-1.2.2.jar";
      sha512 = "eb1c1d314e6651dea81d3433b16160034c71ab218328c086bc844febbb23524f09495a6e489c8834889d46ba264cca26283c0ab82a389af3e3659c031275fd69";
    })
    (pkgs.fetchurl {
      name = "create-new-age-1.1.7c+neoforge-mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/FTeXqI9v/versions/eQ9rbApE/create-new-age-1.1.7c%2Bneoforge-mc1.21.1.jar";
      sha512 = "810f5079647e4d3f181b9e42c741379af2d904d3be0fae83efa5dd9f67e7bac3041539e972ecc0bc0e0c53c2b453fcfa0931c749327a5573ee2ecba61ffc5070";
    })
    (pkgs.fetchurl {
      name = "create_blaze_burner_fuels-1.0.2-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/f3wjDYg6/versions/5Lq5c5Tl/create_blaze_burner_fuels-1.0.2-neoforge-1.21.1.jar";
      sha512 = "0d050ec2ec51cc4137f31b18d19be6b9bcf8e82c11e7395fbb9d0616694eb70b1a1b9506b409c3b7af5446529e93daf99c4387656ca44b695ebe866fab9419e1";
    })
    (pkgs.fetchurl {
      name = "create_compatible_storage-2.11.0-neoforge.jar";
      url = "https://cdn.modrinth.com/data/5ofroZ5W/versions/Lo7RlFHl/create_compatible_storage-2.11.0-neoforge.jar";
      sha512 = "645dde7fbc7090bfae58e2c83f8669e4fe2eea247cb1348bd0920b3053baeb7e400f70ea4672ae56833860198daaa8a757a879f0ae238198def3d0d586bee284";
    })
    (pkgs.fetchurl {
      name = "create_connected-1.1.14-mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/Vg5TIO6d/versions/ffuMPkho/create_connected-1.1.14-mc1.21.1.jar";
      sha512 = "e9bf81de92ea3e980d19e71384ecf549a467fef2ec11de7fa59dc4ffda3b7cea995fa39b7368dc058dcde540faed259db279d033fab1b905e30c43cf6a1c6ca3";
    })
    (pkgs.fetchurl {
      name = "create_copper_and_zinc-2.0.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/aqYNR6rI/versions/1Z1LCW5Z/create_copper_and_zinc-2.0.0-neoforge-1.21.1.jar";
      sha512 = "c7aa3c1c35ff7aa232c0627fc9552b845f834c0319c24bf313539bac755c2f3e3a7454f34b7fd6114b7738598b3aaeb0018775914d3bcbc03f68b797060d3fa9";
    })
    (pkgs.fetchurl {
      name = "create_deep_dark-3.0.2-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/knrLSB8n/versions/3tduJc4Y/create_deep_dark-3.0.2-neoforge-1.21.1.jar";
      sha512 = "df0b5b9cd489b0def8bc8b750aedb96f4a1de37b4f24b0a45cae302cad94e2b3455240fa9dc6b58fd6cc7e005f445a8ea9cde2a7f51b449e54cccf3739a7a4b3";
    })
    (pkgs.fetchurl {
      name = "create_generators-1.2.5-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/aeW9oim1/versions/V6LRJNSI/create_generators-1.2.5-neoforge-1.21.1.jar";
      sha512 = "8085cfd285e090b80e8a3724314620cb2ff7bc21a8bbb29b8397ccdbfccefb2b24215e1e609fc7a5e9a211767447156647b02c83fb00366a4f4eadf4e4a61cac";
    })
    (pkgs.fetchurl {
      name = "create_ironworks-4.0.3-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/FZb6dmQf/versions/91r9PehB/create_ironworks-4.0.3-neoforge-1.21.1.jar";
      sha512 = "1d121e4f6ba2464976a83925053a0d28a43e692d337890c33a24ce4cf7fb8fd34abfd3ce37293bf18b14ff45a665e29a8d6ff71212a0a75404d9e1c24a22347f";
    })
    (pkgs.fetchurl {
      name = "create_jetpack-forge-5.1.2.jar";
      url = "https://cdn.modrinth.com/data/UbFnAd4l/versions/4Ndp4d21/create_jetpack-forge-5.1.2.jar";
      sha512 = "d3d8bca23bc78de0efaef44da0dff5d6d441aad8797ac1aa85bcd4e35f6e2da41bb4faf78a6da74796f84b205fe6943781bdd2d9ce489fa38ed63501eb919f5a";
    })
    (pkgs.fetchurl {
      name = "create_jetpack_curios-1.2.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/BBhCMftF/versions/JEmLrfe6/create_jetpack_curios-1.2.0-neoforge-1.21.1.jar";
      sha512 = "5a751cda827b0459b1013f33573384fb51f8386d5c9a43561dd21698903d73e4f7d6ec66b610bac532d383d9b7435c6fe6910943566e1b96ee819fb154e6d419";
    })
    (pkgs.fetchurl {
      name = "create_more_additions-2.0.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/ib8iIkX3/versions/PIEUyOJw/create_more_additions-2.0.0-neoforge-1.21.1.jar";
      sha512 = "329786df0386aeff82fc3dd1741461cdb7a7938c026d68ddef388b621bc9caddf67e0b8c70e89c0dcce2e044146c7132c5085e94a14adaf6e5e5dbf714b9a849";
    })
    (pkgs.fetchurl {
      name = "create_oxidized-0.1.3.jar";
      url = "https://cdn.modrinth.com/data/X9kjRZeX/versions/z8PFRVBs/create_oxidized-0.1.3.jar";
      sha512 = "e13c938efe11bf23360d6e23b9186cd374e08ab099159eaa51fb1531561ee9c8702cf649280068bd07be3874776dd0866c93fdea7e709d4937bc5a11db7744ca";
    })
    (pkgs.fetchurl {
      name = "create_ranged-1.2.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/ES4twYgt/versions/hZI9L9VQ/create_ranged-1.2.0-neoforge-1.21.1.jar";
      sha512 = "c2a36f6fd02e4eab33a836550467c7b3830a3be38a9f591b153220df193bdceba75e0dd54ed84e03e1293e1bd0e9225ca2dc7dd3bad4035d03d8336c47d437b5";
    })
    (pkgs.fetchurl {
      name = "create_rustic_structures-1.0.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/lmbZMkEZ/versions/WeXjf3zz/create_rustic_structures-1.0.0-neoforge-1.21.1.jar";
      sha512 = "bea3c97f747032abaec7469ac1dd87992349a0f754050de119c4b1912ef8dcc35c8c81cb60288ed75425027d2dfecca671fc6f3b51383c18a6d0416b84ddf7c3";
    })
    (pkgs.fetchurl {
      name = "create_simple_ore_doubling-1.6.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/7jXyH8Xk/versions/vfGKdqIi/create_simple_ore_doubling-1.6.0-neoforge-1.21.1.jar";
      sha512 = "0aded226ff09da90291e7375ea9f5f65fecc43ee05004c667913e4b8dbf5ac44df283a6bff7fae0a6b698107593807349e43fae0b14b8f8d5468c9103d5612b1";
    })
    (pkgs.fetchurl {
      name = "create_things_and_misc-4.1.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/uWrs8XlB/versions/ldIAxQ6C/create_things_and_misc-4.1.0-neoforge-1.21.1.jar";
      sha512 = "61349587be1d3271e00b3d99d09922206d6c1227669e6c9ff154fa011f141658eefc0f162059f5696e361297189acb9ffffa10a435218eee8d414dfc9973f97b";
    })
    (pkgs.fetchurl {
      name = "create_ultimate_factory-2.2.3-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/N9QToVpw/versions/t5APrWmo/create_ultimate_factory-2.2.3-neoforge-1.21.1.jar";
      sha512 = "18347fa78c9d3c58218551fbf3ebae5e285fe0d401c16c9da2f5fb729cdf04eaf64d6417e975b7e30a88960af03c40819eebcb80279b792930fae5178724098b";
    })
    (pkgs.fetchurl {
      name = "create_useful_flint-1.0.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/GDejwYeK/versions/yK2qRjIU/create_useful_flint-1.0.0-neoforge-1.21.1.jar";
      sha512 = "79ab11b2c3580d92863d7655253d5cfc4e45091031b32239a3fc0a8b84b5095de12ac459e19dfaa3e960674bf4ecb48acef226f405edb32771308ff994a7a4bd";
    })
    (pkgs.fetchurl {
      name = "create_waystones_recipes-3.0.0-NeoForge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/wQpKGqNJ/versions/RLFXmYNg/create_waystones_recipes-3.0.0-NeoForge-1.21.1.jar";
      sha512 = "156a67e3ce2e6836e23878545768868807455819cf83c46639872cb5b059107ced6f54b2ae24be21be3741bf9140cde081fdd5edbe0c87dfed5943a47c71f671";
    })
    (pkgs.fetchurl {
      name = "createaddition-1.5.10.jar";
      url = "https://cdn.modrinth.com/data/kU1G12Nn/versions/CP8Lhuwu/createaddition-1.5.10.jar";
      sha512 = "22522c86d5ca798c9ee9f3c20f18f540be125fa1c76d736d1c2e876a31469b5ee61eef27829e7b69f16940675186519448f6b4978635b6010db1422da8edca0d";
    })
    (pkgs.fetchurl {
      name = "createaddoncompatibility-neoforge-1.21.1-1.0.0.jar";
      url = "https://cdn.modrinth.com/data/QgrK9rtJ/versions/tL1Tayuh/createaddoncompatibility-neoforge-1.21.1-1.0.0.jar";
      sha512 = "dd00b322526454c60c088e1e50e9473fa3a3eb3bcb5fbaf2cd9b0ba41121d4b0458b49ecca15c0f0fa0b863bd2775741362da249eca11422955648c2722d99c3";
    })
    (pkgs.fetchurl {
      name = "createbigcannons-5.11.3+mc.1.21.1.jar";
      url = "https://cdn.modrinth.com/data/GWp4jCJj/versions/bsGaXKEd/createbigcannons-5.11.3%2Bmc.1.21.1.jar";
      sha512 = "f75a8bbdc9fc67c09eac6d78e8ad92583a342d54ab70e91923c52cd9b42987765e9a84e43e9c3e175593982aed80fe960a96561d9cd1ed62c4c966818346b466";
    })
    (pkgs.fetchurl {
      name = "createcclogistics-1.21.1-0.3.6.jar";
      url = "https://cdn.modrinth.com/data/FuyTRq2g/versions/24hfd7Lg/createcclogistics-1.21.1-0.3.6.jar";
      sha512 = "d3217ac82366f80de3413fefc1430bcb45e350761430011528a547e6ff875ef5f733f5fbe0477e179d3f47b859bc38379550bcb75a11b9f807d77357440ec8f0";
    })
    (pkgs.fetchurl {
      name = "createdeco-2.1.3.jar";
      url = "https://cdn.modrinth.com/data/sMvUb4Rb/versions/qrcMVoBD/createdeco-2.1.3.jar";
      sha512 = "c536662f9d47ad57a37419165ded14835b23ad6c3e82a920298ecd7ee074244b0b6062ef9cc7ea4501ddd35919a840faccd7fc64e43eb8df31e12076681c3c0d";
    })
    (pkgs.fetchurl {
      name = "createenchantablemachinery-3.6.0+mc1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/eqrvp4NK/versions/Cw5k6c0a/createenchantablemachinery-3.6.0%2Bmc1.21.1-neoforge.jar";
      sha512 = "1dda17f32d92b92ac2e953f7cc28efd6be4d627ca85f4639654bbc3acdc9c879bf0c1fc2f66e0956874d6e21928c1556df1630ee2243d67683e1eefe26312fc7";
    })
    (pkgs.fetchurl {
      name = "createfood-neoforge-1.21.1-2.4.0.jar";
      url = "https://cdn.modrinth.com/data/4HnO3el1/versions/9kslwM0m/createfood-neoforge-1.21.1-2.4.0.jar";
      sha512 = "e7d6bf6aafdbc83d8c41a4a931fa93697469974af8924313e7d6c9fb37b528be07164fdef708e2d631acba08efd8e663d324843496ecf3e83cb0930629a0f0c8";
    })
    (pkgs.fetchurl {
      name = "createhorsepower-1.21.1-1.1.0.jar.disabled";
      url = "https://cdn.modrinth.com/data/9Qm19XSM/versions/yj7NF0iZ/createhorsepower-1.21.1-1.1.0.jar";
      sha512 = "cb39a04f01508344ffa87fb6bad88a8d9fcf6b4b9c24b2b3b97ade1e290a579f1a7933b2355bd8c2953944b8aa81f246066bb99f0821bae503f4947075d9b42e";
    })
    (pkgs.fetchurl {
      name = "createmetalwork-2.0.0.jar";
      url = "https://cdn.modrinth.com/data/q5i9RTSJ/versions/cQiPf5no/createmetalwork-2.0.0.jar";
      sha512 = "d413d617c37207d75261c64c0032fae6be7895c44225ccf5f532d9b26d3d3ff198710ef6274a6df77f356f9424ca028f4a0a1afae9ee16ac4293b9be398245af";
    })
    (pkgs.fetchurl {
      name = "createoreexcavation-1.21-1.6.8.jar";
      url = "https://cdn.modrinth.com/data/ResbpANg/versions/tivxiPTo/createoreexcavation-1.21-1.6.8.jar";
      sha512 = "844ae32ff0d22f4d3c83db3bae2f6edc0f74cd1a530f900bf18829838d5a354b1e439e52688416130d9fd9a52c3310458bbdbc7458f4c1c1d8ffb088ae802d32";
    })
    (pkgs.fetchurl {
      name = "createpropulsion-1.1.1.jar";
      url = "https://cdn.modrinth.com/data/ApkoHNO9/versions/4Zb5Zfn3/createpropulsion-1.1.1.jar";
      sha512 = "69cf285a06be2135fc7571039930025df4013393e72a521bea1151bd5198e6b7b0ef2db062f30fcf77d14e7cec61818b108e4d24ff62a01e126989e578d2f90a";
    })
    (pkgs.fetchurl {
      name = "createrailwaysnavigator-neoforge-1.21.1-beta-0.9.0-C6.jar";
      url = "https://cdn.modrinth.com/data/Dq3STxps/versions/n4iiBI1w/createrailwaysnavigator-neoforge-1.21.1-beta-0.9.0-C6.jar";
      sha512 = "7cdd7b475499b679aa56fd7f77f69c8c3046313426edf047b49af8a12f40817706c177bb063a1b7665fe9d57155cee4b8d8661b45d9d9b5710c91f09628b54bc";
    })
    (pkgs.fetchurl {
      name = "cristellib-neoforge-1.21.1-3.0.3.jar";
      url = "https://cdn.modrinth.com/data/cl223EMc/versions/JiCAbUWP/cristellib-neoforge-1.21.1-3.0.3.jar";
      sha512 = "b1408d22adeb6d113ddaba0c5d1f24aa5193d565f4f94dae6b81867f17859f2204c438d26977625aaed614c58fbf08860195154a179c9fb62798d2d629a07877";
    })
    (pkgs.fetchurl {
      name = "cropsloverain-3.2.1.jar";
      url = "https://cdn.modrinth.com/data/cRci7UZp/versions/bmqftD2D/cropsloverain-3.2.1.jar";
      sha512 = "df4e11530157bd758649c839b767eaa773aa9fc241244ca9d3920b943e217149203e4296f6b5cd4d0953457ee73cead4c5f8a6f4ac0344d4f0baf77b5bb63292";
    })
    (pkgs.fetchurl {
      name = "curios-neoforge-9.5.1+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/vvuO3ImH/versions/yohfFbgD/curios-neoforge-9.5.1%2B1.21.1.jar";
      sha512 = "5981a267686b744e7e3c227f78cbcd5267c14ac6979a28e814695f4589273998563147207fef4a5cdb7cdbdc39797cd95d9e4abadb55869f18e02a38d0654ae5";
    })
    (pkgs.fetchurl {
      name = "curios_dragon_eggs-1.0.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/WEiSh55y/versions/s8YYv6yF/curios_dragon_eggs-1.0.0-neoforge-1.21.1.jar";
      sha512 = "1e6e117e8f895794d4db234f2a04f2c7b69a8879d768a53d3686eac11af7ac83ded625a694b0cd3ca440b08afcd7116932f460c3ab6227d62f4dc476b7af1b41";
    })
    (pkgs.fetchurl {
      name = "deeperdarker-neoforge-1.21.1-1.4.jar";
      url = "https://cdn.modrinth.com/data/fnAffV0n/versions/G6YDRA79/deeperdarker-neoforge-1.21.1-1.4.jar";
      sha512 = "0e4824095b49fcbf26624093f8e332d8c019179432756512f929a8a45c1289d76f7e63776b40ea4053d73274e98f5326c4dc5be85cff638d03279e6ba8b66811";
    })
    (pkgs.fetchurl {
      name = "deployer-0.1.2.jar";
      url = "https://cdn.modrinth.com/data/OZhUIuou/versions/XrLW2FiE/deployer-0.1.2.jar";
      sha512 = "1d2ad848e5342758ac6199396c53c2d43419d57337259dfea25a1477b9e7ad76578d02ec8c8eb26acbb21df5b3275d8c5fad89aad2b5a148ece4e23c65c3a517";
    })
    (pkgs.fetchurl {
      name = "disenchanting_table-merged-1.21.1-5.0.2.jar";
      url = "https://cdn.modrinth.com/data/9BgYgXE4/versions/UzZnJKSR/disenchanting_table-merged-1.21.1-5.0.2.jar";
      sha512 = "e572401caa0ac178aa1f55eec64510904aaf22924790039d9e8084e6f63bb545aa47904aa9da84e523ca44ea47a0f80440c68d94e369554261eefe58a0846dec";
    })
    (pkgs.fetchurl {
      name = "displaydelight-1.5.2.jar";
      url = "https://cdn.modrinth.com/data/yXepZhp8/versions/pU6Dxie9/displaydelight-1.5.2.jar";
      sha512 = "35244906b6c09b9c237c7f753cd88b4e4b988e1c37022a6db8873e8a6d8b6a2d725c820c89ed9f13c80f3e4dd4533bf79a4e9d667567686854d9aecc0f60f5ae";
    })
    (pkgs.fetchurl {
      name = "distractingtrims-neoforge-1.21.1-21.1.1.jar";
      url = "https://cdn.modrinth.com/data/xQU6E1ee/versions/2KEQq349/distractingtrims-neoforge-1.21.1-21.1.1.jar";
      sha512 = "1b7a468985d6964a1f4c2054bb6ba988dd7791aac886b941b2debee11f790f06d8dd9f2d8717f3f0bed253cbd42e2bb15b8ff9892663a1340e008d644737c72a";
    })
    (pkgs.fetchurl {
      name = "does_it_tick-neoforge-1.1.4-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/vmg6jaPW/versions/LxZKFbNR/does_it_tick-neoforge-1.1.4-1.21.1.jar";
      sha512 = "e8e46f601b84f837a915d6fce0bdc085f5873122acd781844b053bd2a5ace0a904fba02f5f0516c9a2ed16003e4282d99e9b2fc32d77a7e95ad7b0bc6eb2649e";
    })
    (pkgs.fetchurl {
      name = "dragonlib-neoforge-1.21.1-beta-3.0.26.jar";
      url = "https://cdn.modrinth.com/data/sbIsGaOV/versions/6bSNB0Np/dragonlib-neoforge-1.21.1-beta-3.0.26.jar";
      sha512 = "c6aac14f108c0a023585bf38a1c587ec4e7c63a7659b403432e281370a3ef48d2c056831bdf0859cb7061aeca67aba9d25c10a25b74b82588426a2b0b7a5d925";
    })
    (pkgs.fetchurl {
      name = "dtbop-3.4.0.jar";
      url = "https://cdn.modrinth.com/data/8QHjGuhP/versions/YZ8VDP0n/dtbop-3.4.0.jar";
      sha512 = "6aa2c96eaad69ba271bd90d394129e8afa02e23d0b0f07704f7c2e781cde741dbaab87cd059fc3a99bf9bc0a3fa0c3da37f7b4aae0c5f551fc7e206a401f750b";
    })
    (pkgs.fetchurl {
      name = "dtbwg-1.1.0-BETA02.jar";
      url = "https://cdn.modrinth.com/data/z5yJOJnS/versions/FsSbsLTl/dtbwg-1.1.0-BETA02.jar";
      sha512 = "32d00007b235ef399a9fb7f2c3f7ad23f70f68adad2d1827376573f6373a36827f128173ef886cdec1e9d9e09dabf53803f50e4458556cff74180ec127e10471";
    })
    (pkgs.fetchurl {
      name = "dtru-1.1.1.jar";
      url = "https://cdn.modrinth.com/data/IOcN8dvy/versions/mjiUwbRt/dtru-1.1.1.jar";
      sha512 = "d4bb4d58b53666f5c406a9bbed1bc9581d63bb5b55347103bccfe5664fc14b01390156fdef9f907eb3cdf85113d4444223301529974a26d013032f82a407e891";
    })
    (pkgs.fetchurl {
      name = "dtterralith-1.3.0.jar";
      url = "https://cdn.modrinth.com/data/o8eM9Cnp/versions/L7qfjzNn/dtterralith-1.3.0.jar";
      sha512 = "216d3e65aff5f9b51fe78a81cd34e1c43dc786905dc95d715d7a5698172933e5abc3b337e4c6757349e83cd74f3ee53dabcc3ddddd189799b255908c1a2a32e2";
    })
    (pkgs.fetchurl {
      name = "dungeons-and-taverns-v4.4.4.jar";
      url = "https://cdn.modrinth.com/data/tpehi7ww/versions/BYUUUeZA/dungeons-and-taverns-v4.4.4.jar";
      sha512 = "83069dc336bcc212059f753923373d9522aa5953bf4b4fe2a8cfa666b4e28d2d017daa66c4b35e315c3be8d1ad60c2872879dd47cc1f47665ebbfd102da76976";
    })
    (pkgs.fetchurl {
      name = "dynamictrees-neoforge-1.21.1-1.7.0.jar";
      url = "https://cdn.modrinth.com/data/vdjF5PL5/versions/1sD1u4G2/dynamictrees-neoforge-1.21.1-1.7.0.jar";
      sha512 = "3e56e073c2fad34f3fdf90946cd6fea2d472e796a816132e51421531e753cccec6f97d1d78e3d5592f2a881c228810e09ed0bd360a8304fc30a21909d3d61a5e";
    })
    (pkgs.fetchurl {
      name = "elytratrims-neoforge-3.10.0+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/XpzGz7KD/versions/XRCucewh/elytratrims-neoforge-3.10.0%2B1.21.1.jar";
      sha512 = "d0b7613f6495d037599513afe9a0cc90c84095d213822aba03d52afcaff8cea521b82b653f3f26e2bc7468ea1fb7629d1aad748b24deb913899ecfdfe3cde1c0";
    })
    (pkgs.fetchurl {
      name = "emi-1.1.22+1.21.1+neoforge.jar";
      url = "https://cdn.modrinth.com/data/fRiHVvU7/versions/ouSj7NfF/emi-1.1.22%2B1.21.1%2Bneoforge.jar";
      sha512 = "6b4f2b93ccd40bbbf3d1f368a9d92b43777543c44243a76ed4010bd563a7f9658decdd58a3d79a3cdc04a288bf98e327a1cce93a5a9d2b8840306578fe633bca";
    })
    (pkgs.fetchurl {
      name = "emi_ores-1.2+1.21.1+neoforge.jar";
      url = "https://cdn.modrinth.com/data/sG4TqDb8/versions/1jY6MIrK/emi_ores-1.2%2B1.21.1%2Bneoforge.jar";
      sha512 = "7b01dd29400802a18e3f23bcc2057e12070d28529bf358306758b462d69ab0532aa392a4b683cb0f5cf1a20f09e5f0d965f90923e72fb2fd6476f63a55a210a7";
    })
    (pkgs.fetchurl {
      name = "enchanted-bookshelves-1.0+1.21.jar";
      url = "https://cdn.modrinth.com/data/CIfCvYLI/versions/asukqEM7/enchanted-bookshelves-1.0%2B1.21.jar";
      sha512 = "e5cbe71a734903cceb832a0279474685ae219e0aaa6e9e0c07270d7cd969ac6cdb783d14fee2e44f77198054452328e5f7821caa49906a227712aabb33ba3ad5";
    })
    (pkgs.fetchurl {
      name = "enchanter_fix-1.8+mc1.20-1.21.11.jar";
      url = "https://cdn.modrinth.com/data/vNE5j3Te/versions/q98qlPBf/enchanter_fix-1.8%2Bmc1.20-1.21.11.jar";
      sha512 = "dda91e85a0256dd1d12e4e304da3b818cbb791c6011bcabf4eb3e2c447ab28d099f29ab3a4a0866515d39d5138f10c915c1a2a53b89baa3b9b93847d138d61c8";
    })
    (pkgs.fetchurl {
      name = "ends_delight-2.5.1+neoforge.1.21.1.jar";
      url = "https://cdn.modrinth.com/data/yHN0njMr/versions/YxSK1qNm/ends_delight-2.5.1%2Bneoforge.1.21.1.jar";
      sha512 = "c36b4a7ac0d55bf18506846ae01dbfb3d89b9333d334d309319346b632aac55441240f8b766ab52b1e497d96d47a5ad8d357af7f5a763473f05ce0fe1b861814";
    })
    (pkgs.fetchurl {
      name = "energizedpower-1.21.1-2.15.20-neoforge.jar";
      url = "https://cdn.modrinth.com/data/6pku8gW1/versions/adUIMyEP/energizedpower-1.21.1-2.15.20-neoforge.jar";
      sha512 = "267107875e0ae5e0fb4128194459b541d6cfcff70c3e0a48ef3d1f0b53c3670383d3146274704f057b6787fea11a4a034ae6120d283617a0dc3d0b6c920ccbb3";
    })
    (pkgs.fetchurl {
      name = "energizedpowerbop-1.21.1-1.0.0-neoforge.jar";
      url = "https://cdn.modrinth.com/data/pFrEfXHl/versions/74FiXzzR/energizedpowerbop-1.21.1-1.0.0-neoforge.jar";
      sha512 = "d4386e7fd482c50be742cf3cc1cca70bc382e88966359b19c285095d59c52e259ae4242f12d35ba5c3d0fd2f2d3941ea5ee6aa473c1c74ec7b36e7213ff6df6c";
    })
    (pkgs.fetchurl {
      name = "energizedpowerfd-1.21.1-1.0.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/tfNnSImQ/versions/K9s9Ymkp/energizedpowerfd-1.21.1-1.0.1-neoforge.jar";
      sha512 = "fa822c452a2df1cc5bd77e82d304b455a52fb0de2661b2d3bc43cdc74b5660995c06a64125577ce2f08757917f96442ad9a68804a80ea06ceb6ae7eefc7ae925";
    })
    (pkgs.fetchurl {
      name = "energizedpowerru-1.21.1-1.0.0-neoforge.jar";
      url = "https://cdn.modrinth.com/data/2x078t9D/versions/yJCVFSOd/energizedpowerru-1.21.1-1.0.0-neoforge.jar";
      sha512 = "7a4824f6a67040c3fb9d44746710641737aace8e43d6f13c4090643dd2aa6d31a7330a8ced0f4f9c2c18a27b13fe914206a80ec17b40d87d9c7d4992340925ab";
    })
    (pkgs.fetchurl {
      name = "everycomp-1.21-2.11.40-neoforge.jar";
      url = "https://cdn.modrinth.com/data/eiktJyw1/versions/YqUPN8JN/everycomp-1.21-2.11.40-neoforge.jar";
      sha512 = "0f356bffca3609db6a52d8927fbebc6d4cbdfdc315449e99f49fe78fb38a41aabaee21a71264e0a782fcd26f8547fa5d14d6f4da5a1a126013446eb22122b9ec";
    })
    (pkgs.fetchurl {
      name = "expandeddelight-0.1.4.jar";
      url = "https://cdn.modrinth.com/data/e9V6wFcR/versions/RTRYPIJp/expandeddelight-0.1.4.jar";
      sha512 = "13a2bd17c5c184902da9eb78ce9b993073864301e8cb4a038f7fd7e596188826ef13381cf615533286f53eaeaabfc4c8b27ab91113a15ea68e4bd9f84ca16b8b";
    })
    (pkgs.fetchurl {
      name = "fabric-language-kotlin-1.13.11+kotlin.2.3.21.jar";
      url = "https://cdn.modrinth.com/data/Ha28R6CL/versions/2i87JpYj/fabric-language-kotlin-1.13.11%2Bkotlin.2.3.21.jar";
      sha512 = "fa5ed2613f7216999cc0c5ddc71906f082a32b52507d7160acbdcf0eb8de12993ba302e5afde6681d025008ecc66c7533fc0c21deb672ef681b2194fb9be4245";
    })
    (pkgs.fetchurl {
      name = "farmers-cutting-betterend-1.21.1-2.0-neoforge.jar";
      url = "https://cdn.modrinth.com/data/ROV8mPB1/versions/U0Wr75eo/farmers-cutting-betterend-1.21.1-2.0-neoforge.jar";
      sha512 = "234c455ac8b01b71297e6a4b6cc328978f07fa069cf803cbf3e1f115fa79dd65d609b123ebf52efce5b15bd42907f9045da045342719b4bc139191f769f65073";
    })
    (pkgs.fetchurl {
      name = "farmers-cutting-betternether-1.21.1-1.0-neoforge.jar";
      url = "https://cdn.modrinth.com/data/RFzQi5Io/versions/9k5240yQ/farmers-cutting-betternether-1.21.1-1.0-neoforge.jar";
      sha512 = "5e9bde497930b9c5ce945959f8800c62e0450d369dd79802aa0eb0ceb6d8b41c0bf68b18e02c604980a5e38ada39ea6f85019d4f36fe61ae3b2b0ddaf86d6820";
    })
    (pkgs.fetchurl {
      name = "farmers-cutting-biomes-o-plenty-2.0.0.jar";
      url = "https://cdn.modrinth.com/data/QWfaJXEc/versions/iCt2qwi3/farmers-cutting-biomes-o-plenty-2.0.0.jar";
      sha512 = "4d7858662524b9e7369c9266e1a5c2c0f6847d86aafe40db016cbd2cee729b9eaf2e3e482942e96992d1a57a173d5c7449774dc30f38a1531c364cad179d6e93";
    })
    (pkgs.fetchurl {
      name = "farmers-cutting-collection-1.21.1-1.3-neoforge.jar";
      url = "https://cdn.modrinth.com/data/bApGjY4X/versions/CS9Y6j0L/farmers-cutting-collection-1.21.1-1.3-neoforge.jar";
      sha512 = "d016130a86c4744ec4046cab4a9808e3a750c873e420334f791de4cc275d67920342ab32035e141f1fd6e9bd71326fcef6a8450a5a2b07af39cd03823817212f";
    })
    (pkgs.fetchurl {
      name = "farmers-cutting-natures-spirit-1.21.1-1.0-neoforge.jar";
      url = "https://cdn.modrinth.com/data/sUhDIDyA/versions/5ir7iNDA/farmers-cutting-natures-spirit-1.21.1-1.0-neoforge.jar";
      sha512 = "2dcacfd92b2bbae556aafe512605283cc3b833fd63f2d1c91252e814f8e22a17c5f107d2757cbc3edd262d00a7a13db6c3ce6ff677b4ae623f764cfa86652d38";
    })
    (pkgs.fetchurl {
      name = "farmers-cutting-oh-the-biomes-weve-gone-1.21.1-2.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/ickBpNUE/versions/HxjFzjdy/farmers-cutting-oh-the-biomes-weve-gone-1.21.1-2.1-neoforge.jar";
      sha512 = "2448f3db7a67bc0fdf8a1bd809a12cba4f2d1dc4f12aa8430f3e8977421bcb8ac871b19ca9041fbcfc16f499f08bc21ac8a7da5964b9f81554c71a6d25f8fb27";
    })
    (pkgs.fetchurl {
      name = "farmers-cutting-regions-unexplored-1.21.1-1.1b-neoforge.jar";
      url = "https://cdn.modrinth.com/data/lFKDc2ny/versions/HjwPIJ3o/farmers-cutting-regions-unexplored-1.21.1-1.1b-neoforge.jar";
      sha512 = "42f40dd95aaf30d642d18615c6fe8dbc271a0e9182beec26ed9e0d2113d25d6e281f04183ba9fb5323742c44a50e8dd4c979985fc31d45b4ad3814cb9f8c6cec";
    })
    (pkgs.fetchurl {
      name = "farmersknives-neoforge-1.21.1-4.2.0.jar";
      url = "https://cdn.modrinth.com/data/uc3VdfLM/versions/zEYCrbJz/farmersknives-neoforge-1.21.1-4.2.0.jar";
      sha512 = "57c796b81b56161b9712493e0fb3f1d3e7a71444c7d2e137dfbcba309db441c6f3b92a86cddaa11bc9e5f1536083a591dd3759987a21f9f413840825e1c5ab47";
    })
    (pkgs.fetchurl {
      name = "ferritecore-7.0.3-neoforge.jar";
      url = "https://cdn.modrinth.com/data/uXXizFIs/versions/x7kQWVju/ferritecore-7.0.3-neoforge.jar";
      sha512 = "19af89a2075bb10a63884fa853ebf84b02c79dc3242430ecdad056fd764fdcde367a7303276b329df01b0736e2ef264c5d80c7dc92c6aebd244f556a230bb417";
    })
    (pkgs.fetchurl {
      name = "fix-mc-stats-neoforge-1.21-2.2.0.jar";
      url = "https://cdn.modrinth.com/data/SQKipbkd/versions/2NxngUgH/fix-mc-stats-neoforge-1.21-2.2.0.jar";
      sha512 = "9bbf60568a3dbd6b48bd8738f8d2ddcc93fa0d42b387a22eddb320dda75c42456fd2e69dc0e79b35ed05e81a8e7495398b79051df1535be89ff74163ba5d3389";
    })
    (pkgs.fetchurl {
      name = "forgified-fabric-api-0.116.7+2.2.4+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/Aqlf1Shp/versions/7nHK7hMg/forgified-fabric-api-0.116.7%2B2.2.4%2B1.21.1.jar";
      sha512 = "858acb32a79e7ed1f37472bd7c50e3d2f47c7d7f6e734a8cece3800eb30d565a09580c261778ea73a0ae25e10e9eb9b16866012fe61d24f671b0ffe3ae2377dd";
    })
    (pkgs.fetchurl {
      name = "forgivingvoid-neoforge-1.21.1-21.1.7.jar";
      url = "https://cdn.modrinth.com/data/1vkzEZjE/versions/dtmmErtS/forgivingvoid-neoforge-1.21.1-21.1.7.jar";
      sha512 = "2f6f77d90ee117efbd14737a7ef58afce1c80074b0cec7045b2a6b5faf657577ebc3fb835d2e15b76936c8e83e7454fa1c6a2d96b7e0e042f51bcf82edce602c";
    })
    (pkgs.fetchurl {
      name = "fragmentum-neoforge-1.21.1-2.1.1.jar";
      url = "https://cdn.modrinth.com/data/49C5QgTK/versions/u2Qis9WE/fragmentum-neoforge-1.21.1-2.1.1.jar";
      sha512 = "998a0b9de24caebc5db522573d562bf08635348b3edd7205debba614e754078cdd486d72164744ba547de08193f89afde8822bff9d92582a7ac5807fd0603e1f";
    })
    (pkgs.fetchurl {
      name = "friendsandfoes-neoforge-4.0.25+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/BOCJKD49/versions/jaXsPU8A/friendsandfoes-neoforge-4.0.25%2Bmc1.21.1.jar";
      sha512 = "2cfbac1f0e4e01e3e5b94272e7ee866b4135558da26f4c2a6d0f7b76330abb44be7fa529efa1a2be1d1b86c608529b81ba05ddbb4b31d8e5b7f567eb3831ec5d";
    })
    (pkgs.fetchurl {
      name = "frostiful-2.3.0+1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/Ae6qoBj3/versions/aNO9c4Sp/frostiful-2.3.0%2B1.21.1-neoforge.jar";
      sha512 = "39a993da4af711a181272bac20ea30455d2c825307a5844528d9adf484eb61d754c9d8e27d7477d8a02f4d51568e3fca95e1481f3bc7d7f71f048712a1ce942d";
    })
    (pkgs.fetchurl {
      name = "fzzy_config-0.7.6+1.21+neoforge.jar";
      url = "https://cdn.modrinth.com/data/hYykXjDp/versions/MAPG6cXE/fzzy_config-0.7.6%2B1.21%2Bneoforge.jar";
      sha512 = "6071890aba7f2273c9fd508914acc7850de9d986423760f9ce416875ffa04eea2ad71a7a6f4d5f90f0625a672f6f54606778d11151b155f3fd98c223c61a4a6d";
    })
    (pkgs.fetchurl {
      name = "gaboulibs-neoforge-1.4.jar";
      url = "https://cdn.modrinth.com/data/N8aGZtvj/versions/LsfPosIY/gaboulibs-neoforge-1.4.jar";
      sha512 = "154a34ebd6b57fb66514ad090de3696d79982191cf818e365a989f0e6a75d1200c62ec730d351b649932e11850c753909d6ff66d899ca20de41e77e3d4076cb3";
    })
    (pkgs.fetchurl {
      name = "geckolib-neoforge-1.21.1-4.8.4.jar";
      url = "https://cdn.modrinth.com/data/8BmcQJ2H/versions/gFmrC8Ru/geckolib-neoforge-1.21.1-4.8.4.jar";
      sha512 = "340d96149a04c57c09485f5b1c69e7f8ec3b68223c618e38b7d84c58f4280dcba3d0e9480b8fc79735d9ef5fd7da5fc8f3081d575bf4bbcd2c44b6dcf21d98c0";
    })
    (pkgs.fetchurl {
      name = "gemsrealm-1.21-2.11.3-neoforge.jar";
      url = "https://cdn.modrinth.com/data/v259p1An/versions/XIE0asyq/gemsrealm-1.21-2.11.3-neoforge.jar";
      sha512 = "8d1416601738c2f60fcb48446527fdcb5db84c8189ddfd92be5b5469bd35389d300a2f85301d2e481fd055374570b261efc4b74eceb83b92d4b89870df834d95";
    })
    (pkgs.fetchurl {
      name = "horseman-neoforge-1.21.1-1.5.9.jar";
      url = "https://cdn.modrinth.com/data/qIv5FhAA/versions/KKgtKkVW/horseman-neoforge-1.21.1-1.5.9.jar";
      sha512 = "2521c31411c3569f53adef2594f3a572bac48a8e0d7895dd67ff6662116dd26815ff3ca4a1ecded6fb7c4aaf0b9b95fc2c48311d937b5a5fdcf8b19e82973ad1";
    })
    (pkgs.fetchurl {
      name = "illager_war_trireme-1.0.1-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/YcGaXNNp/versions/lgM1VBEc/illager_war_trireme-1.0.1-neoforge-1.21.1.jar";
      sha512 = "1bd3f648fc2fa386d7db5ef7b09f194e6e1690e03c51ae9599f549a474fcdd9817dd07835a78ee4ba6dadba1b5c1bde96efdd85c3c45382d37c8dcc36c7ae450";
    })
    (pkgs.fetchurl {
      name = "illagerwarship-1.0.1-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/tUpIHo95/versions/hT0OWFS2/illagerwarship-1.0.1-neoforge-1.21.1.jar";
      sha512 = "b36be32e595b671abeeb454d555fab1f06cf3d5b67f79c758303aa41308c8329a1fa9350310486aaf81c94b303a41c84a64459d2b3553299a1d105156c598b88";
    })
    (pkgs.fetchurl {
      name = "imfast-NEOFORGE-1.0.2.jar";
      url = "https://cdn.modrinth.com/data/PaUMOeP0/versions/qdQ7mi0j/imfast-NEOFORGE-1.0.2.jar";
      sha512 = "0fbdaedf3514c342b1097f6a4d0368d0365618cf593cac64133bb309db8b2afbbc7152b2487d76bd1d515d3669b5226d97b50bd232e9a87864148bd36fef63ae";
    })
    (pkgs.fetchurl {
      name = "immersive_optimization-neoforge-1.21-0.1.4.jar";
      url = "https://cdn.modrinth.com/data/vNZgQmjg/versions/6L9QZsxY/immersive_optimization-neoforge-1.21-0.1.4.jar";
      sha512 = "93a91545c1a27dd8af7cb609050db183baab9b07092daeed14e3ae2e87bb4bf79e094b57cce382980ab7db6a66cb9909921191e930e4982796fca5eb72c8616d";
    })
    (pkgs.fetchurl {
      name = "immersive_paintings-neoforge-1.21.1-0.7.6.jar";
      url = "https://cdn.modrinth.com/data/6txNkua3/versions/cEaVxjXh/immersive_paintings-neoforge-1.21.1-0.7.6.jar";
      sha512 = "b6ce9659c431e20c1062caf0a53a37abe1663f468f9738a170829517e1548910bf7e82a92eef89a3ab25ba814d4fdcf28a189a8e164432d4797dbc43ca3455fe";
    })
    (pkgs.fetchurl {
      name = "infinitetrading-1.21.1-5.0.jar";
      url = "https://cdn.modrinth.com/data/U3eoZT3o/versions/8PGuhKWa/infinitetrading-1.21.1-5.0.jar";
      sha512 = "b89e437d6b671a79d2088c3370866732d185da5cef233a2e7fd9443c6a29e94511eb0600e9383c3fb626d080c57a43e213d0f3904bb33b08b6aff0800b22914a";
    })
    (pkgs.fetchurl {
      name = "inline-neoforge-1.21.1-1.2.2.jar";
      url = "https://cdn.modrinth.com/data/fin1PX4m/versions/FhE1RJsR/inline-neoforge-1.21.1-1.2.2.jar";
      sha512 = "e293d0e97cdef6df28890f6b3c2cc1335b625e9c37601fb9e1be2629f8e878652de0fd8eb7027934219c5dc7081bcb39c8751b7f0aab8d446e9683003d1e33a1";
    })
    (pkgs.fetchurl {
      name = "interiors-1.21.1-neoforge-0.6.1.jar";
      url = "https://cdn.modrinth.com/data/r4Knci2k/versions/gBrfZy6S/interiors-1.21.1-neoforge-0.6.1.jar";
      sha512 = "68b0d915e41fb0ce9d12a8c580d688a604770ded2b21e963058aa6d80cbc5661c481416d051a541395b5c79f461edcb658046e53cfcfb405179a450662ed01b5";
    })
    (pkgs.fetchurl {
      name = "jamlib-neoforge-1.3.6+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/IYY9Siz8/versions/n6UM6TcS/jamlib-neoforge-1.3.6%2B1.21.1.jar";
      sha512 = "c544322a31b5f3fe045cf80eb39e6bd59f91f209a0e510731daa0a6403a273f582769bb26277ef767b4c1ca6438316959d31a6a08e5aa4b1b5a9184a370e5135";
    })
    (pkgs.fetchurl {
      name = "kambrik-neoforge-8.0.0-beta.2.jar";
      url = "https://cdn.modrinth.com/data/zfbCkvdZ/versions/rCSmCZpX/kambrik-neoforge-8.0.0-beta.2.jar";
      sha512 = "c110728232ca6eb63df43c404cc1e9c6c4e1ba22f266de71faa665a2a07efaef2941fae13117a496782747ae3f84b1706fb017a860cc0ff7876077d4f0d91984";
    })
    (pkgs.fetchurl {
      name = "kitchenprojectiles-1.0.8+mc1.21.1+neoforge.jar";
      url = "https://cdn.modrinth.com/data/BYmvNgRP/versions/oTsCt40S/kitchenprojectiles-1.0.8%2Bmc1.21.1%2Bneoforge.jar";
      sha512 = "0394d23e815e3c0f9a9bafe11a7d401f131f64abb345b3aeaabee14868944fd3f26cbd2e85cafd286e3e9dcfb79b46560bbc9f0c6c055488d0d32b4a863f11a8";
    })
    (pkgs.fetchurl {
      name = "kotlinforforge-5.11.0-all.jar";
      url = "https://cdn.modrinth.com/data/ordsPcFz/versions/NrSebcsG/kotlinforforge-5.11.0-all.jar";
      sha512 = "b32faa6d616511aff4f8b32197877c53b9f8bee103884ec37c632b5d017bb59a498ec971b68d8d94787043b0c5be666a330b61d285033c341bff83ac28a90992";
    })
    (pkgs.fetchurl {
      name = "krypton_fnp-neoforge-1.21.1-0.2.28.1-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/JkxWVYwU/versions/SUeOFygw/krypton_fnp-neoforge-1.21.1-0.2.28.1-1.21.1.jar";
      sha512 = "72892ac3bee596d30ee5e5d64d78c3da237c3e30c913c58cfadc3fad555c0140e4d04db5ce537805d991e111deeb03c23eea0d10e385ad1b7502b674102cac74";
    })
    (pkgs.fetchurl {
      name = "lendersdelight-1.21.1-1.0.10.jar";
      url = "https://cdn.modrinth.com/data/a48R8AGk/versions/Mk8hYics/lendersdelight-1.21.1-1.0.10.jar";
      sha512 = "b1e68b4f3e0e5459c802f60238287a86de8f8737170730b7969f94878f2daea7ce9ae0e2b88125b75de63e1c4d9988bf6f3e83a8545f5374a09df29912bd4b8a";
    })
    (pkgs.fetchurl {
      name = "lionfishapi-2.7-fix-fix.jar";
      url = "https://cdn.modrinth.com/data/FoVacERa/versions/FaK9Vh36/lionfishapi-2.7-fix-fix.jar";
      sha512 = "3c5b6a6d355e71352eaae2e327a097158a77b93d834480455ac0fcb9238909353cdcabf86eff17711ece4da2a6fac87f5b639b9da29889286e9f58f6ffa7e2a8";
    })
    (pkgs.fetchurl {
      name = "lithium-neoforge-0.15.3+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/gvQqBUqZ/versions/RXHf27Wv/lithium-neoforge-0.15.3%2Bmc1.21.1.jar";
      sha512 = "65568e6c7e41684ad20e58db8766813840c0c8406eed9edc3f7a2514da7250ac46bde2bfb0936984cc5516c2782f86387ad0ed3d1b804b8bdddc7f7048759df4";
    })
    (pkgs.fetchurl {
      name = "lithosphere-1.7.jar";
      url = "https://cdn.modrinth.com/data/iv9jp2k9/versions/wqHGyD4G/lithosphere-1.7.jar";
      sha512 = "d021f81f98bafdd696b9de02bbe165ce594b79966d9783e657ef30b9c508059e17fac3df74d14db340056cd6dfa1873d1ee7757c195b32312745c38cd90111d0";
    })
    (pkgs.fetchurl {
      name = "lithostitched-1.7.2-neoforge-21.1.jar";
      url = "https://cdn.modrinth.com/data/XaDC71GB/versions/IONexlgI/lithostitched-1.7.2-neoforge-21.1.jar";
      sha512 = "ff5b534e0f6519dfa2ce3e993a92529b7400265f1f94f806ba384b253449305c645f0a6e4defce80ba1ac7028be1933dec3e1ec2106ac974c5126927e8bd9ab8";
    })
    (pkgs.fetchurl {
      name = "lmft-1.1.1+1.21.9-neoforge.jar";
      url = "https://cdn.modrinth.com/data/67kVxsaO/versions/poGMd0AE/lmft-1.1.1%2B1.21.9-neoforge.jar";
      sha512 = "e8fcbeae565ea05ca78e6aeebe3c1ef539039bcd25b57f9842e3025de2e35d295317af6c842f57d0969918fe5aed80032fb68f0f98a81bbec84450408b3ac0e6";
    })
    (pkgs.fetchurl {
      name = "lodestone-1.21.1-1.8.2.jar";
      url = "https://cdn.modrinth.com/data/bN3xUWdo/versions/CohX6yP1/lodestone-1.21.1-1.8.2.jar";
      sha512 = "6917080339b982d96cb4a7c98205ade5d89730191bc9113f4f8cd36bb1a760a91ad2421c8869c7063f8dea22a200d7d1896e0bb5e0e64119bb7590e32a998a23";
    })
    (pkgs.fetchurl {
      name = "logbegone-neoforge-1.21.1-1.0.3.jar";
      url = "https://cdn.modrinth.com/data/9ON3zv6e/versions/1OrkaiPD/logbegone-neoforge-1.21.1-1.0.3.jar";
      sha512 = "5908033aa96432ff55b9d81bd010172e353997312537f82c25b2ddf4767e8dc0100469cefc7513cf1542a919c79f090f7c74e5f29ccd788422231914335d047d";
    })
    (pkgs.fetchurl {
      name = "maestro-neoforge-1.21.1-4.0.0.jar";
      url = "https://cdn.modrinth.com/data/jcZX6rvP/versions/zI6nkjfn/maestro-neoforge-1.21.1-4.0.0.jar";
      sha512 = "675ffdf2356093ed6b14cfcd384c594165f5a7c8e7978ce28b56e31866dac097fbacba3e819ffef95c4918b685a6f67f1f8fdbe9452ba82fb74a7565d6ecf68c";
    })
    (pkgs.fetchurl {
      name = "mapdistancefix-neoforge-1.1.1+mc1.21-1.21.11.jar";
      url = "https://cdn.modrinth.com/data/51BNNAng/versions/rshh80s2/mapdistancefix-neoforge-1.1.1%2Bmc1.21-1.21.11.jar";
      sha512 = "81a0b901d5297febf82ec1ccccdb0345cf37bcf4554cdaafd32e1b30d78089415e838d39886cc03a0684c79643845d9cb7586614e6856d99fdb871b0f068f205";
    })
    (pkgs.fetchurl {
      name = "mcw-mcwfences-1.2.1-mc1.21.1neoforge.jar";
      url = "https://cdn.modrinth.com/data/GmwLse2I/versions/jVdb0r4W/mcw-mcwfences-1.2.1-mc1.21.1neoforge.jar";
      sha512 = "9bf496a8db8c6074ab32374042ae15e87fe87d897e21de29d459556fa8d7d0e73f2718f28a0236181cfb3c1bc66c776b4d079f0a7084696ad490275ab1b9eb6e";
    })
    (pkgs.fetchurl {
      name = "midnightlib-neoforge-1.9.3+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/codAaoxh/versions/6Gv5jvTB/midnightlib-neoforge-1.9.3%2B1.21.1.jar";
      sha512 = "5913e7e8ebbffb72323514aa5bedce19056884416d0a33b38af1761ee74cfa600996cde9bd7d709ee2158476faa2e735b2e6ea6107296d471d2c5b7b35d9da6c";
    })
    (pkgs.fetchurl {
      name = "minersdelight-1.21.1-1.4.5.jar";
      url = "https://cdn.modrinth.com/data/qMxbM4BQ/versions/YUHbwbgQ/minersdelight-1.21.1-1.4.5.jar";
      sha512 = "98db53ab135281ab11e9abacbce846bfb42fdee6e0a85ae38802a5809fddc24af2e3fb5ba6ed53aa2244ce45f3a5ff93970dd1bc1b55d599560f99019a7fcac1";
    })
    (pkgs.fetchurl {
      name = "modernfix-neoforge-5.27.4+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/nmDcB62a/versions/6U8JVjdw/modernfix-neoforge-5.27.4%2Bmc1.21.1.jar";
      sha512 = "9aa61848d4fd38369ccf87df5d6411e18112445cb377d5ae726e55593b8cd1b88838d5908f51c2fe9af56abf5a291fe895d2ecea3b04c85a2023c0436c48685b";
    })
    (pkgs.fetchurl {
      name = "monolib-neoforge-1.21.1-4.0.2.jar";
      url = "https://cdn.modrinth.com/data/9leXt4A5/versions/Es84N2XL/monolib-neoforge-1.21.1-4.0.2.jar";
      sha512 = "2bb3b04e3c1046ea2dfe1c5af108b5341a9a1e353755d99fb3e49c913f48f808fcfc415b8448f8964f43efc879b3e4fb08ae09e722bccbff80d19113204dde79";
    })
    (pkgs.fetchurl {
      name = "monsters_in_the_closet-1.0.3+1.21-forge.jar";
      url = "https://cdn.modrinth.com/data/GMA8jFBD/versions/8nOX0cUH/monsters_in_the_closet-1.0.3%2B1.21-forge.jar";
      sha512 = "8c699eb05e5d53dcfea03cd3eb16fda574a13a99d045715f842fec31af051bd6fa81adf2a81d107883265c61bd540fb61f48ebf4b63917c2d1e8edff982fec8d";
    })
    (pkgs.fetchurl {
      name = "moogs_structures-neoforge-1.21.1-2.0.2.jar";
      url = "https://cdn.modrinth.com/data/1oUDhxuy/versions/9eOgZ04o/moogs_structures-neoforge-1.21.1-2.0.2.jar";
      sha512 = "dbf20127270e7a96d731f8294cab37665c7f707ba5faf9f5205099d1ba267386dcd1755e04c9c67214f5557ffc34eb4884359886db2ae2369ca794ad8b2ecb12";
    })
    (pkgs.fetchurl {
      name = "moonlight-neoforge-1.21.1-3.0.5.jar";
      url = "https://cdn.modrinth.com/data/twkfQtEc/versions/d5bksJeJ/moonlight-neoforge-1.21.1-3.0.5.jar";
      sha512 = "0bd341a9e483bf9d16e6fe35ec099d59a7d6a64ca38dd7a1f1b8d3482bca24a839439d11009544b2744e925677d32366b9887e5ed3797e2a20f0df939f08916e";
    })
    (pkgs.fetchurl {
      name = "more_armor_trims-neoforge-1.5.3-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/FGNYBAJ6/versions/OzLL4h40/more_armor_trims-neoforge-1.5.3-1.21.1.jar";
      sha512 = "04370973874ca71646c6d1f1d1da19f5bd5148640e5268502e123fa531f8ef6a748c2539380fb15a5c15ac04b7eaf67075964e2503092fcc30cc0a2ddfe264b3";
    })
    (pkgs.fetchurl {
      name = "more_mobs-v1.5.9-mc1.14-26.1.9-mod.jar";
      url = "https://cdn.modrinth.com/data/HJR6V0I2/versions/PIalko2v/more_mobs-v1.5.9-mc1.14-26.1.9-mod.jar";
      sha512 = "ee5bc12e05ecedff5fd10ad037c3c65a557c2aeaac216acec699007cad308da9d8cb6baa72cebcc740b210266e2f346b1b030289d5d49703465dd4d8a29f0307";
    })
    (pkgs.fetchurl {
      name = "moredelight-26.04.30-1.21-neoforge.jar";
      url = "https://cdn.modrinth.com/data/znHQQtuU/versions/R5Aa0HDI/moredelight-26.04.30-1.21-neoforge.jar";
      sha512 = "50638af01f69e01480d3aa98f841832a83d3af763b3a3968aa85019b99c90eb3e84bb8e02248d7cd9ae5dd5f5c0d571bcce8c3696e6203452c3e7730e4ca23c1";
    })
    (pkgs.fetchurl {
      name = "naturalist-1.0.2-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/F8BQNPWX/versions/t5ONaov5/naturalist-1.0.2-neoforge-1.21.1.jar";
      sha512 = "52ae7bf9574e454382546c8c20e6f96bbb4e928e9800749367b74958d9cdd6f3a759a752840db4b7e12e75c932878b90366db069f1beab1a55e6510b8e860845";
    })
    (pkgs.fetchurl {
      name = "naturally_trimmed-3.4.3+1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/hHVaPgFK/versions/QpTocByX/naturally_trimmed-3.4.3%2B1.21.1-neoforge.jar";
      sha512 = "773d2708d0d09918df4fd83be1fb66ce0889b647ae3eece0fff98b77ed69eca0092a82b3e4b0d9276b4142ffdbeeef70b33de2e3129e0134c1524e3585ecb4fd";
    })
    (pkgs.fetchurl {
      name = "naturallychargedcreepers-1.21.1-3.6.jar";
      url = "https://cdn.modrinth.com/data/j5LquiGA/versions/K8PJOLPj/naturallychargedcreepers-1.21.1-3.6.jar";
      sha512 = "f5133e6f456ad8af1f1592ef59eb60f5af7b0afacc5b09bf26e1f3e985876e66a1fbbae96028fabfb51837e0cb92dac3c82c7bde6d742b11f8e9db2a692beab9";
    })
    (pkgs.fetchurl {
      name = "natures_spirit-2.2.5-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/WBvnqHfV/versions/MGjl80vc/natures_spirit-2.2.5-1.21.1.jar";
      sha512 = "c99aa5b451c2a8cc3cdb7c36fb9bdf81a8b69bf54956c2897bd7af7478bb1b870cbffc7f3d9e78679e3ed457f2a543daef8e232bef7f130cf7facd2931810a1b";
    })
    (pkgs.fetchurl {
      name = "neoforge-dungeonsdelight-1.21.1-1.4.6.jar";
      url = "https://cdn.modrinth.com/data/qPfNr476/versions/IoK6mX4K/neoforge-dungeonsdelight-1.21.1-1.4.6.jar";
      sha512 = "94e44f68e397436fcaf7c3a9b9e9f1bff5f7cf7954bf74a3be971bc872c1d193d4a8c693faefe31eda67248233c44cdad42f9165159294777d7bc398151d3592";
    })
    (pkgs.fetchurl {
      name = "neoforge-runiclib-1.21.1-5.0.6.jar";
      url = "https://cdn.modrinth.com/data/mk0Htq87/versions/DR9yZcRO/neoforge-runiclib-1.21.1-5.0.6.jar";
      sha512 = "a1c1d5916d5d9b0c5daea35d8a4d7bc23747b8de6f65b6bde07bdf35039cf95bd89dd5d09d8cc6cf95c255afa7196ba3c40467edd50173bb466b7f356cfba012";
    })
    (pkgs.fetchurl {
      name = "neruina-3.3.1+1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/1s5x833P/versions/YUUi3gGS/neruina-3.3.1%2B1.21.1-neoforge.jar";
      sha512 = "f815924fde01835ea6c69c8a14fa245efdd5a9e3ce6b64f47d3e16f7c52bae47900c60968e1970a85c3f6fa6a8b440e5504ed9ec0b6089b6206ec843bc37ceb6";
    })
    (pkgs.fetchurl {
      name = "netherite_horse_armor-neoforge-1.21.1-2.0a.jar";
      url = "https://cdn.modrinth.com/data/nDFVOeq7/versions/PJ7q3Y9v/netherite_horse_armor-neoforge-1.21.1-2.0a.jar";
      sha512 = "8d2a170dc94c526ad53f70dea968f1eae16c22bb95d233da39b3acebd89aa5c1d6fac04abdae64992739cf4904f6fef281bed28958ea44ac805e696b88e8805a";
    })
    (pkgs.fetchurl {
      name = "netherportalfix-neoforge-1.21.1-21.1.1.jar";
      url = "https://cdn.modrinth.com/data/nPZr02ET/versions/O09BGtgh/netherportalfix-neoforge-1.21.1-21.1.1.jar";
      sha512 = "be26c53b4e7aa9dc27b05fe4cafdd120a3d1356410b35d25381d473bd9a7aa19ce6cec1bb982fda842f2a663d15dec5d12248b50141f9479a5e9ec33ed2ab3f7";
    })
    (pkgs.fetchurl {
      name = "nofeathertrample-1.21.1-1.3.jar";
      url = "https://cdn.modrinth.com/data/VmGOLJeH/versions/PBWeN39J/nofeathertrample-1.21.1-1.3.jar";
      sha512 = "aca1787822c62271d5aa52bbec8ce9301beecffedada40b18cc2dbadba9af00c692b71664aa42d3045da27cc76e65b67510e60e246f6dcc0bb05ef2b1d384bd6";
    })
    (pkgs.fetchurl {
      name = "nyfsspiders-neoforge-1.21.1-3.0.1.jar";
      url = "https://cdn.modrinth.com/data/dOGM7ccu/versions/pjXVTyLu/nyfsspiders-neoforge-1.21.1-3.0.1.jar";
      sha512 = "820b4a983f2ec117f96b9fe2eda110b17e3da3b80f7c7c18a76b09781f1a9eb325490de1e69cea2270db6d1b27eefccee1dd022863b190bb88a660d48f602f13";
    })
    (pkgs.fetchurl {
      name = "oceansdelight-neoforge-1.0.4-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/DGiq4ZSW/versions/ja5Qg1xw/oceansdelight-neoforge-1.0.4-1.21.1.jar";
      sha512 = "8079160938175f9d0c1b8f10587c40e3c6b54210511109331f0bb37a845aa90522f60c4e668688e8a0b4023e0464b80d44f50a6af39572fe519d48c9581a9f15";
    })
    (pkgs.fetchurl {
      name = "open-parties-and-claims-neoforge-1.21.1-0.26.2.jar";
      url = "https://cdn.modrinth.com/data/gF3BGWvG/versions/b16WHzyv/open-parties-and-claims-neoforge-1.21.1-0.26.2.jar";
      sha512 = "94e2b32c44fdced1bb2d2df22df0cddae4757adcb69acd4019816e7dd6312ea36ff96c31662f48bc8908f147511338145fd4e956404376a679dde1ca29bbf333";
    })
    (pkgs.fetchurl {
      name = "owo-lib-neoforge-0.12.15.5-beta.1+1.21.jar";
      url = "https://cdn.modrinth.com/data/ccKDOlHs/versions/NMCHU6DZ/owo-lib-neoforge-0.12.15.5-beta.1%2B1.21.jar";
      sha512 = "4de5c5d52139244b8c5260d641087664d992624b822599a32e03c08eb133be854a2f413667dbca1e55772445b04a70210c17b3bc13e3c88e425e7d928104b9fa";
    })
    (pkgs.fetchurl {
      name = "packetfixer-3.3.1-1.20.5-1.21.X-merged.jar";
      url = "https://cdn.modrinth.com/data/c7m1mi73/versions/2C41Q8WX/packetfixer-3.3.1-1.20.5-1.21.X-merged.jar";
      sha512 = "d0acfaa6ef394fc7d9e677022bda06a6c8be7851ba8860897999775b657b5e10878578fe626505b0c9dbc01d26f559dbb1214aabb081d076824648047094e2e1";
    })
    (pkgs.fetchurl {
      name = "polymorph-neoforge-1.1.0+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/tagwiZkJ/versions/VEburL70/polymorph-neoforge-1.1.0%2B1.21.1.jar";
      sha512 = "37358e19d8f251b7d435ea5198eded7b1361e90d5728e11fcb15aeb55786f4ee10fd8fecd14b11f34a99bd92aea01a9977c0dbc46ab6bb07af61a6c89455b6ff";
    })
    (pkgs.fetchurl {
      name = "powergrid-mc1.21.1-0.5.5.1.jar";
      url = "https://cdn.modrinth.com/data/eWiBLJ9R/versions/8EtGIOFr/powergrid-mc1.21.1-0.5.5.1.jar";
      sha512 = "0dafe82438143270a762f9bfff3483c56e85a5db0bb382dba15302b6d6f6a886f252dee42fca08fb46c7a76eb9401f90430d41994b20133e9c009d5b876b8bb5";
    })
    (pkgs.fetchurl {
      name = "prickle-neoforge-1.21.1-21.1.11.jar";
      url = "https://cdn.modrinth.com/data/aaRl8GiW/versions/EE1FHDyD/prickle-neoforge-1.21.1-21.1.11.jar";
      sha512 = "154d42795ccf1f3e07714775cdb82fd5db17574319286ced13d86b0456b64e4cf5bb89ffbcbfcefce67b73ed0b83e4e2944e493d79d9a385ff9de23006ee7bf5";
    })
    (pkgs.fetchurl {
      name = "puddleflood-1.1.4+1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/xeRVd78z/versions/9XRj3Stg/puddleflood-1.1.4%2B1.21.1-neoforge.jar";
      sha512 = "35c4f87427cf48b71d662406ab17ea51c721db54e83839572161d1dfc9ea480dcc78019a6eb1bd10c79db134ef3780f5e1a4e2392f64e578b94d0e8c230d7a9a";
    })
    (pkgs.fetchurl {
      name = "puffish_biome_dither-1.0.0-1.21-neoforge.jar";
      url = "https://cdn.modrinth.com/data/xlybdB0E/versions/3QEt8Guw/puffish_biome_dither-1.0.0-1.21-neoforge.jar";
      sha512 = "4c4602abf50e858bdba1877eeb32a640c3831a3300709e1ba7909da7a10824c5f78cc2bf76611fa85f7e160a341432fcf28c6506c15b6ac5ca4aa05a95827014";
    })
    (pkgs.fetchurl {
      name = "quick-pack-neoforge-1.3.2+1.21.8.jar";
      url = "https://cdn.modrinth.com/data/pSISfJ4O/versions/A5J7bhL4/quick-pack-neoforge-1.3.2%2B1.21.8.jar";
      sha512 = "f5476227000e7393fc1cd90f2afc74ba0a46941f4f443e547e337bcb928054501a54d80a18c2fa358df0e61c0d77e21b72434e24ac73cbd85f4d3163cb931c6c";
    })
    (pkgs.fetchurl {
      name = "railways-0.2.0-beta.2+neoforge-mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/L3Jv0QZI/versions/dZa50kut/railways-0.2.0-beta.2%2Bneoforge-mc1.21.1.jar";
      sha512 = "e5ee20903fed9894a5d7d197fd0c1c8aabc3ff024f13e24a71777257ec20b2703ee2a7c1e091bd88f0878f3821afb6e08e0094d74208e3bd74d244d0401e4095";
    })
    (pkgs.fetchurl {
      name = "realisticbees-1.21.1-4.2.jar";
      url = "https://cdn.modrinth.com/data/tG6HkcWx/versions/KTWiwQK4/realisticbees-1.21.1-4.2.jar";
      sha512 = "eb3d5462439966fd7b045655992d54cdc1149b4f5089ec2798835f95aefb95bd18de9c5d15ac41d6a2ab20524e2bd93440727e03f0dfe43cc0827504374cb461";
    })
    (pkgs.fetchurl {
      name = "rechiseled-1.2.4-neoforge-mc1.21.jar";
      url = "https://cdn.modrinth.com/data/B0g2vT6l/versions/b3uurWWs/rechiseled-1.2.4-neoforge-mc1.21.jar";
      sha512 = "b78f014060b82eea020640a10cc3e774cb355f5289e91191f2f0122eeb4240eac920b3991d10fd1d8628ebf2248322ddf5703117c55783de3d9948fabbd4e2f8";
    })
    (pkgs.fetchurl {
      name = "rechiseledcreate-1.1.0-neoforge-mc1.21.jar";
      url = "https://cdn.modrinth.com/data/E6867niZ/versions/TzPaH8MY/rechiseledcreate-1.1.0-neoforge-mc1.21.jar";
      sha512 = "f5ef2ed26e82adcdf403430f9d0ea57cbff616a7d964b9891eb0a06107f180e740c47284a44a4c8733fddc6d8f58637e71edee68ff853d938df0dbf2b7084fe0";
    })
    (pkgs.fetchurl {
      name = "regions-unexplored-0.6+beta4-neoforge-21.1.jar";
      url = "https://cdn.modrinth.com/data/Tkikq67H/versions/anPXgVIF/regions-unexplored-0.6%2Bbeta4-neoforge-21.1.jar";
      sha512 = "7ddbf780aa953c309343bf70963fde39bcdb53c2b4a9d35907b3815fe87e3a236542590e981a2204a1eb88eadb6e3c75cbb4b9d9156848adcbb8bc24b9d43d9d";
    })
    (pkgs.fetchurl {
      name = "resourcefulconfig-neoforge-1.21-3.0.11.jar";
      url = "https://cdn.modrinth.com/data/M1953qlQ/versions/lSbyRD6v/resourcefulconfig-neoforge-1.21-3.0.11.jar";
      sha512 = "8e4ccc37732b3f5190e7e98df34dbc1339fe614494fcabf1aeaeab9ad8e5993522964b51be31882000c08c48a6d0096b5458364415bb81f2b2b775a7daf2eb87";
    })
    (pkgs.fetchurl {
      name = "resourcefullib-neoforge-1.21-3.0.12.jar";
      url = "https://cdn.modrinth.com/data/G1hIVOrD/versions/x99nCLTm/resourcefullib-neoforge-1.21-3.0.12.jar";
      sha512 = "a9d20e345faa9bcb297bd95ac9524205834804d1bb13518397dd4f7f62b352b08c3339ee7f7870d3669078ceeb33d5c31ea527aecce4b31d62ec1ff7d8b562c8";
    })
    (pkgs.fetchurl {
      name = "rightclickharvest-neoforge-4.6.1+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/Cnejf5xM/versions/djt0zS53/rightclickharvest-neoforge-4.6.1%2B1.21.1.jar";
      sha512 = "909cc4aba3ed535bb65c4cf285725907f100c0ebbcb619b1c861338b7993a020f0aef953bebeeb74920304c5a80e9cd07654aa5f885a5995824da7cf6784bf42";
    })
    (pkgs.fetchurl {
      name = "ritchiesprojectilelib-2.1.2+mc.1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/B3pb093D/versions/hZ6B2Z0x/ritchiesprojectilelib-2.1.2%2Bmc.1.21.1-neoforge.jar";
      sha512 = "6d64c84505a5a8fbb96d106603065465c5a2314ec09636900c5c1a31014c12fa68f1a41e758313cbf0d6f95d9a1f53bd67339020f7d8db0e184c23f66aee0330";
    })
    (pkgs.fetchurl {
      name = "runelic-neoforge-1.21.1-21.1.5.jar";
      url = "https://cdn.modrinth.com/data/P4Xi5huA/versions/M8UE4SZz/runelic-neoforge-1.21.1-21.1.5.jar";
      sha512 = "5eae16a1d9e232ce6d0eac8621b63b0ea9092ea2b6b118e29f05be77daefc4cc0fb457b46fab11d270f413314de30205571909db1228d7e16b9655754f2d4550";
    })
    (pkgs.fetchurl {
      name = "rusticdelight-neoforge-1.21-1.6.0.jar";
      url = "https://cdn.modrinth.com/data/foa4fGIH/versions/1h2Mvp8M/rusticdelight-neoforge-1.21-1.6.0.jar";
      sha512 = "2a1f519d99129354d7575e2baa3213e5f96bbe297b19b1d7b4be945accf8da46a3d5c8b5415bc9e292e6ea75bf5ab0884c4f78cbfa0d92efa01744a587d167ef";
    })
    (pkgs.fetchurl {
      name = "sable-neoforge-1.21.1-1.2.2.jar";
      url = "https://cdn.modrinth.com/data/T9PomCSv/versions/3FMsUjO4/sable-neoforge-1.21.1-1.2.2.jar";
      sha512 = "eb7c46649f5aa359f688fecacfa348b205dff0cfc2d27694632c2e1e1f8f4dbab2c31bdc95b2577201529b2597afe49328c7ad8c348d25eaca109f1a02667534";
    })
    (pkgs.fetchurl {
      name = "scaffoldingdropsnearby-1.21.1-3.4.jar";
      url = "https://cdn.modrinth.com/data/uO522mgw/versions/y1BpbvCk/scaffoldingdropsnearby-1.21.1-3.4.jar";
      sha512 = "3c9c97190023555670f49c33fab1c07bc836627e186ebf703f16d6be6ae401787d9eaaf3d97441281814785c62fd40ac750fe547b2bd5fb22193928821376759";
    })
    (pkgs.fetchurl {
      name = "seasonhud-neoforge-1.21.1-2.0.5.jar";
      url = "https://cdn.modrinth.com/data/VNjUn3NA/versions/Q3uiVNfJ/seasonhud-neoforge-1.21.1-2.0.5.jar";
      sha512 = "455dd3340c397f891a76ae0b0c42a8bbe60c8f7f82b72210de940c7dc2ee0122d1c4b04b756e5c2c9a026f6bfcdad2fac5bea61436ac6e71d8e376a62f2e4f74";
    })
    (pkgs.fetchurl {
      name = "servercore-neoforge-1.5.10+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/4WWQxlQP/versions/77MAnmOn/servercore-neoforge-1.5.10%2B1.21.1.jar";
      sha512 = "eb6ed9c72219de80b22d2c9ca63a5cd4c613fd02d72d5bc1de432fe6c501afa2fecf271bb1696ffc987146192de2cba47e7a34fae87076e0a400b962ce3b67bc";
    })
    (pkgs.fetchurl {
      name = "shulkerboxtooltip-neoforge-5.1.9+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/2M01OLQq/versions/IuqNIoAi/shulkerboxtooltip-neoforge-5.1.9%2B1.21.1.jar";
      sha512 = "805e4566c63d240d9ec01fa0b785e1b6d5be323db9476a041b96cb026e19496f00d5a14d3a94ce999884e44bc5cd7e725ece6f13f7d5952acc274ffb1fc183ab";
    })
    (pkgs.fetchurl {
      name = "silkiertouch-1.21.1-1.0.jar";
      url = "https://cdn.modrinth.com/data/dUaXeoyM/versions/TngkMccX/silkiertouch-1.21.1-1.0.jar";
      sha512 = "7aacad10ee0ea27d6c38c3c2feeb09393ae1317804da6d24ecaa0b3a6fdec019a44762c922c0c2adf54fc2cfe8a5b71825955662592195969752bbabf650153b";
    })
    (pkgs.fetchurl {
      name = "simple_snowy_fix-1.21.1-1.21.11-2.1.9-neoforge.jar";
      url = "https://cdn.modrinth.com/data/3WP3HZRG/versions/9UyLCZ1u/simple_snowy_fix-1.21.1-1.21.11-2.1.9-neoforge.jar";
      sha512 = "1205604733cc96dcea411470bccbc967a46892278c859bb6dd5ee16da7e266184023a41d917fcc0df1363c7bc6e58f7af85e4a5136aa5f2238f04926aafe2292";
    })
    (pkgs.fetchurl {
      name = "simulated_gauges-1.1.0.jar";
      url = "https://cdn.modrinth.com/data/AwDdvIWn/versions/LWK7hUmm/simulated_gauges-1.1.0.jar";
      sha512 = "1077eae5f13c8eb10fd5fb8aa933ea012724627087ce11727794a912b7e95d1a17eba974f46f9479ef57644d1082c0ff330a665645465338664ee0eeb2414e77";
    })
    (pkgs.fetchurl {
      name = "sliceanddice-forge-4.2.4.jar";
      url = "https://cdn.modrinth.com/data/GmjmRQ0A/versions/tyVnEa75/sliceanddice-forge-4.2.4.jar";
      sha512 = "3834893ba6614befba87e6be13481bedfa7bce1ba196e75a6e8335b4718be772481f7ef6bea10b22fbcf154b0147ea97536102ddcf70912e5843f547ee3f711d";
    })
    (pkgs.fetchurl {
      name = "smallernetherportals-1.21.1-3.9.jar";
      url = "https://cdn.modrinth.com/data/fYAofsi6/versions/ZAbiGvCu/smallernetherportals-1.21.1-3.9.jar";
      sha512 = "94f75829c7ef07b28280240052be4fe3411eaee6c6fd70f98958b478fb3f04d3bf8646f63f57470a3ea21c42ff1871053d8d8107219fa51965d798688b3335a4";
    })
    (pkgs.fetchurl {
      name = "smallships-neoforge-1.21.1-2.0.0-b2.1.jar";
      url = "https://cdn.modrinth.com/data/rGWEHQrP/versions/6poGZvvr/smallships-neoforge-1.21.1-2.0.0-b2.1.jar";
      sha512 = "e5f9e7efd537330e41253696827d72de0662fd46b83a4a3b2983b2de105718125af53e237af5047c1660c45a872486278375a65a71ce39788632993907900120";
    })
    (pkgs.fetchurl {
      name = "sneak_through_berries-neoforge-21.1.0.jar";
      url = "https://cdn.modrinth.com/data/xq3wqd0E/versions/jxID7Dx0/sneak_through_berries-neoforge-21.1.0.jar";
      sha512 = "9529f3b055c28375ebffe9848436b35ed8e61996d94c0c72a3434888eecdbea15a5ee4487290fac35beac993a53cc8c75cd8028820b21e3477b9e67460b9d0ec";
    })
    (pkgs.fetchurl {
      name = "snowundertrees-1.21.1-1.5.jar";
      url = "https://cdn.modrinth.com/data/Q3vyMuj2/versions/rtNRLZvR/snowundertrees-1.21.1-1.5.jar";
      sha512 = "9babd0bbc70f513ad9f00f62c7cdb1c078f251a1b3818ec90160189762672d0c57de5fff6aea235dcf9cc570784f2f0540aac7986917612d0f5d0f968ff54f53";
    })
    (pkgs.fetchurl {
      name = "snowy_tents-1.0.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/dxqKAraL/versions/G3oNcmkI/snowy_tents-1.0.0-neoforge-1.21.1.jar";
      sha512 = "0bca063615c7807c3d8459525e9e4bee9ff380709f230cd983e235d1ed40aee0cf8ee180eb7b47e93e40e5bd0f7fede545b2ca0aa4ce5c23f0e1b1b7f92bdc87";
    })
    (pkgs.fetchurl {
      name = "sol_valheim_reforged-1.1.4-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/TYHpvAhl/versions/LPiWH7Km/sol_valheim_reforged-1.1.4-neoforge-1.21.1.jar";
      sha512 = "abbb6dcacfd6920cfb166c39e449baf3625a6a7a8c832edb71453f3fa1ee5654cccd7cd993f4ef38ddfb023baa321e9d7d33407f669d18e661f14cdc95e586ac";
    })
    (pkgs.fetchurl {
      name = "sophisticatedbackpacks-1.21.1-3.25.44.1736.jar";
      url = "https://cdn.modrinth.com/data/TyCTlI4b/versions/ZMuJ1TI7/sophisticatedbackpacks-1.21.1-3.25.44.1736.jar";
      sha512 = "0704060b2d0e2e88bc771da1b26fe262563ac6a814f129a1207782d7edbac8bdc1b4057669c5bc94976e6eb74c6386c0735f93628b2d1f23e7eac4ae6562e185";
    })
    (pkgs.fetchurl {
      name = "sophisticatedbackpackscreateintegration-1.21.1-0.1.5.29.jar";
      url = "https://cdn.modrinth.com/data/s85zLEDe/versions/bWd7B59k/sophisticatedbackpackscreateintegration-1.21.1-0.1.5.29.jar";
      sha512 = "130d9a77f2b43926c9398983740813d268ce58e022a3c8e0eab98ba2439b9d3b2b819b0a845a8eb06bc336bdeb16e86cd4cbe8f7af834c11aaf1ae678977fcac";
    })
    (pkgs.fetchurl {
      name = "sophisticatedcore-1.21.1-1.4.35.1823.jar";
      url = "https://cdn.modrinth.com/data/nmoqTijg/versions/ErcuCe4o/sophisticatedcore-1.21.1-1.4.35.1823.jar";
      sha512 = "c2c9c4e9e99a43292297f92b1f4dcfa1c9000d9aa684fed07153a4896ae9791d90f29cf0d8365c61d1915c5a6ee4c5cb881eee6c2385b562770281c3b700c0f0";
    })
    (pkgs.fetchurl {
      name = "sophisticatedinventoryinteractions-1.21.1-0.1.8.115.jar";
      url = "https://cdn.modrinth.com/data/orgY0JIo/versions/WQ9jmSi3/sophisticatedinventoryinteractions-1.21.1-0.1.8.115.jar";
      sha512 = "390285deb05efabc2db5398cd1ce999eda1d725e1e48d5dd32b23907e75f0593774fed08b57dd8cd3232bd989fa864a48f440dd1c52585e4b9e91caba6075f44";
    })
    (pkgs.fetchurl {
      name = "sophisticateditemactions-1.21.1-0.5.2.237.jar";
      url = "https://cdn.modrinth.com/data/RMW7bKVL/versions/CTuYICbt/sophisticateditemactions-1.21.1-0.5.2.237.jar";
      sha512 = "bdf333e859e011d5f6e5d3287d1b50a71d265126d7f7af84227f120aaeed090bd940ede47ba333276ca2c1b820ea71986b1e237a7dd5c5285e9441a89dee2f4a";
    })
    (pkgs.fetchurl {
      name = "sophisticatedstorage-1.21.1-1.5.46.1717.jar";
      url = "https://cdn.modrinth.com/data/hMlaZH8f/versions/XtIx2bZG/sophisticatedstorage-1.21.1-1.5.46.1717.jar";
      sha512 = "8e4b853dfd600e96c1e2cb5b3ae4865eaa7a451c3b3a2b8627d0fff204cd891f20961de969ae0f5f3e704542bf8b5fa8dd1668ebe13772eda4c1b342fe545db1";
    })
    (pkgs.fetchurl {
      name = "sophisticatedstoragecreateintegration-1.21.1-0.1.17.132.jar";
      url = "https://cdn.modrinth.com/data/MJ0hdevs/versions/cxMKWFFD/sophisticatedstoragecreateintegration-1.21.1-0.1.17.132.jar";
      sha512 = "6f2d83f7408a1cd4c14f93f55d745afbf61e3770cab00e6c5acb637bddb85f21919a75dfa6651d261bbd46fd0375468092378c3d8550a32213f2ab4a90b50863";
    })
    (pkgs.fetchurl {
      name = "sophisticatedstorageinmotion-1.21.1-0.10.27.208.jar";
      url = "https://cdn.modrinth.com/data/6vtFbyaJ/versions/feTe7lA2/sophisticatedstorageinmotion-1.21.1-0.10.27.208.jar";
      sha512 = "9ec5a1a043276c91d5972f01dd41001336db354ce97c9f0a0c7345bde8f654580e3aa1225578faa93f4d7590823ee2854e15d7ea020b5c5f53b8a0cc5d5c8311";
    })
    (pkgs.fetchurl {
      name = "sound-physics-remastered-neoforge-1.21.1-1.5.1.jar";
      url = "https://cdn.modrinth.com/data/qyVF9oeo/versions/Dd2tmpsk/sound-physics-remastered-neoforge-1.21.1-1.5.1.jar";
      sha512 = "ff7e9f0b968eeb2ba0e833328a122813cad0434cfe2d5c3d527c1c0d564504f13a737fc05f22d3fea562a2f86568d31b95212bf5347dd10da36cd49ad56143a6";
    })
    (pkgs.fetchurl {
      name = "spiral_tower_village-0.0.3.jar";
      url = "https://cdn.modrinth.com/data/axDrRQEw/versions/CDwhH6U0/spiral_tower_village-0.0.3.jar";
      sha512 = "c9530e2ad758f1c5b01cb002e754df161c5bf79d1c2d2af06c744399d0e2661aebc4b424ff69af8d6eba4269b161c406bb78b9dc79750372fbe1b46237a19437";
    })
    (pkgs.fetchurl {
      name = "stackedblocks-25.02.13-1.21-neoforge.jar";
      url = "https://cdn.modrinth.com/data/UYrNpKJN/versions/3kRZPPGM/stackedblocks-25.02.13-1.21-neoforge.jar";
      sha512 = "09e03e2e3d5ec6e469cee1e2fce7d3fbc6eac92219d95331104cacc2741d8935f997f4f2677530101953f252a8f6ea70459180acb5c6ca070189e4fbaf92ded6";
    })
    (pkgs.fetchurl {
      name = "stackedblocksfarmersdelight-25.02.13-1.21-neoforge.jar";
      url = "https://cdn.modrinth.com/data/LQlQFBH9/versions/khmHJRfC/stackedblocksfarmersdelight-25.02.13-1.21-neoforge.jar";
      sha512 = "ab54c806a46b51ed3a1758a578a5a8eb32a37d626292ba605870c785bd84e7c549d7a823cbccace3b46d41f785d75cfb2c4175b39117711ec8abd12e3fa25bbd";
    })
    (pkgs.fetchurl {
      name = "statuseffectbars-1.21.1-NeoForge-1.0.2.jar";
      url = "https://cdn.modrinth.com/data/TxIuhIFo/versions/PPVE16f7/statuseffectbars-1.21.1-NeoForge-1.0.2.jar";
      sha512 = "7d81eeb0e60fb304f0a26d696911b4aa0771553975275214750ae99511da17850ad196fb5268cb4362959c10221beb5c92e43ed1d965493c8a76354e76555540";
    })
    (pkgs.fetchurl {
      name = "steampowered-1.21.1-3.2.1.jar";
      url = "https://cdn.modrinth.com/data/J7eSzkL7/versions/w3zLn2Kv/steampowered-1.21.1-3.2.1.jar";
      sha512 = "9bcc8156f6cca2b30a65d189c5641465b3f3680a7a282a7d81ccac39b0ca54b29ce525f9a16e26411e24025b6cff13fb3747cca66d5defad4c4871c7129cacb1";
    })
    (pkgs.fetchurl {
      name = "stickyenchantinglapis-1.21.1-1.5.jar";
      url = "https://cdn.modrinth.com/data/tH1zAs3C/versions/XRcikRVs/stickyenchantinglapis-1.21.1-1.5.jar";
      sha512 = "4a6c894e32ccbe20977f7015d267b696ef7fa996b1c799dd8180b774bd9a25bebcb921dabb3b7abb48c11c84a6c33f24009034264ff9c1ece4cb34411588f1b1";
    })
    (pkgs.fetchurl {
      name = "stonezone-1.21-2.11.16-neoforge.jar";
      url = "https://cdn.modrinth.com/data/uYwn8IP5/versions/5yz4JuMs/stonezone-1.21-2.11.16-neoforge.jar";
      sha512 = "e49f434f56ee0e92bb3ef58bf7200adbc5de19654de03e7c030fe8a63c53ae68fc549aa6ace64f2175dffdacf9fd2c27912f646ac3153a31f1eb9e62cef76560";
    })
    (pkgs.fetchurl {
      name = "storagedelight-26.04.18a+1.21-neoforge.jar";
      url = "https://cdn.modrinth.com/data/LTTvOp5L/versions/cisWxbNH/storagedelight-26.04.18a%2B1.21-neoforge.jar";
      sha512 = "26c892187a4c3ac625e4ed8b0c1a6df22962189b53c920471096688eefdb29cd79823db264fb5213b17227ecc1774b278c2d9862e65c69ebc59e4e5a69a1aecd";
    })
    (pkgs.fetchurl {
      name = "structure_layout_optimizer-neoforge-1.0.12.jar";
      url = "https://cdn.modrinth.com/data/ayPU0OHc/versions/eTz03Gfd/structure_layout_optimizer-neoforge-1.0.12.jar";
      sha512 = "8c38ebd0e221f5bfe887a40ab21caede40cadc90bfc3b8dbbc79888c07faee44d58f12a974f1c5af324c9feceaa2ed04ea62724c6453650c77e1910582914153";
    })
    (pkgs.fetchurl {
      name = "structurify-neoforge-2.0.22+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/yz7AM2zx/versions/YmkYhsGj/structurify-neoforge-2.0.22%2Bmc1.21.1.jar";
      sha512 = "f48f4d1a025af12e288b0e3116ff08256f138522003393831298544cc3d175f88b0a93427bcb1985e9dcaea8c87fc331a68b38540131f53a7a83679a347f9776";
    })
    (pkgs.fetchurl {
      name = "supermartijn642configlib-1.1.8-neoforge-mc1.21.jar";
      url = "https://cdn.modrinth.com/data/LN9BxssP/versions/qKL9jM75/supermartijn642configlib-1.1.8-neoforge-mc1.21.jar";
      sha512 = "768d8ca178c5e653986f5131b7aeb7fa57ce7d32c16ed399ced01b273565a2b640130c55c7092747efeff40dbb0348876b18b415f59b0d16dd2c7f32f1798ce2";
    })
    (pkgs.fetchurl {
      name = "supermartijn642corelib-1.1.21-neoforge-mc1.21.jar";
      url = "https://cdn.modrinth.com/data/rOUBggPv/versions/hcYSe7v7/supermartijn642corelib-1.1.21-neoforge-mc1.21.jar";
      sha512 = "91e67be718dc288c95e22ba78e54deb75c4f110afddddfbef58480019008d39aaeeb7104fcddfd45a49c5e6ee703b20c1d22c5ad32f63059deef080c7bae4f62";
    })
    (pkgs.fetchurl {
      name = "t_and_t-neoforge-fabric-1.13.7+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/DjLobEOy/versions/E4Wy3O8Y/t_and_t-neoforge-fabric-1.13.7%2B1.21.1.jar";
      sha512 = "5edc9324618b481b60e1c970138a60842d79a9e486cc89c83f01ca41eb193c55ac622dedbe48799492c59b4e8d25c53757396f8fb3d4806eb5b1de12e5d7dd0c";
    })
    (pkgs.fetchurl {
      name = "takesapillage-neoforge-1.0.10+mc1.21.1.jar";
      url = "https://cdn.modrinth.com/data/QOJOg1gE/versions/k5CFDaSy/takesapillage-neoforge-1.0.10%2Bmc1.21.1.jar";
      sha512 = "e9f0cc826d4692295a2b9edf83c893c290c1d3340115cccf239bf8048bde1352725e4bfc1b40e3507cfea95d41222787a21de7ea0effdfa27aa20137fbb8280e";
    })
    (pkgs.fetchurl {
      name = "tcdcommons-3.12.7+fabric-1.21.jar";
      url = "https://cdn.modrinth.com/data/Eldc1g37/versions/RvXDhazY/tcdcommons-3.12.7%2Bfabric-1.21.jar";
      sha512 = "e4e40c93c477637974167bb38636b55d142519f3be9cd3d94d1e28f0d86fd1a05b9a34983013339f3f2e8015cceb2a76a731d3d532f81e7b6bae47eee6776576";
    })
    (pkgs.fetchurl {
      name = "tectonic-3.0.22-neoforge-21.1.jar.disabled";
      url = "https://cdn.modrinth.com/data/lWDHr9jE/versions/iCGkqnnx/tectonic-3.0.22-neoforge-21.1.jar";
      sha512 = "a02d3f2bfd8aa099512005df23b45ec723694c397b4224a69ffd47b41cd06bb3d56a0f10bbfd81e8159e0fc55f61d0729656f91231410a74ed55e6fc16fd18ec";
    })
    (pkgs.fetchurl {
      name = "tfmg-1.2.0.jar";
      url = "https://cdn.modrinth.com/data/USgVjXsk/versions/uDi14nbt/tfmg-1.2.0.jar";
      sha512 = "03f2ad28c78ef565ef203c5650280acb0b846d6105dc5c84b2e31187f501be5c59733ef3adb623fbaa32c3233d113d608905259128661ffab06b26b270b1b38c";
    })
    (pkgs.fetchurl {
      name = "thermoo-4.8.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/9TbXlAut/versions/T0vIbHHv/thermoo-4.8.1-neoforge.jar";
      sha512 = "3c81b9690f7e8dfb9c76b9101bb4dc578284a5f09bbd45b409e9a872adbc8a1e460ed8b65083bd0c397b585d9688a436438dc0e537035af1a42febc3540ac265";
    })
    (pkgs.fetchurl {
      name = "thermoo-patches-3.7.2.jar";
      url = "https://cdn.modrinth.com/data/TYRF9nUy/versions/KpMLEP9e/thermoo-patches-3.7.2.jar";
      sha512 = "0b8f158c7be0588a03ef6718dd9acce9c0cc6a140e15b1c7e13d74bb0fcc0b48fe3e5808c12d112968ed1d5d243114065f57191a0cc08a935a9f72d9ae57a5dc";
    })
    (pkgs.fetchurl {
      name = "tool-trims-packaged-v2.2.2b.jar";
      url = "https://cdn.modrinth.com/data/uXeEiQk1/versions/p2hdqYfr/tool-trims-packaged-v2.2.2b.jar";
      sha512 = "bf79b6abbd1a8d23a1feff0291e13ee2e0ae825b034a5cbbdd09c55a6991fe196c8718438528fb124b4a995433d367d3a111557670a81bc17be5cfd8c21e7028";
    })
    (pkgs.fetchurl {
      name = "totw_modded-neoforge-1.21-1.0.9.jar";
      url = "https://cdn.modrinth.com/data/54eqfZSC/versions/AxSm5PB9/totw_modded-neoforge-1.21-1.0.9.jar";
      sha512 = "c08945af3fac429e42ce0d7081d4995e953dd8d385c50e0270883d46db4d7f734189eb3e1bf94a858c6b4391a1f7054a2cada939cee85fd5fe3318c24ec505ed";
    })
    (pkgs.fetchurl {
      name = "trade-cycling-neoforge-1.21.1-1.0.18.jar";
      url = "https://cdn.modrinth.com/data/qpPoAL6m/versions/Dy7xxXr3/trade-cycling-neoforge-1.21.1-1.0.18.jar";
      sha512 = "cd839b97ddcf48ac899c4ecef363f02668abbf18cf2d77823d346f3dacce09f24532636f8de712d8d5ed959cc0b26db23cb98f8837d141731e79c647bd953682";
    })
    (pkgs.fetchurl {
      name = "trading_floor-3.0.16.jar";
      url = "https://cdn.modrinth.com/data/WROfLLvn/versions/K3nIvcWT/trading_floor-3.0.16.jar";
      sha512 = "6eaf42758446093c1923a9c325b955f7ec38933bc0b271559547b73b7dc9950e47a8256ca6f9baf13389ccc349da05a9e32d0f77e71a5f5b2c37080f3773148f";
    })
    (pkgs.fetchurl {
      name = "trek-B0.6.1.1.jar";
      url = "https://cdn.modrinth.com/data/h2jngREY/versions/O1utQuJh/trek-B0.6.1.1.jar";
      sha512 = "766ec02b8a5e633ac5017e55c25fed548305b893be2264e73ae0d3e0c63eee906239c2aad515fe0a915f0ee4eda2bd48fa9f5fc20fd94d5afdf5899a18f55c0a";
    })
    (pkgs.fetchurl {
      name = "trmt-0.4-1.21+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/74oZhrEe/versions/RGkKnnb1/trmt-0.4-1.21%2B1.21.1.jar";
      sha512 = "e60642994c9f052169e45a15dcac0dd2fb2da027aa51e04c7bffa9d5bcbd38894468cfc2670eccaeb688bce55c3305c48850571433650c4520c1196432c3a85f";
    })
    (pkgs.fetchurl {
      name = "txnilib-neoforge-1.0.24-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/vBbPDuOs/versions/M1CyD3Uu/txnilib-neoforge-1.0.24-1.21.1.jar";
      sha512 = "656cd5746fe1b3a2cc7c516619d9f88556f37387e672bb0f362c8aecefc6f1d06705d3a84564c8779856fbbf69fee67b6038a24ffcf46f36f2c478a1aff43a57";
    })
    (pkgs.fetchurl {
      name = "ubesdelight-neoforge-1.21.1-0.4.11.jar";
      url = "https://cdn.modrinth.com/data/PYjpoAys/versions/2nLA0KoE/ubesdelight-neoforge-1.21.1-0.4.11.jar";
      sha512 = "56aa902f6f30f8c94a371eec51855e02ccd570e03a37c2aba45d45b78dc4b00901178effb3ab2f7df38c6769582213eaefe6a3d50d9ee0af68efaec05e07df59";
    })
    (pkgs.fetchurl {
      name = "undergroundbeacons-1.21.1-1.0.jar";
      url = "https://cdn.modrinth.com/data/SMC0xf5E/versions/LHTttXOg/undergroundbeacons-1.21.1-1.0.jar";
      sha512 = "89741776b22f597422bc5a2a0900dba3f1047a13e82ac667cbd41a683c5f4f86c8fda8c84b5ce0285f55a3300adddecffce2fd52470dc9c52926ddc01889a704";
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
      name = "unloadedactivity-v0.6.7+1.21-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/Oo4rJCDP/versions/lrpwT74F/unloadedactivity-v0.6.7%2B1.21-1.21.1.jar";
      sha512 = "4f0f9854466fc1850912bb9eb509a5d52ff46681e942fe0a347891107c4980498529aad37d9d6a4222031ecd6797f9549ed8f6d7723a9376ae242bff2846bcb0";
    })
    (pkgs.fetchurl {
      name = "unsafe-world-random-access-detector-1.1.3+neoforge.jar";
      url = "https://cdn.modrinth.com/data/MsGuTgPJ/versions/xRW3q7pR/unsafe-world-random-access-detector-1.1.3%2Bneoforge.jar";
      sha512 = "b1e516eedffc3eec11f4dddeb035c6d0d1ac6d034001b362b970a69421a0794ce86a3519419cc91450cb809fef784705dda52ab829b507b7f9f85dd8c37b0bb2";
    })
    (pkgs.fetchurl {
      name = "valheim_delight-1.0.0-neoforge-1.21.1.jar";
      url = "https://cdn.modrinth.com/data/VgySJMNg/versions/cDvVW4Tv/valheim_delight-1.0.0-neoforge-1.21.1.jar";
      sha512 = "d9a4074ef365f3ee1f6eebab7871189cc51146d40823432e3a2b171ba2b53551f5af49e3d487245862a9aea8bd4b36cd32866dff5b923cf8340226b5dd62ceb3";
    })
    (pkgs.fetchurl {
      name = "valhelsia_core-neoforge-1.21.1-1.1.4.jar";
      url = "https://cdn.modrinth.com/data/HsdNFinx/versions/cttRekq9/valhelsia_core-neoforge-1.21.1-1.1.4.jar";
      sha512 = "787de5659b46ddb188e2960582cb236255e8e4c2dc6d3bfdd033ab1c00bbf61351a38a4f8a9d47035e03f662c982a952c676e6474e6ad9d3dc5815a3c0df2d95";
    })
    (pkgs.fetchurl {
      name = "valhelsia_furniture-neoforge-1.21.1-1.1.1.jar";
      url = "https://cdn.modrinth.com/data/qmCh2PxS/versions/SZm6bDvf/valhelsia_furniture-neoforge-1.21.1-1.1.1.jar";
      sha512 = "89825870e1f598346797d8f54ae6f4150cd38c89f34c29fd70c6f518bfaf873185eefaaeeefe0e1f39084ec89732c2a815b8d183d71280c132b6b1cd906284a5";
    })
    (pkgs.fetchurl {
      name = "valhelsia_structures-neoforge-1.21.1-1.1.2.jar";
      url = "https://cdn.modrinth.com/data/T21szC0a/versions/etDLE3xP/valhelsia_structures-neoforge-1.21.1-1.1.2.jar";
      sha512 = "d8a7d94f3b8e49f2d1271b3f03c17687cf34ed214776d281635b5b58a7324404d7fbd0fbb6e7be9702aff31f1424fb44de82dedb03e37efc683c55802b78eee4";
    })
    (pkgs.fetchurl {
      name = "villagesandpillages-neoforge-mc1.21.1-1.0.3.jar";
      url = "https://cdn.modrinth.com/data/klXONLDA/versions/3BGfKjMb/villagesandpillages-neoforge-mc1.21.1-1.0.3.jar";
      sha512 = "aa1cad62e724c25ad3dcfb1c468c9300c35308228855b5551bfe604df27254741128d4463e6fbba6b67aa06cc33126da00c797b15a55c0a3deac8428d8a4854a";
    })
    (pkgs.fetchurl {
      name = "villagespawnpoint-1.21.1-4.6.jar";
      url = "https://cdn.modrinth.com/data/KplTt9Ku/versions/YKnDyG5w/villagespawnpoint-1.21.1-4.6.jar";
      sha512 = "2dda3f2add7fe09a1e4ced71acbd474588e206bde8512634338fbb99f72f07f78af6e3299fb2d3d44eff88bf822f87cb79139d68a4e4c2162f783cdf1747e75a";
    })
    (pkgs.fetchurl {
      name = "visibletraders-0.0.7.1.jar";
      url = "https://cdn.modrinth.com/data/AhllI99f/versions/OXoi6R1p/visibletraders-0.0.7.1.jar";
      sha512 = "6c63fbae2e2edad6d8befce58384a380ec6f368800098153185762f678de3833e6c8ddd64cbde3c42bd71b2e455ce1201b88321b2dece8b3e67101d107f40a72";
    })
    (pkgs.fetchurl {
      name = "waystones-neoforge-1.21.1-21.1.30.jar";
      url = "https://cdn.modrinth.com/data/LOpKHB2A/versions/ylfzux81/waystones-neoforge-1.21.1-21.1.30.jar";
      sha512 = "d3a4f8e1fac5521dd445e1cc9891ef428d7efa61aabdc1fbe5ea6390ecdee012b96219daea94a8f4f8329894d239d42ceb3d7b705477a47babcb45b5cf49f0e7";
    })
    (pkgs.fetchurl {
      name = "worldweaver-21.0.20.jar";
      url = "https://cdn.modrinth.com/data/R8uGDQpB/versions/NWpb0jwM/worldweaver-21.0.20.jar";
      sha512 = "c037eb9f281377ef7b60d5fbf27d05f05ff90c8070baffcaa40f0a791735683417fb31bb06576c3ee8a756e7ec4d042031aa910d9ac5c5d658ef6856505cbc4a";
    })
    (pkgs.fetchurl {
      name = "wunderlib-21.0.10.jar";
      url = "https://cdn.modrinth.com/data/HZmhgdJk/versions/5db3GZzg/wunderlib-21.0.10.jar";
      sha512 = "8785b16968ed82ead0fc3f6f42ca3dd7fa94b94a79eeb97a61e57b258bf8c0e6775002a561cf28a1840216bd06f3b86a31da420d4ccc2d37c14abe22058bdf96";
    })
    (pkgs.fetchurl {
      name = "xaerominimap-neoforge-1.21.1-25.3.10.jar";
      url = "https://cdn.modrinth.com/data/1bokaNcj/versions/CatMvRfN/xaerominimap-neoforge-1.21.1-25.3.10.jar";
      sha512 = "97dbc7ddc8b86edead71f60e3257175abe9e05e94387447aad2467cfcf0a5211ed848ee3df9bb3c308183405f997f8acd508ac01f8ee374f08d9af00729fc1d8";
    })
    (pkgs.fetchurl {
      name = "xaeros_waystones_compatibility-NeoForge-1.21.1-2.1.0.jar";
      url = "https://cdn.modrinth.com/data/7mLhyqIY/versions/k8wIAiWT/xaeros_waystones_compatibility-NeoForge-1.21.1-2.1.0.jar";
      sha512 = "440da659b1c406ff410841248a28adba60b73f3d91f513ba335b9e5d44b3e48ab63d5ecc86484ff1e3d1a4f7830ad7566fc1efec2a03eba3c958b414b61feea0";
    })
    (pkgs.fetchurl {
      name = "xaeroworldmap-neoforge-1.21.1-1.40.11.jar";
      url = "https://cdn.modrinth.com/data/NcUtCpym/versions/arbQPyvf/xaeroworldmap-neoforge-1.21.1-1.40.11.jar";
      sha512 = "a4bb890dbac27937411f570432ebc5a4cc5df9562c22e7c3d6a6516ff303bfcb7f35fb39d2ce42a51591a4b2a5b5debfc933fda3f5a552560442fe69f8828b0b";
    })
    (pkgs.fetchurl {
      name = "yet_another_config_lib_v3-3.8.2+1.21.1-neoforge.jar";
      url = "https://cdn.modrinth.com/data/1eAoo2KR/versions/7TVdVtxF/yet_another_config_lib_v3-3.8.2%2B1.21.1-neoforge.jar";
      sha512 = "583de19b927ce8050c2b7d5e60b75accc69e325e5aac85c27994c82a9dec2e4e078343fa1d4c3a10d4bd7e0e524e0b3b246a18cf03db01e363a1e6f865adcf48";
    })
    (pkgs.fetchurl {
      name = "zRemove_SDL_Intro_v1.2.2.jar";
      url = "https://cdn.modrinth.com/data/sk4iFZGy/versions/BHr8OLOk/zRemove_SDL_Intro_v1.2.2.jar";
      sha512 = "2a5b1f3a074d567c6134b918cd711ad64015cf3db0c1dfaf083f66af56004ae2ecda80e63593e1c20dae99f7237b718efde851e1e85f6e1ba604ba87469f60ff";
    })
    (pkgs.fetchurl {
      name = "zfastnoise-1.0.11a+1.21+neoforge.jar";
      url = "https://cdn.modrinth.com/data/OnlVIpq5/versions/tGdbMrnn/zfastnoise-1.0.11a%2B1.21%2Bneoforge.jar";
      sha512 = "0bdeed6ee9c34f9d7294de5cf47d3309e8130dbcbf552cc7e7e55050cb711dd0a485c4a6df5095c2b6b2ee5711d040ed8ac33b01673495ffb3401e7d1b294dd0";
    })
    (pkgs.fetchurl {
      name = "zipline-1.2.1+1.21.1.jar";
      url = "https://cdn.modrinth.com/data/crqH8IT5/versions/mmdIBcOB/zipline-1.2.1%2B1.21.1.jar";
      sha512 = "cdacb88eb2fe1b1b96235a507fa44c32faa0537dbc2bd6ddcd1f77141a7adcc44509c8e0199f01c60523f8c0d04f10a6f5aef74833e2fb6d333c4804055f737b";
    })
  ];
  datapacks = [
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
