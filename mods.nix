{
  pkgs,
  lib,
  config,
  ...
}: let
  mods = [
    (pkgs.fetchurl {
      name = "Almanac-1.21.9-x-fabric-1.5.0.jar";
      url = "https://cdn.modrinth.com/data/Gi02250Z/versions/7hyPzKCA/Almanac-1.21.9-x-fabric-1.5.0.jar";
      sha512 = "03c39e273925dffd34ee4f9414d6af995c564864d0166833cf7e0092b3f334a7e41641339446cd2152f12f6fc621c0037dae878d83d4fe2180f25c6079ea2de7";
    })
    (pkgs.fetchurl {
      name = "BetterTridents-v21.10.0+mc1.21.10-Fabric.jar";
      url = "https://cdn.modrinth.com/data/KNUSlHiU/versions/VNuGdTnX/BetterTridents-v21.10.0%2Bmc1.21.10-Fabric.jar";
      sha512 = "561f6d58a0344a61807c8d15256de33f40efbee4193d8a8a4cdd39b22c8d34066d5457be647468d9e47bc6789dd9cc9a0b2271c7154189e7916bb81f992d94d6";
    })
    (pkgs.fetchurl {
      name = "Big-Globe-5.2.0-MC1.21.10.jar";
      url = "https://cdn.modrinth.com/data/xsng1aJf/versions/OobSC6Wi/Big%20Globe-5.2.0-MC1.21.10.jar";
      sha512 = "c4dd1e6d040b071ebbf79f95a4d4f35e6bf94ef57ad01c8f784ca9427faf5f2d972d34140b658e722ed736ecad246b4a36695b69b01c3276498b29c70188eb95";
    })
    (pkgs.fetchurl {
      name = "Boids-2.0.4+1.21.9.jar";
      url = "https://cdn.modrinth.com/data/2OckSy74/versions/cRzyTDW6/Boids-2.0.4%2B1.21.9.jar";
      sha512 = "35ec91f19c053103f3244d686e7eebeed765e245cdf6d323025e6b183a249e6d71e12bea9ae67bae19b871fc92ac68b74296cb8f71e0c01689521f868e444037";
    })
    (pkgs.fetchurl {
      name = "Chunky-Fabric-1.4.52.jar";
      url = "https://cdn.modrinth.com/data/fALzjamp/versions/F3FNq8Q9/Chunky-Fabric-1.4.52.jar";
      sha512 = "b269a59126052aaf911f9640d13a95129bd58946f402f1c10614080f4089410c60b1187239f1db6f0a9566dd5b8437f1dcbcfbbbe220effd4f652e5ba46f1e41";
    })
    (pkgs.fetchurl {
      name = "Clumps-fabric-1.21.10-28.0.0.1.jar";
      url = "https://cdn.modrinth.com/data/Wnxd13zP/versions/8BikzIOh/Clumps-fabric-1.21.10-28.0.0.1.jar";
      sha512 = "678801ff0d8e89223365d98b817ba9112c27ed9d4afe877d4e7cc4a9254b5a9cea7bd6dc9e190325728fde8525c5247243e74d5db8d2c7f99fa1f6f24ca55081";
    })
    (pkgs.fetchurl {
      name = "DiagonalFences-v21.10.0+mc1.21.10-Fabric.jar";
      url = "https://cdn.modrinth.com/data/IKARgflD/versions/TSePnzLa/DiagonalFences-v21.10.0%2Bmc1.21.10-Fabric.jar";
      sha512 = "a222b8c00d3fc354587d0b7a310bfe2d2785702519e8fc988d57ab03a2e31ecb648eddfb826a25ff3fd5ec750b1477104ea871404d7c685e19b620d27e355afb";
    })
    (pkgs.fetchurl {
      name = "DiagonalWalls-v21.10.0+mc1.21.10-Fabric.jar";
      url = "https://cdn.modrinth.com/data/FQgc8dib/versions/9DjXc6Ql/DiagonalWalls-v21.10.0%2Bmc1.21.10-Fabric.jar";
      sha512 = "ad9840ffae82d598ad66ff50ae54a38b34396028938734bb5e18fcd967c74b41f4cf2f07fb74dcf36bf5bf80218210f5a57603929f239eaac90c150f4adfcfd5";
    })
    (pkgs.fetchurl {
      name = "DiagonalWindows-v21.10.0+mc1.21.10-Fabric.jar";
      url = "https://cdn.modrinth.com/data/oOi0CKes/versions/4LfQGJnU/DiagonalWindows-v21.10.0%2Bmc1.21.10-Fabric.jar";
      sha512 = "8984af5720acc7c78819983045474ab93f51e2e884f77e0309afd6f9e170b393624fb9392c2116ba5ee903e7ff025ceec661a2138cbcced6e915ea38128ef728";
    })
    (pkgs.fetchurl {
      name = "DyedFlames-v21.10.0+mc1.21.10-Fabric.jar";
      url = "https://cdn.modrinth.com/data/66H5fc9R/versions/dgDIr0Ff/DyedFlames-v21.10.0%2Bmc1.21.10-Fabric.jar";
      sha512 = "8f2e970369b6ca87afbd49bb8dc5e5f1cfe59c8074dfe59955b4acfe39acc01f957855ccf5b082fa1883c018ef98f6a29f15ff3b1298e5a32c5ebad040d90461";
    })
    (pkgs.fetchurl {
      name = "ExplorersCompass-1.21.10-2.2.7-fabric.jar";
      url = "https://cdn.modrinth.com/data/RV1qfVQ8/versions/t2uRnTCD/ExplorersCompass-1.21.10-2.2.7-fabric.jar";
      sha512 = "19d121bb86c43aa63928b2d35cb570ad2772cbb9b0a10dbeabc026200c7dae9974e251ec16eb5632aaa0059c2a77e024ba184a2fc8f8914281c0023a5de9b90d";
    })
    (pkgs.fetchurl {
      name = "Explorify-v1.6.4-f15-88.mod.jar";
      url = "https://cdn.modrinth.com/data/HSfsxuTo/versions/9vHj342y/Explorify%20v1.6.4%20f15-88.mod.jar";
      sha512 = "601ee61e3619ab6a929ff06e4e3db6cc480d97a19e5716ac40a2a325d2d609b857a1ac17f2c0ed2b242e662b5486f4e0f59584fbd47acd481b318c45c244254b";
    })
    (pkgs.fetchurl {
      name = "FarmersDelight-1.21.10-3.4.2+refabricated.jar";
      url = "https://cdn.modrinth.com/data/7vxePowz/versions/KPW4qVOo/FarmersDelight-1.21.10-3.4.2%2Brefabricated.jar";
      sha512 = "a17f8df9f3c71d1bd98be455113a38f49fc96596ea7c6dfc2a77271aa5e2cbe7262f05935bc26c81dcac5dbc2a508beff8f41106b3f0268d1e563255a81631f9";
    })
    (pkgs.fetchurl {
      name = "ForgeConfigAPIPort-v21.10.1+mc1.21.10-Fabric.jar";
      url = "https://cdn.modrinth.com/data/ohNO6lps/versions/IKHTwwTv/ForgeConfigAPIPort-v21.10.1%2Bmc1.21.10-Fabric.jar";
      sha512 = "ecb322db9e2c1a0cec8fb06300e1568847980f336fe77f3dda16a89a73da59cbf2152e3ffb2337ad9019dc6bd247a7534e6046e8fd93a3cdb6de065a24093ab9";
    })
    (pkgs.fetchurl {
      name = "GlitchCore-fabric-1.21.10-21.10.0.4.jar";
      url = "https://cdn.modrinth.com/data/s3dmwKy5/versions/f5GdOk9W/GlitchCore-fabric-1.21.10-21.10.0.4.jar";
      sha512 = "45530ba1e7bf832d103e1f243f940d89b664ba5224ca2a6e13dbde1ee13bc573a40b205750ac219707ccbbc778dc6f064a2c22b8ab6d5ff36b62caaee2d80e2d";
    })
    (pkgs.fetchurl {
      name = "Jade-1.21.9-Fabric-20.1.0.jar";
      url = "https://cdn.modrinth.com/data/nvQzSEkH/versions/nCbsPtPw/Jade-1.21.9-Fabric-20.1.0.jar";
      sha512 = "17a5bfa8c1884dcf8d5226158a079ebfd7dabd4365f4d8974a165e979c24eb7de5d1f4d8d6a3dd41b17cf7645aa69222dc7904dbaaf40eac8518b7c62a266646";
    })
    (pkgs.fetchurl {
      name = "Letmedespawn-1.21.9-fabric-1.5.2b.jar";
      url = "https://cdn.modrinth.com/data/vE2FN5qn/versions/bsbIiM1c/Letmedespawn-1.21.9-fabric-1.5.2b.jar";
      sha512 = "6f12cae1bb8ff5db6cab0eb51b2bf8a8f0ec838de5dc48d18ee6c96a6611e6049c2966a806e0191882b06a41f069c3da3e97369b06e3304e1852bab5eacd8f00";
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
      name = "NE-1.21.10-1.10.2.jar";
      url = "https://cdn.modrinth.com/data/2nz0kJ1N/versions/zPTEu5ZA/NE-1.21.10-1.10.2.jar";
      sha512 = "fe88050c213096f5edc8cc0f1004b563696395d5995dd7bf0200c277982be739d3fad8b0a5c23479b6a46d0e6139f1fa82e1cbbe0f601f128c35df484a56856b";
    })
    (pkgs.fetchurl {
      name = "NaturesCompass-1.21.10-2.2.9-fabric.jar";
      url = "https://cdn.modrinth.com/data/fPetb5Kh/versions/xGCEylgP/NaturesCompass-1.21.10-2.2.9-fabric.jar";
      sha512 = "8701b0e804053c46c695b235595c81fe3f0e3de9c7be75d47731315d6dee9c3f0c532dd13bc99d9b08559d3cac591599dbf6af6cff704cd6396c0621c0215998";
    })
    (pkgs.fetchurl {
      name = "NoChatReports-FABRIC-1.21.10-v2.16.0.jar";
      url = "https://cdn.modrinth.com/data/qQyHxfxd/versions/78RjC1gi/NoChatReports-FABRIC-1.21.10-v2.16.0.jar";
      sha512 = "39b2f284f73f8290012b8b9cc70085d59668547fc7b4ec43ab34e4bca6b39a6691fbe32bc3326e40353ba9c16a06320e52818315be77799a5aad526370cbc773";
    })
    (pkgs.fetchurl {
      name = "PuzzlesLib-v21.10.8+mc1.21.10-Fabric.jar";
      url = "https://cdn.modrinth.com/data/QAGBst4M/versions/HJGSxOtN/PuzzlesLib-v21.10.8%2Bmc1.21.10-Fabric.jar";
      sha512 = "04a44609c2ac52cb21f972ca7d6c64a41467df46d516cc21c87c887ed33912fe115ec211dbcbe5c25b2d45f18cf17cb4ef51bd6ab6bd954fd23b51e0e3967e2d";
    })
    (pkgs.fetchurl {
      name = "ResourcefulConfig-fabric-1.21.9-3.9.1.jar";
      url = "https://cdn.modrinth.com/data/M1953qlQ/versions/bjepA5CF/ResourcefulConfig-fabric-1.21.9-3.9.1.jar";
      sha512 = "68055693f86d23694ae2a69a913bd85dbdb7541130cb1d27e8b3174ab7da69dc168b0e60c95e0daf72cc1b88c9407f720d4a19746d5143d957a71cdf3c8468a6";
    })
    (pkgs.fetchurl {
      name = "ResourcefulLib-fabric-1.21.9-3.9.1.jar";
      url = "https://cdn.modrinth.com/data/G1hIVOrD/versions/HHYCcvHX/ResourcefulLib-fabric-1.21.9-3.9.1.jar";
      sha512 = "20702a7beeb71d2599964d4462245a760622e20af18ea558bebaa8f44127049de05c07c11df329f33c4dc5116729cf321230b9bc9471c2698e0066fe5e14d11d";
    })
    (pkgs.fetchurl {
      name = "Revamped-Shipwrecks-1.1.0.jar";
      url = "https://cdn.modrinth.com/data/ZnZ8uqXN/versions/olo0Q6nb/Revamped%20Shipwrecks%201.1.0.jar";
      sha512 = "ba3b2792359b37bc1918144969211bfa08f7a66b85357640d872985e78a79c45fcc4a2a1bf9093f27f6dcf595fb25bcf99241a7500c95ca1307256c70a946b21";
    })
    (pkgs.fetchurl {
      name = "RoughlyEnoughItems-21.9.813-fabric.jar";
      url = "https://cdn.modrinth.com/data/nfn13YXA/versions/UqNkL18H/RoughlyEnoughItems-21.9.813-fabric.jar";
      sha512 = "364aef0cb14b2bcec49f064be8df754fc4b741fe63286533befe7631e459229d9d3c6bc04161deba34ee7c3420e3b355f2fd15b5d62c401a0b1dd1adb54facbc";
    })
    (pkgs.fetchurl {
      name = "ScalableLux-0.1.6+fabric.c25518a-all.jar";
      url = "https://cdn.modrinth.com/data/Ps1zyz6x/versions/PV9KcrYQ/ScalableLux-0.1.6%2Bfabric.c25518a-all.jar";
      sha512 = "729515c1e75cf8d9cd704f12b3487ddb9664cf9928e7b85b12289c8fbbc7ed82d0211e1851375cbd5b385820b4fedbc3f617038fff5e30b302047b0937042ae7";
    })
    (pkgs.fetchurl {
      name = "SereneSeasons-fabric-1.21.10-21.10.0.0.jar";
      url = "https://cdn.modrinth.com/data/e0bNACJD/versions/Y0zdqWGx/SereneSeasons-fabric-1.21.10-21.10.0.0.jar";
      sha512 = "a0eaee78915295a631c960e35b1949f54d6c27367f6fdbf3f98370f16412e243a302e990605d59971a52ddcbd3701cac0e2383d87730cead6720ddca6bf53515";
    })
    (pkgs.fetchurl {
      name = "SnowUnderTrees-2.7.4+1.21.9.jar";
      url = "https://cdn.modrinth.com/data/XVnUIUAQ/versions/zZ2wK01j/SnowUnderTrees-2.7.4%2B1.21.9.jar";
      sha512 = "73204c54ed26f67b376b8d75278852d893e9306899fda8ade806b8db887f0953b3abaad1e08eb556bc51f5a69382ca0ca7e36582fc179a024c8eaed0b1df153c";
    })
    (pkgs.fetchurl {
      name = "StackDeobfuscatorFabric-1.4.3+08e71cc.jar";
      url = "https://cdn.modrinth.com/data/NusMqsjF/versions/pyiVLk9R/StackDeobfuscatorFabric-1.4.3%2B08e71cc.jar";
      sha512 = "ef851d54a60e223e90cfd21da91effcdc70175dd32b194366ca3ba29646c9ebdbfb60a1eaa88070c4e9f83bd654da1344e67226dfdf5c68140db4ef693361353";
    })
    (pkgs.fetchurl {
      name = "TaxFreeLevels-1.4.10-fabric-1.21.5.jar";
      url = "https://cdn.modrinth.com/data/jCBrrLTs/versions/MnVCluXs/TaxFreeLevels-1.4.10-fabric-1.21.5.jar";
      sha512 = "32c761de986778c7a90d53282c665d4a99f9d30a5b7e287112c58fb64235b78ca33cf0b31a602b418bfdd2ad80e672b79ec83dc974491efb6bac4cc34e1225d8";
    })
    (pkgs.fetchurl {
      name = "Unwrecked-Ships-Plus-2.0.6.jar";
      url = "https://cdn.modrinth.com/data/ae8EZLiC/versions/Z6lLHAVV/Unwrecked%20Ships%20Plus%202.0.6.jar";
      sha512 = "509a551abee3315c4c8e58b5f5e52b83d40da5be1527dbc723e22238589bb10a4dba8392f97575ab503fbdae1e5939eb2c57d6b722687974ecf177d7d99973a3";
    })
    (pkgs.fetchurl {
      name = "Vertigo-1.1.7-MC1.21.10.jar";
      url = "https://cdn.modrinth.com/data/4LzgJp1j/versions/KopnnP90/Vertigo-1.1.7-MC1.21.10.jar";
      sha512 = "831ac266618148ecae636cdd73070a24846da1a244a7ec8e3432e11eb24a77aab59e49aba2b0130701b768f7223bf4f8d1e36742fbf5a584c528dfa438ed37d5";
    })
    (pkgs.fetchurl {
      name = "accessories-fabric-1.4.3-beta+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/jtmvUHXj/versions/1xWn5eYc/accessories-fabric-1.4.3-beta%2B1.21.10.jar";
      sha512 = "0fccc3869ae565d7ccb904b5ead686e11b4002a2843c9aa3aa0af74e09b0b70647967069ef3fc6ed720ab1f9969a638f58aea0c98970ba577fd17f6ff98e20fe";
    })
    (pkgs.fetchurl {
      name = "accessorify-2.4.0-beta.5+1.21.10-fabric.jar";
      url = "https://cdn.modrinth.com/data/CVRzrXGP/versions/uFDW75jv/accessorify-2.4.0-beta.5%2B1.21.10-fabric.jar";
      sha512 = "c9530dfeaf1b4e4134f0f9de00d4ebb4aac457a1173e5dca8c0c4cf6173c3bc8fab2efc76dbda14775bcc1be238fc45c7a826a3d48406921b009bd3763effef0";
    })
    (pkgs.fetchurl {
      name = "advancednetherite-fabric-2.3.1-1.21.10.jar";
      url = "https://cdn.modrinth.com/data/CFX9ftUJ/versions/iDY9z8PQ/advancednetherite-fabric-2.3.1-1.21.10.jar";
      sha512 = "0d3783d2abb05e948e8dcbdf138e6bfbd86819d3e101dcd878f51c5c9a096e608df576a87271b25f9da3f989e00c8192d6a71df1930ebdae3dcd42fab684c8cb";
    })
    (pkgs.fetchurl {
      name = "antiquetradingship-1.5.0-fabric-1.21.10.jar";
      url = "https://cdn.modrinth.com/data/luvBs7J4/versions/FiJrkakY/antiquetradingship-1.5.0-fabric-1.21.10.jar";
      sha512 = "fb51ad4b076ad4c2bf89f0f25051aafa567f7bc25cf04dedbe858c12fd20b5359bfcfa6793f4be722b5a2600fddb97ff47f32f024a1a08491c83472c1e925c23";
    })
    (pkgs.fetchurl {
      name = "anvilrestoration-1.21.10-2.5.jar";
      url = "https://cdn.modrinth.com/data/bd8nwTGy/versions/EZpxOAFv/anvilrestoration-1.21.10-2.5.jar";
      sha512 = "31cc9b347c599ab877be9118e6768919b550e199b76cc68867754a1000ca7a44abddcbbab872bb553b02d4046397b242d9aedf342c4df9646519e5439e9f93ed";
    })
    (pkgs.fetchurl {
      name = "appleskin-fabric-mc1.21.9-3.0.7.jar";
      url = "https://cdn.modrinth.com/data/EsAfCjCV/versions/8sbiz1lS/appleskin-fabric-mc1.21.9-3.0.7.jar";
      sha512 = "79d0d0b4a09140cdb7cf74b1cd71554147c60648beb485ca647b149174e171660ec561ad329da58b78b5de439909b180e287b4b38bf068acfca20666100f4584";
    })
    (pkgs.fetchurl {
      name = "architectury-18.0.8-fabric.jar";
      url = "https://cdn.modrinth.com/data/lhGA9TYQ/versions/9eRDsZKH/architectury-18.0.8-fabric.jar";
      sha512 = "38e8c335f04783242d9ded589b8999b85d37620e22afbdfcbbc231c248c7cef7f210c38d63ac7eb01a68a76243b1ae5bcb0a21918f587f83e6a1941f622f2cb7";
    })
    (pkgs.fetchurl {
      name = "async-fabric-0.2.0+alpha-1.21.10.jar";
      url = "https://cdn.modrinth.com/data/vEC2jm6I/versions/N5cXcG5o/async-fabric-0.2.0%2Balpha-1.21.10.jar";
      sha512 = "e22bc14b99a6f4bbac326e8246ee9295afe8d234fd78abb73d314284516368186efc7b0bbf76692a0e11416cf37fd6a697c38a1fa811ac1db7ecc9b0166a58ea";
    })
    (pkgs.fetchurl {
      name = "attributefix-fabric-1.21.10-21.10.2.jar";
      url = "https://cdn.modrinth.com/data/lOOpEntO/versions/D2Z5kaC0/attributefix-fabric-1.21.10-21.10.2.jar";
      sha512 = "36b93fbcc12a0431a440db897cdc69773582f0ff38e9d4dff121101fb01a923dd83cc42c51bbcd5139ddc2ab1ee3312f9c2675b52c6ccd5991a55afb75c9a605";
    })
    (pkgs.fetchurl {
      name = "bettertrims-4.0.4+1.21.10-fabric.jar";
      url = "https://cdn.modrinth.com/data/98ytUvlc/versions/5l9qvJv3/bettertrims-4.0.4%2B1.21.10-fabric.jar";
      sha512 = "b62d3d4be8316202b53b381763b42f5aecc2d2f1bfb568fd231633ad0b6ef048c8a61e3af89957d7716871bcded0f78a60a81bd58cd668ac7355bd888c3f605a";
    })
    (pkgs.fetchurl {
      name = "c2me-fabric-mc1.21.10-0.3.6+alpha.0.9.jar";
      url = "https://cdn.modrinth.com/data/VSNURh3q/versions/2EKX8Hiv/c2me-fabric-mc1.21.10-0.3.6%2Balpha.0.9.jar";
      sha512 = "71e193ecaa38e927a9f943eac6cac5b5dcb4ce6934aae994da9fe34cace5941fe25258056d8b9fdedbda87c5eb3787cad4c74e68ea39048cb6e86202a56dd7ec";
    })
    (pkgs.fetchurl {
      name = "calcmod-1.4.3+fabric.1.21.9.jar";
      url = "https://cdn.modrinth.com/data/XoHTb2Ap/versions/tIJEZz19/calcmod-1.4.3%2Bfabric.1.21.9.jar";
      sha512 = "d783e84b0fa1b894afdec146c8b0c5bd28dad1e8cab45314d60f04b2fec8a0f6825da500c4a9fac37bee21e1af7b4c6cf5e6748f28a8a108198d9a345307c079";
    })
    (pkgs.fetchurl {
      name = "cardinal-components-api-7.2.0.jar";
      url = "https://cdn.modrinth.com/data/K01OU20C/versions/LfKjIXlt/cardinal-components-api-7.2.0.jar";
      sha512 = "17f774748496ab1ad90172b9fda68a15033a94c7eac1ca1d7c78444a8eef3b38dad9694baf21fa6b1d3fc9a95095b974707ccc4b74f283455d8c09a7216d6f5c";
    })
    (pkgs.fetchurl {
      name = "chunky-offline-v1.1.0.jar";
      url = "https://cdn.modrinth.com/data/VfHc5JEX/versions/56xL4i2r/chunky-offline-v1.1.0.jar";
      sha512 = "12506295bba4909b8882b8e4b8802cadb648877be1ba8dfe3f7d8f9a7dbe5cbc6ff712be7d5a3f3b54cdc4190df1be005ae8bb53ae202b40173064810ffb536e";
    })
    (pkgs.fetchurl {
      name = "cloth-config-20.0.149-fabric.jar";
      url = "https://cdn.modrinth.com/data/9s6osm5g/versions/qMxkrrmq/cloth-config-20.0.149-fabric.jar";
      sha512 = "df1d9e0349dc64fc0859f17b65b67b0d7745a26b4905e87fc148ddebc0285de51a3255848599f0d5ee24f6aab00fbac4849d40bb9052936eaa452d216c7ada62";
    })
    (pkgs.fetchurl {
      name = "collective-1.21.10-8.13.jar";
      url = "https://cdn.modrinth.com/data/e0M1UDsY/versions/A0CFMmGr/collective-1.21.10-8.13.jar";
      sha512 = "01544f5e3c85ab98c688b50de3f1fcb90204de4dbe65972d27ee3af0dd8dd6ba7624eeebb030553746ff927169a06874050364c35eab505edd0a0a8baa07e139";
    })
    (pkgs.fetchurl {
      name = "configurable-3.3.2+1.21.10-fabric.jar";
      url = "https://cdn.modrinth.com/data/lGffrQ3O/versions/JpNbQM0g/configurable-3.3.2%2B1.21.10-fabric.jar";
      sha512 = "437e00c5a9726a7db2c9000a64cabe9dae87e3902ed6f0a7e9c54eada87e94f2af53c421a2fb5a0f3b8b85790a2acfe027a3cc200318034b8171fae3bf77e62e";
    })
    (pkgs.fetchurl {
      name = "create-fly-1.21.10-6.0.9-2.jar";
      url = "https://cdn.modrinth.com/data/dKvj0eNn/versions/oYhbStma/create-fly-1.21.10-6.0.9-2.jar";
      sha512 = "e31e054eb2be9bfe66d5b90b2052847d19c0b97cc253659b1daa06a549ca0461cc7cfecf60f8f08e097c3a5d306f7a8cbe12e93d2825101f1879d39233b87ce3";
    })
    (pkgs.fetchurl {
      name = "cristellib-fabric-1.21.10-3.0.3.jar";
      url = "https://cdn.modrinth.com/data/cl223EMc/versions/ZvMKpvgf/cristellib-fabric-1.21.10-3.0.3.jar";
      sha512 = "8506d0caf05ec4565bf301dc9190733e4061f0a4f7974b85aa13fb35d2db75b0448746d04277a27e30a16891179ca74503b129a5d7e88cc1194a7249c6aadb9c";
    })
    (pkgs.fetchurl {
      name = "cryingportals-1.21.10-2.9.jar";
      url = "https://cdn.modrinth.com/data/3RkVNglH/versions/9Ak5KuCn/cryingportals-1.21.10-2.9.jar";
      sha512 = "4194727241be670e63659bb4673d585728414d2fec7d5237fe62877060cb643469818615fbac5a16e16f797f6d2bdc453925f36b1ee1bdc81e4f41f65de1ae15";
    })
    (pkgs.fetchurl {
      name = "debugify-1.21.10+1.1.jar";
      url = "https://cdn.modrinth.com/data/QwxR6Gcd/versions/i4mzYGzu/debugify-1.21.10%2B1.1.jar";
      sha512 = "9589a79015da15ade57f59a9b9b8afd5bd3937db8632ed1b821cfb2c21e0d1b2e6288266df4495e356010b7304cddd15d48b6c4dba454abf8109d58e3c9823f8";
    })
    (pkgs.fetchurl {
      name = "dismountentity-1.21.10-3.6.jar";
      url = "https://cdn.modrinth.com/data/H7N61Wcl/versions/Es8ERcfb/dismountentity-1.21.10-3.6.jar";
      sha512 = "9ced73d62432e2ed2fedafd5dd5f620620a76428447488e19bf4e5fd429e0c72b2e25ae0607ee590af99b4ab3f3056f24951719f22ee702adc69a03577634df7";
    })
    (pkgs.fetchurl {
      name = "dungeons-and-taverns-v5.0.4.jar";
      url = "https://cdn.modrinth.com/data/tpehi7ww/versions/Fp3HZr0m/dungeons-and-taverns-v5.0.4.jar";
      sha512 = "61b3b5acb6259623296580e4690a27247c6ba91b29a36c3977e91b903454c73a8049656d16546250a37bc0cda20834ce9ca7dc4611716b3e098f679436a6151f";
    })
    (pkgs.fetchurl {
      name = "elytratrims-fabric-4.5.7+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/XpzGz7KD/versions/iLC0LP3D/elytratrims-fabric-4.5.7%2B1.21.10.jar";
      sha512 = "445bf1746e3971e04ed31980a4b94a40e0121b941f7d752a5dd1bd6929e98e74fba357262bb83a5e8817e258d57ef8e713fd42126c2291a2d1092ee0c8436fd1";
    })
    (pkgs.fetchurl {
      name = "fabric-api-0.138.4+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/P7dR8mSH/versions/tV4Gc0Zo/fabric-api-0.138.4%2B1.21.10.jar";
      sha512 = "5e64c53391dfd1c059777d671c52be17a4e27a29d9bd7340ea9e3f55ce7a770b38db0a15e0966e981ee8c1b9372fb89543a278521624689268acebb85bd5c6e9";
    })
    (pkgs.fetchurl {
      name = "fabric-language-kotlin-1.13.9+kotlin.2.3.10.jar";
      url = "https://cdn.modrinth.com/data/Ha28R6CL/versions/ViT4gucI/fabric-language-kotlin-1.13.9%2Bkotlin.2.3.10.jar";
      sha512 = "498672ee88cf703685026e74f82a85e30d980c62a1c8cc14744cb73add09a857db8d585b405e19f558ec490613642750eb00e09d8ef5a3c9578bc52b53568d51";
    })
    (pkgs.fetchurl {
      name = "ferritecore-8.1.0-fabric.jar";
      url = "https://cdn.modrinth.com/data/uXXizFIs/versions/bPLllEgi/ferritecore-8.1.0-fabric.jar";
      sha512 = "0596c83d69867380260e20500e5ab184415a1178317464c2b7c8c68a87db435fbe7a80b22b4f50b56558d6506f7dbb35ad7bda16f46eab5b79d38f0d726f08f5";
    })
    (pkgs.fetchurl {
      name = "friendsandfoes-fabric-4.0.21+mc1.21.10.jar";
      url = "https://cdn.modrinth.com/data/POQ2i9zu/versions/TasrLSzd/friendsandfoes-fabric-4.0.21%2Bmc1.21.10.jar";
      sha512 = "27b376b5aaf146a2f0bfd3859db333e2f8f48231d8ba91264c64d711b9b9b324b25870070bf4809a5e55bbb084a5d0f38884ff24274e7168dc275b0e13503447";
    })
    (pkgs.fetchurl {
      name = "frostiful-2.2.13+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/Ae6qoBj3/versions/x3jbmzaa/frostiful-2.2.13%2B1.21.10.jar";
      sha512 = "d6213a8772a617daedf30a7f09109a1982473cc274baa411ac18ba75e82da6fbb2716a7c3a21a869a3f4141ad4ccf1c07fac696cd9807b6d59969f0a251492e9";
    })
    (pkgs.fetchurl {
      name = "fzzy_config-0.7.6+1.21.9.jar";
      url = "https://cdn.modrinth.com/data/hYykXjDp/versions/CBSbrUlV/fzzy_config-0.7.6%2B1.21.9.jar";
      sha512 = "fce235b2e4a87257715564077ac66033cd34709319b9723d7c34ea6abb240583c27caf5b64a3da3578497d61725679f9caf8d06afe4300c7d8522b88bff49733";
    })
    (pkgs.fetchurl {
      name = "grind-enchantments-4.1.0+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/WC4UgDcZ/versions/eEsnc86t/grind-enchantments-4.1.0%2B1.21.10.jar";
      sha512 = "185041bd8321b71c16c4c799bf7b37055f2d31cfa5375aa1d0fadb36d18a7eeb1434c8371e79ed46578663550235a4dcf4127ab49732131ec475969de807285b";
    })
    (pkgs.fetchurl {
      name = "horseman-fabric-1.21.10-1.6.0.jar";
      url = "https://cdn.modrinth.com/data/qIv5FhAA/versions/qdGErj1X/horseman-fabric-1.21.10-1.6.0.jar";
      sha512 = "47d980d2fc2857e53d46cf092d3aacbb67ce607e25ad636e45696e04d0c7b1fd2c504c1c7ed5381709d68edf02da2805e365e5c7819cb63ea6a4b5717c9d30d6";
    })
    (pkgs.fetchurl {
      name = "imfast-FABRIC-1.21.10-1.0.3.jar";
      url = "https://cdn.modrinth.com/data/PaUMOeP0/versions/vY05HS8c/imfast-FABRIC-1.21.10-1.0.3.jar";
      sha512 = "a910d8127a822dc3ca65209eb57fbd825100ac8d40b24fcbc9439f355d0ac2698901b600090364da9aaff5998a3bd06ac361b03f95b19c5d666f1bc8efeafeff";
    })
    (pkgs.fetchurl {
      name = "infinitetrading-1.21.10-4.6.jar";
      url = "https://cdn.modrinth.com/data/U3eoZT3o/versions/HcXyoavq/infinitetrading-1.21.10-4.6.jar";
      sha512 = "8fbe9c8d2a9361c587438dab5a7540f7f4603de572c10993bd7df89e1d4fba8727541773b3245080fc0532bd3f7e982eb87c72d37ae0fb85709066c2ada89af6";
    })
    (pkgs.fetchurl {
      name = "krypton-0.2.10.jar";
      url = "https://cdn.modrinth.com/data/fQEb0iXm/versions/O9LmWYR7/krypton-0.2.10.jar";
      sha512 = "4dcd7228d1890ddfc78c99ff284b45f9cf40aae77ef6359308e26d06fa0d938365255696af4cc12d524c46c4886cdcd19268c165a2bf0a2835202fe857da5cab";
    })
    (pkgs.fetchurl {
      name = "lithium-fabric-0.20.1+mc1.21.10.jar";
      url = "https://cdn.modrinth.com/data/gvQqBUqZ/versions/NsswKiwi/lithium-fabric-0.20.1%2Bmc1.21.10.jar";
      sha512 = "79b2892d123f3bb12649927dd8fccc25c955ff38a19f3aba7cd0180c4cf5506c2a76d49418b13050f90bba7bb59f3623af06e8a275e2ae8c63808084043902bb";
    })
    (pkgs.fetchurl {
      name = "lmft-1.1.1+1.21.9-fabric.jar";
      url = "https://cdn.modrinth.com/data/67kVxsaO/versions/mn7K4mkS/lmft-1.1.1%2B1.21.9-fabric.jar";
      sha512 = "a8010b73e78e3ca0a2dc9b80ac0fd0412b0ad6693756631c0897de1a8a7e4168d917bfd86c3a0448c4731bafad666fb8270778def151bf08f54840763d9e3d50";
    })
    (pkgs.fetchurl {
      name = "midnightlib-fabric-1.9.2+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/codAaoxh/versions/VoGY1DpA/midnightlib-fabric-1.9.2%2B1.21.10.jar";
      sha512 = "e15dc27d1cec8253e3fc78a9f368bdb7e53888ef3aabf177360c9de0f1ee5be6861936d896b4404ad039ae7c68adb6d0c3b1ac60e954ffa3f427a27e2a3d12f0";
    })
    (pkgs.fetchurl {
      name = "modernfix-fabric-latest.jar";
      url = "https://cdn.modrinth.com/data/TjSm1wrD/versions/EGQnhQyx/modernfix-fabric-latest.jar";
      sha512 = "18a427cafb4ca49ed5d2e75cc31fc5f11f701774872de543c7497456d9efc0aa9da82a96dea297ff25311238d9af051af412b7d7d3f47673dca506ddebb815ae";
    })
    (pkgs.fetchurl {
      name = "monsters-in-the-closet-1.0.3+1.21.9.jar";
      url = "https://cdn.modrinth.com/data/GMA8jFBD/versions/fiqQ08ri/monsters-in-the-closet-1.0.3%2B1.21.9.jar";
      sha512 = "98e34faad4fa727d34f5728561b3cdbb733f4422bf2074e262a97a6f57278e837618ad5729192daec4effa38958b7db4c67c88acf4e189d6a8fb41440354ef14";
    })
    (pkgs.fetchurl {
      name = "moogs_structure_lib-1.1.0-1.21.5-1.21.10-fabric.jar";
      url = "https://cdn.modrinth.com/data/1oUDhxuy/versions/4tYN89bN/moogs_structure_lib-1.1.0-1.21.5-1.21.10-fabric.jar";
      sha512 = "17f32fea8bb0197177e895bbae29d38154a1051ccb0cbbf7c6198f89d4d4951865c301dd64924b521de913cdc502a216cb3c1fabd76fb41e3a2f5b090ee516b1";
    })
    (pkgs.fetchurl {
      name = "more_armor_trims-1.5.3-1.21.5.jar";
      url = "https://cdn.modrinth.com/data/FGNYBAJ6/versions/s49cXaLP/more_armor_trims-1.5.3-1.21.5.jar";
      sha512 = "4ada8933d4d837837554630a8a7686c7121c56e6220c4bfb2d872e44a41316678c44ee83e4e159400b606f7328343166aa16adc80e05312e38004a94b0dc3152";
    })
    (pkgs.fetchurl {
      name = "mru-1.0.25+edge+1.21.10-fabric.jar";
      url = "https://cdn.modrinth.com/data/SNVQ2c0g/versions/FGQdTmZR/mru-1.0.25%2Bedge%2B1.21.10-fabric.jar";
      sha512 = "1eaab2f45483bf60104e90c5a10eb69480c0cea1ade3950f7624758caa95c214572d237c653380e89a7220f0f5ad0bcbba8677f53970d3462572e9d6e46fb886";
    })
    (pkgs.fetchurl {
      name = "mythic_mounts-1.0V.jar";
      url = "https://cdn.modrinth.com/data/vDBg3dpI/versions/a8WVUitL/mythic_mounts-1.0V.jar";
      sha512 = "5afdb21a9ac6b89f603d1cccc238687c3da2596feaba6e91b2e3bbeb4c8297838e53047c5ce612b5a1d89eca924f2e990cd4f77f40cf4422cf2575eec898bc8e";
    })
    (pkgs.fetchurl {
      name = "naturallychargedcreepers-1.21.10-3.6.jar";
      url = "https://cdn.modrinth.com/data/j5LquiGA/versions/MLlPvoEJ/naturallychargedcreepers-1.21.10-3.6.jar";
      sha512 = "7a7761bb8241e646edd5f826788b6d1e51de84db53a3be0f5552bba5d275be96ced086590204bdefcc5722414fdada39d4a960f8fc326f553464f73ef9fc3150";
    })
    (pkgs.fetchurl {
      name = "neruina-3.2.2+1.21.10-fabric.jar";
      url = "https://cdn.modrinth.com/data/1s5x833P/versions/XUhmeXaP/neruina-3.2.2%2B1.21.10-fabric.jar";
      sha512 = "e40b31aea7cdc8b1787810944ecfe5e9c6fabfeb94469b36f6ce5cd9c526f32b0bed66b35653b2483bb5618089ea23ccc8e82d462e1f5e8c033db1ebdf23ad46";
    })
    (pkgs.fetchurl {
      name = "noconsolespam-1.8.jar";
      url = "https://cdn.modrinth.com/data/c4YY0EJn/versions/3EjCTww2/noconsolespam-1.8.jar";
      sha512 = "033ee8e3d2f0e2b33884fb201846b5c306f554b4350b013ea662a6a5ea58874b14dc478b150b4a03ae44aa9ec93e6a41b98ef46a7a852e589225872d56400dba";
    })
    (pkgs.fetchurl {
      name = "nofeathertrample-1.21.10-1.3.jar";
      url = "https://cdn.modrinth.com/data/VmGOLJeH/versions/OUQfpxro/nofeathertrample-1.21.10-1.3.jar";
      sha512 = "7b2b5c139a802704d849c913a1327d254ccdfcbdc83cb0faa59cf99bd32010ff607281ecad5f338a5a68c754fe8c66aefa8c2ef1816f55f851d9083a14ccf118";
    })
    (pkgs.fetchurl {
      name = "owo-lib-0.12.24+1.21.9.jar";
      url = "https://cdn.modrinth.com/data/ccKDOlHs/versions/dZPuIa4j/owo-lib-0.12.24%2B1.21.9.jar";
      sha512 = "2313b8bfb79a098e5bbb6642eed4f76feb464dd65b320668f9146588973f3f236e9644fb77dd3b4a8e2057fd63037dcc1d969da7944b8388e69321e9a1f2b21d";
    })
    (pkgs.fetchurl {
      name = "packetfixer-fabric-3.3.4-1.21.10.jar";
      url = "https://cdn.modrinth.com/data/c7m1mi73/versions/MFMXBzuX/packetfixer-fabric-3.3.4-1.21.10.jar";
      sha512 = "a0b3c35a2f9a0b3e19e1670398de6d1af4b87b70f7b1b4661d5657c62f17c4164698cad309a3fa3e9051ee4f2d3b4564a0aa61844e7433d93873b0e3e7a4bd37";
    })
    (pkgs.fetchurl {
      name = "placeholder-api-2.8.2+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/eXts2L7r/versions/qxjzQ9xY/placeholder-api-2.8.2%2B1.21.10.jar";
      sha512 = "507ab10b7938dcd14d33121b8462649bdbe575cef248e917dfdf7566078ab5d0195ca1add95eae4863de3f652eb56db0a8669a67d5b5344e094d086f9dab5a08";
    })
    (pkgs.fetchurl {
      name = "polymorph-fabric-1.2.1+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/KTZoLgc9/versions/bQ4A96tu/polymorph-fabric-1.2.1%2B1.21.10.jar";
      sha512 = "6a4565c3adc92b4ad61045f72794c1d79c33ee1b21e2eee79291dfccec82a84584527ac27f51fd6a3ad716544ec5f02f039ebfd0463d30cc9b9eb51c21f19ae8";
    })
    (pkgs.fetchurl {
      name = "prickle-fabric-1.21.10-21.10.2.jar";
      url = "https://cdn.modrinth.com/data/aaRl8GiW/versions/l2jKhJoj/prickle-fabric-1.21.10-21.10.2.jar";
      sha512 = "31d3899558e0753a8630057ee45f70ec3fe4337b98e59df9af888277e43e9e21545c11dc21a55afcbcb0c7e7120a3a502a1a828f7e75635bf45975d04a791c59";
    })
    (pkgs.fetchurl {
      name = "reinforced-shulker-boxes-3.4.4-alpha+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/xlOwuSdN/versions/OZyQnNQt/reinforced-shulker-boxes-3.4.4-alpha%2B1.21.10.jar";
      sha512 = "f76cf08904dce1fc139f88f76041274f55ce9b666c3d1715b588fa98c5227b79aa8ea61a5d8ebee26d602fd96690a99ace62b75d7359299239fe57aa699016f3";
    })
    (pkgs.fetchurl {
      name = "scaffoldingdropsnearby-1.21.10-3.4.jar";
      url = "https://cdn.modrinth.com/data/uO522mgw/versions/VH8dI1rx/scaffoldingdropsnearby-1.21.10-3.4.jar";
      sha512 = "85602a27ec07b86c01e0b1b9c0b09177fc1e38db9603dfe0cb742cc8c2ea92a1eda5a20be6fcb34adb716be4b09654408a03ae46876a65da44f6746e20adccac";
    })
    (pkgs.fetchurl {
      name = "scorchful-0.16.4+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/SZQ5qcdn/versions/KFIwg8jo/scorchful-0.16.4%2B1.21.10.jar";
      sha512 = "d7c14f29dee77be419c1704a8e9c28ee61c10938ff410c94df3d809461bd33ee52fbc49f1f4370944ce0042926a375180e830f638cc7941ed589b7cc4fb90e15";
    })
    (pkgs.fetchurl {
      name = "servercore-fabric-1.5.14+1.21.9.jar";
      url = "https://cdn.modrinth.com/data/4WWQxlQP/versions/TTQGy6U8/servercore-fabric-1.5.14%2B1.21.9.jar";
      sha512 = "d6113cedae8d0852c7341d8bb016732b03cea2d3729cb9140549bde6004aee1dd48634e16b3727b8cd4e8d101675672e43e6cc205958b4b41d4658ab3eb69b12";
    })
    (pkgs.fetchurl {
      name = "servux-fabric-1.21.10-0.8.5.jar";
      url = "https://cdn.modrinth.com/data/zQhsx8KF/versions/edj0eGc8/servux-fabric-1.21.10-0.8.5.jar";
      sha512 = "13e67184315122f4b5411c78d2c6f3bf77b5dba05dd0c59732089a4916afce1a0b3dba548fc298c5f561fda15dd08ab521f9e98c22bed90c319cf2fe6b2feaf6";
    })
    (pkgs.fetchurl {
      name = "shulkerboxtooltip-fabric-5.2.13+1.21.10.jar";
      url = "https://cdn.modrinth.com/data/2M01OLQq/versions/Tu7L0xsA/shulkerboxtooltip-fabric-5.2.13%2B1.21.10.jar";
      sha512 = "eb839359575ec30b7a17d91313ed96ee345d927375dbc853264ce4848f421d7a9eb52ba5cfbe34177f1686e53e03fca181cb61c1f6195973e68da2c8dbceee91";
    })
    (pkgs.fetchurl {
      name = "silkiertouch-1.21.10-1.1.jar";
      url = "https://cdn.modrinth.com/data/dUaXeoyM/versions/vh24JGZm/silkiertouch-1.21.10-1.1.jar";
      sha512 = "3d424d47cbe6d0c86bfbb9dc70003e6a8f80a4c139057412879638a7f433b2c77fd4b4b027c94c8565075e3162d1d75976ba17e8ebc8f16d9dcb41fb7ee7768a";
    })
    (pkgs.fetchurl {
      name = "smallernetherportals-1.21.10-4.0.jar";
      url = "https://cdn.modrinth.com/data/fYAofsi6/versions/7hJzThJb/smallernetherportals-1.21.10-4.0.jar";
      sha512 = "8a5ab3d6265b8f9d3ea8cd2bbb01164bababb9b101af253ca3f5a42b78f586b249159adf69107a13e0f04977252bf44339b04b6ea0bd27d784e5129135a09558";
    })
    (pkgs.fetchurl {
      name = "sound-physics-remastered-fabric-1.21.10-1.5.1.jar";
      url = "https://cdn.modrinth.com/data/qyVF9oeo/versions/pDo1ElL2/sound-physics-remastered-fabric-1.21.10-1.5.1.jar";
      sha512 = "7d360daf63de4faa0a98faff246bf4de1d450c7aaceb3db06811aac90ed95809225d4a673d881d6a094fbf0dd9e0b8172d42739b7464312cd09aa3468292bcb7";
    })
    (pkgs.fetchurl {
      name = "spark-1.10.152-fabric.jar";
      url = "https://cdn.modrinth.com/data/l6YH9Als/versions/eqIoLvsF/spark-1.10.152-fabric.jar";
      sha512 = "f99295f91e4bdb8756547f52e8f45b1649d08ad18bc7057bb68beef8137fea1633123d252cfd76a177be394a97fc1278fe85df729d827738d8c61f341604d679";
    })
    (pkgs.fetchurl {
      name = "structure_layout_optimizer-1.1.4+1.21.9-fabric.jar";
      url = "https://cdn.modrinth.com/data/ayPU0OHc/versions/d0Vgh2W9/structure_layout_optimizer-1.1.4%2B1.21.9-fabric.jar";
      sha512 = "d6898dd42659506aae19fd9cffab4f112133758ad65ada35de68d9712ec4f8b0b9ff45cfafbb8f4ad00a219e2bd30a9a23b61de7208a44ea25389c957dc6f07c";
    })
    (pkgs.fetchurl {
      name = "t_and_t-fabric-neoforge-1.13.7.jar";
      url = "https://cdn.modrinth.com/data/DjLobEOy/versions/NXAdx4ui/t_and_t-fabric-neoforge-1.13.7.jar";
      sha512 = "7efea759aa7b59c7977fe2e1d189a417892bca2fdbabc0e547ea921425cde5f262e982556fc83d0209910627dc349e57cd542e72dd0783cac8c7c42218b7b36b";
    })
    (pkgs.fetchurl {
      name = "takesapillage-fabric-1.0.10+mc1.21.10.jar";
      url = "https://cdn.modrinth.com/data/QOJOg1gE/versions/mASCJXNc/takesapillage-fabric-1.0.10%2Bmc1.21.10.jar";
      sha512 = "3436c0bb3f90a31030ffc6b562b001c255185d331b071d3af2735ea343f3702da70b59c4d9fd6d931f1e4f44c60b4cebd7cd63f4027cdb7859737dd3143ba440";
    })
    (pkgs.fetchurl {
      name = "thermoo-8.1.1.jar";
      url = "https://cdn.modrinth.com/data/9TbXlAut/versions/uNsEi8tq/thermoo-8.1.1.jar";
      sha512 = "e9aa3c21186b8d3e6867b1452c3713544c3c183f70494735b5a827a353ea09dd52e234a160eabe63fab9a19fbf2988f34172009f41092a2788b38ccca5f6d880";
    })
    (pkgs.fetchurl {
      name = "thermoo-patches-3.8.1.jar";
      url = "https://cdn.modrinth.com/data/TYRF9nUy/versions/fX4uPUfk/thermoo-patches-3.8.1.jar";
      sha512 = "571035c269e8f588817e8bd46ad40b9a6a492686e999a00056be45408510d69a6e7ec6ae1227ec6a9e71f1811934e295843278b1dd9762001b51e67eaf4ca0fe";
    })
    (pkgs.fetchurl {
      name = "threadtweak-fabric-0.1.8+mc1.21.11.jar";
      url = "https://cdn.modrinth.com/data/vSEH1ERy/versions/9t60vZ1h/threadtweak-fabric-0.1.8%2Bmc1.21.11.jar";
      sha512 = "cab444eaecaa108b0d00eea9aa29415c4e2664ba64de3eedba3f63228686bc2d334f7de06bda22367244cfa0a4b21b7788e924108eef04bfe077bceff1c4b34e";
    })
    (pkgs.fetchurl {
      name = "toms_storage_fabric-1.21.10-2.7.0.jar";
      url = "https://cdn.modrinth.com/data/XZNI4Cpy/versions/Gk2tI0ZM/toms_storage_fabric-1.21.10-2.7.0.jar";
      sha512 = "a9b3016c6da636450af5f3861ef027f0f45f8c5ac521e409d7be423bc352d1adae83db66f64381935d5d6846e849dd7f63831ef10ed44d1778009f762a2cc465";
    })
    (pkgs.fetchurl {
      name = "trade-cycling-fabric-1.21.10-1.0.20.jar";
      url = "https://cdn.modrinth.com/data/qpPoAL6m/versions/U95L1wcI/trade-cycling-fabric-1.21.10-1.0.20.jar";
      sha512 = "113d7f3c983e64c72bc0f31e55a26b090f1dc2cc0c9a42e7f0bb3735209a4e9348eab38b7769200fafcaff387466de0ac3fc329be27a1cb4e25a9e82c5073196";
    })
    (pkgs.fetchurl {
      name = "trimica-1.4.4+1.21.10-fabric.jar";
      url = "https://cdn.modrinth.com/data/QWVeKieD/versions/A50VRhpm/trimica-1.4.4%2B1.21.10-fabric.jar";
      sha512 = "955fc67af53479c2593a05f7969207e96b6a3ba70834d807ae655c9a1cb52218412c68d55ac11cbb4ff85730b25600fd93fb4012ddefba0b4015803aec011557";
    })
    (pkgs.fetchurl {
      name = "undergroundbeacons-1.21.10-1.0.jar";
      url = "https://cdn.modrinth.com/data/SMC0xf5E/versions/veiLZ6lS/undergroundbeacons-1.21.10-1.0.jar";
      sha512 = "3676ff5c419a508cbe83905d7979e61a4ae574434c26358eaa7bd3a7f50dcfb9cb7ca6b84da4d69a967a0461fd3560874373964c8893e0b40810cc47ab7f6a95";
    })
    (pkgs.fetchurl {
      name = "underwater-swim-fix-1.0.2.jar";
      url = "https://cdn.modrinth.com/data/GsElPB9F/versions/kPPvQkYk/underwater-swim-fix-1.0.2.jar";
      sha512 = "865b0cebd4255efbe3de6ee7bc66f652da74e99cd97c0dc4dc4f31ce4c71eb9f686a58f7edd0a18663ee34b2fc571e9b4fdf8d8a80706460ad0adb462bbf36d5";
    })
    (pkgs.fetchurl {
      name = "underwaterenchanting-1.21.10-2.9.jar";
      url = "https://cdn.modrinth.com/data/e8JtTY4h/versions/rUylqsHW/underwaterenchanting-1.21.10-2.9.jar";
      sha512 = "273dd6cd772a8c36d98c6d1e8debe7f91cc5c85bb0a4e7a8b4c6e92fa8eee677c0f137bb3968b3b32b53d13efcced22523e0970341a3f266ef0f5f86cfb00875";
    })
    (pkgs.fetchurl {
      name = "walkablerails-1.0.0+1.21.1-fabric.jar";
      url = "https://cdn.modrinth.com/data/iQK4D5yO/versions/UGqxiBMd/walkablerails-1.0.0%2B1.21.1-fabric.jar";
      sha512 = "0c4ddeb3e8cc726b8aa7ebfe9e628248eda0063b900d14aa2c6cd87665639d5b775448d8b7f094e04f08adc907f7e3bfe824315976a996838eb3ac2f89d0ef5e";
    })
    (pkgs.fetchurl {
      name = "xaerominimap-fabric-1.21.10-25.3.10.jar";
      url = "https://cdn.modrinth.com/data/1bokaNcj/versions/KMM4KDVq/xaerominimap-fabric-1.21.10-25.3.10.jar";
      sha512 = "5e95b73fb8a302f5b4a05d52e3e0422c0903e18ba7a1a61ac73bd751c8fa0702ffb8e15b9f42eb67152693bb6107baa5b7a01529369bc5061ceb70f39521f971";
    })
    (pkgs.fetchurl {
      name = "xaeroworldmap-fabric-1.21.10-1.40.11.jar";
      url = "https://cdn.modrinth.com/data/NcUtCpym/versions/swwGbE2Y/xaeroworldmap-fabric-1.21.10-1.40.11.jar";
      sha512 = "2f4226563486e54d1c12e4d0e37928db392faba80bb2e8426077cf5fed6f04b127585756688584f7ad8dad227f92843fcd0c53d66d4252179bc42596bb8e3578";
    })
    (pkgs.fetchurl {
      name = "yet_another_config_lib_v3-3.8.2+1.21.10-fabric.jar";
      url = "https://cdn.modrinth.com/data/1eAoo2KR/versions/skcT0J9K/yet_another_config_lib_v3-3.8.2%2B1.21.10-fabric.jar";
      sha512 = "77dd4dbef6ab2d60863e1ac2f5c4e3eba16b3e6307fba5d9d70c20604e0f72863da20962c2aa99a8ef155debd5e60851c54937311b06e0dd4dbf4edb7a783b01";
    })
    (pkgs.fetchurl {
      name = "zfastnoise-1.0.19+1.21.9.jar";
      url = "https://cdn.modrinth.com/data/OnlVIpq5/versions/gFkoaoo8/zfastnoise-1.0.19%2B1.21.9.jar";
      sha512 = "9f2b59094617a33900cc128385b14e9ce64f349a15c360dc8567aaf923a763f98db3671584975ce472184e491e2e1252cd1da5070b2f3dd33d93ea079a964949";
    })
  ];
  datapacks = [
    (pkgs.runCommand "Big-Globe---DnT-Compat-1.2.0.zip" {} "cp ${./datapacks/Big-Globe---DnT-Compat-1.2.0.zip} $out")
    (pkgs.runCommand "Big-Globe---MNS-Compat-1.0.3.zip" {} "cp ${./datapacks/Big-Globe---MNS-Compat-1.0.3.zip} $out")
    (pkgs.runCommand "Big-Globe---MSS-Compat-1.0.3.zip" {} "cp ${./datapacks/Big-Globe---MSS-Compat-1.0.3.zip} $out")
    (pkgs.runCommand "Big-Globe---MVS-Compat-1.1.5.zip" {} "cp ${./datapacks/Big-Globe---MVS-Compat-1.1.5.zip} $out")
    (pkgs.runCommand "Big-Globe---RareSky-1.1.zip" {} "cp ${./datapacks/Big-Globe---RareSky-1.1.zip} $out")
    (pkgs.runCommand "bigglobe_antiquetradingship.zip" {} "cp ${./datapacks/bigglobe_antiquetradingship.zip} $out")
    (pkgs.runCommand "bigglobe_explorify.zip" {} "cp ${./datapacks/bigglobe_explorify.zip} $out")
    (pkgs.runCommand "bigglobe_remove_abandonedcity.zip" {} "cp ${./datapacks/bigglobe_remove_abandonedcity.zip} $out")
    (pkgs.runCommand "bigglobe_remove_obelisk.zip" {} "cp ${./datapacks/bigglobe_remove_obelisk.zip} $out")
    (pkgs.runCommand "bigglobe_tags-1.0.0.zip" {} "cp ${./datapacks/bigglobe_tags-1.0.0.zip} $out")
    (pkgs.runCommand "bigglobe_takespillage.zip" {} "cp ${./datapacks/bigglobe_takespillage.zip} $out")
    (pkgs.runCommand "bigglobe_towns_and_towers_compatibility.zip" {} "cp ${./datapacks/bigglobe_towns_and_towers_compatibility.zip} $out")
    (pkgs.runCommand "bigglobe_unwrecked_ships.zip" {} "cp ${./datapacks/bigglobe_unwrecked_ships.zip} $out")
    (pkgs.runCommand "Create-Big-Globe-Compatibility_1.21.x.zip" {} "cp ${./datapacks/Create-Big-Globe-Compatibility_1.21.x.zip} $out")
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
