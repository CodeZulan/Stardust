#include <YSI_Coding\y_hooks>

hook OnGameModeInit(){
    new tmpobjid;
    
    tmpobjid = CreateDynamicObject(3749, 1592.923095, 641.526062, 15.558897, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    SetDynamicObjectMaterial(tmpobjid, 1, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 3, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0xFFFFFFAA);
    tmpobjid = CreateDynamicObject(3749, 1608.503051, 641.515747, 15.548897, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    SetDynamicObjectMaterial(tmpobjid, 1, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 3, 10101, "2notherbuildsfe", "sl_vicbrikwall01", 0xFFFFFFAA);

    CreateDynamicObject(3585, 1577.215332, 658.686523, 11.384717, 0.000000, 0.000000, 68.600006, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2567, 1582.269653, 661.825927, 11.684554, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2567, 1587.526000, 661.793395, 11.684554, 0.000000, 0.000000, -1.899999, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3593, 1580.017944, 658.463989, 11.726877, 28.899999, 31.199998, -28.599998, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3594, 1582.588623, 657.509399, 10.332133, 3.899997, 0.000000, 37.700008, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(776, 1576.011596, 654.351623, 9.183791, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(775, 1571.779785, 648.395263, 9.780315, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19977, 1573.948242, 656.052307, 9.671875, 0.000000, 0.000000, -104.599990, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1546, 1583.291748, 654.798522, 10.524807, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2062, 1577.806884, 655.373840, 10.337358, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(18451, 1571.416870, 646.598693, 10.292518, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(9238, 1564.246215, 643.087036, 11.490307, 0.000000, 0.000000, 106.200012, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1810, 1567.470581, 639.721191, 9.790560, 0.000000, 0.000000, 122.599975, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(804, 1583.379272, 659.831420, 10.776069, 0.000000, 0.000000, 172.399993, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1418, 1557.839477, 641.106872, 10.583391, 0.000000, 0.000000, -89.699996, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1722, 1570.941162, 638.852783, 9.784772, 0.000000, 0.000000, 37.699989, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1711, 1568.014038, 642.086853, 9.759859, 0.000000, 0.000000, 25.899999, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1735, 1569.311401, 642.484558, 9.792078, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19793, 1569.381835, 640.499206, 9.834575, 0.000000, 0.100000, 174.799972, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19793, 1569.645019, 640.120666, 9.835748, 0.000000, 0.100000, 80.999984, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1418, 1557.858276, 637.597045, 10.583391, 0.000000, 0.000000, -89.699996, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1418, 1557.874633, 634.216491, 10.583391, 0.000000, 0.000000, -89.699996, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1418, 1557.893554, 630.736938, 10.583391, 0.000000, 0.000000, -89.699996, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19793, 1569.143798, 640.251831, 9.962533, 0.000000, 7.800000, -128.600021, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(18726, 1569.076538, 640.091613, 8.343705, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(18688, 1569.103027, 639.984008, 7.575553, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19632, 1569.312133, 640.166381, 9.788393, 0.000000, 0.000000, -7.299999, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1418, 1558.713989, 627.436035, 10.583391, 0.000000, 0.000000, -62.900039, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1418, 1561.001831, 625.044616, 10.583391, 0.000000, 0.000000, -29.000045, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(775, 1557.839233, 643.025268, 9.780315, 0.000000, 0.000000, -79.700004, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(655, 1615.481445, 637.245971, 9.793394, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(655, 1615.431152, 633.795898, 9.793394, 0.000000, 0.000000, -33.599994, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3578, 1591.612304, 627.089172, 9.060309, 0.000014, 0.000000, 89.799964, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(657, 1580.826171, 644.013122, 9.774876, 0.000000, 0.000000, 80.099990, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1582.681152, 663.062561, 12.505409, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1593.001342, 663.062561, 12.505409, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1603.271972, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1613.602050, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1623.901977, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1634.202148, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1644.482788, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1654.753906, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1665.083984, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1675.383666, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1685.823730, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1696.183471, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1706.493530, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1716.753173, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1726.994018, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1737.204467, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1747.573364, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(8674, 1752.443481, 663.062561, 12.505409, 0.000000, 0.000007, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3860, 1559.998779, 637.250610, 10.964123, 0.000000, 0.000000, 87.100006, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3862, 1559.832641, 632.737365, 10.985787, 0.000000, 0.000000, 95.400009, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3863, 1561.917480, 628.135070, 10.960306, 0.000000, 0.000000, 127.899993, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1271, 1562.867675, 623.942810, 10.160312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1271, 1563.616577, 623.933105, 10.160312, 0.000000, 0.000000, -11.099998, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1271, 1562.906738, 624.049499, 10.800312, 0.000000, 0.000000, -45.500000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2991, 1566.538940, 624.081909, 10.440311, 0.000000, 0.000000, -8.099996, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19638, 1560.719970, 637.834289, 10.608437, 0.000000, 0.000000, 28.700002, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19636, 1560.709960, 637.044860, 10.601590, 0.000000, 0.000000, -71.599983, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(917, 1561.005615, 638.495422, 10.736660, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(917, 1561.136352, 638.054016, 10.746660, 0.000000, 0.000000, -53.799991, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1440, 1559.437988, 639.645935, 10.317671, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19587, 1560.625610, 636.234741, 10.632745, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2654, 1560.809082, 632.089355, 10.846771, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2694, 1560.597412, 633.668579, 10.730313, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19570, 1561.330200, 629.378417, 10.600312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19570, 1561.590454, 629.558593, 10.600312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19570, 1561.600463, 629.368896, 10.600312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19572, 1562.351684, 628.968444, 10.600311, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19565, 1563.469970, 627.888854, 10.590312, 0.000000, 0.000000, -21.999998, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19566, 1563.169677, 628.149047, 10.610302, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1450, 1562.466674, 625.227233, 10.410319, 0.000000, 0.000000, 115.199974, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1328, 1558.868530, 634.944885, 10.333927, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2860, 1565.248046, 624.892211, 11.080304, 0.000000, 0.000000, 173.899993, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3276, 1574.307617, 622.387145, 10.579539, 0.000000, 0.000000, -6.300001, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1281, 1566.332031, 632.899841, 10.599388, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1281, 1569.352539, 632.899841, 10.599388, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1281, 1572.381958, 632.899841, 10.599388, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1280, 1566.491088, 629.742065, 10.154442, 0.000000, 0.000000, -84.899986, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1280, 1569.102539, 629.717895, 10.154442, 0.000000, 0.000000, -93.999977, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1280, 1571.614746, 629.324340, 10.154442, 0.000000, 0.000000, -103.399978, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3578, 1596.081420, 627.074218, 9.060309, 0.000014, 0.000000, 89.799964, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1361, 1573.401000, 628.823547, 10.567580, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(859, 1572.495117, 628.523803, 9.732309, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(860, 1573.061767, 628.013610, 9.806675, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(939, 1575.630493, 623.734558, 12.152497, 0.000000, 0.000000, -6.599998, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1583.302612, 623.413330, 10.260313, 0.000000, 0.000000, 88.200027, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1583.432373, 627.541259, 10.260313, 0.000000, 0.000000, 88.200027, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1583.638427, 634.088256, 10.260313, 0.000000, 0.000000, 89.400009, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1583.349121, 638.248779, 10.260313, 0.000000, 0.000000, 98.499992, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1582.053955, 642.140441, 10.260313, 0.000000, 0.000000, 118.299972, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1579.135620, 645.437683, 10.260313, 0.000000, 0.000000, 144.599914, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1575.605224, 647.578613, 10.260313, 0.000000, 0.000000, 153.199966, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1361, 1573.176147, 648.402160, 10.569898, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1583.432495, 619.309326, 10.260313, 0.000000, 0.000000, 95.200004, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1585.688476, 617.249938, 10.260313, 0.000000, 0.000000, 179.899948, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1589.888671, 617.242736, 10.260313, 0.000000, 0.000000, 179.899948, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1594.038940, 617.235656, 10.260313, 0.000000, 0.000000, 179.899948, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1598.197998, 617.228515, 10.260313, 0.000000, 0.000000, 179.899948, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1602.348510, 617.221496, 10.260313, 0.000000, 0.000000, 179.899948, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1606.508666, 617.214294, 10.260313, 0.000000, 0.000000, 179.899948, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1610.639160, 617.206970, 10.260313, 0.000000, 0.000000, 179.899948, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1614.789672, 617.199645, 10.260313, 0.000000, 0.000000, 179.899948, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(970, 1617.166381, 619.267517, 10.260313, 0.000000, 0.000000, -98.300056, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3578, 1600.743041, 627.057250, 9.060309, 0.000014, 0.000000, 89.799964, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3578, 1605.322875, 627.041259, 9.060309, 0.000014, 0.000000, 89.799964, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3578, 1610.233276, 627.024230, 9.060309, 0.000014, 0.000000, 89.799964, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(655, 1615.431152, 630.675964, 9.793394, 0.000000, 0.000000, 6.399998, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(655, 1615.431152, 627.965881, 9.793394, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(655, 1615.431152, 624.375732, 9.793394, 0.000000, 0.000000, 55.099998, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2634, 1628.300903, 601.841308, 2.297811, 0.000000, 0.000000, 179.899963, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3860, 1591.824584, 659.220703, 11.014032, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3860, 1594.864257, 659.220703, 11.014032, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3861, 1599.708618, 659.277465, 10.969123, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1342, 1602.019409, 658.579406, 10.807132, 0.000000, 0.000000, 88.899978, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19638, 1600.679565, 658.689880, 10.591748, 0.000000, 0.000000, -2.599999, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19636, 1600.039428, 658.459289, 10.612328, 0.000000, 0.000000, 12.699997, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(917, 1598.522094, 658.176757, 10.761032, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(917, 1598.522094, 658.576660, 10.761032, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19811, 1600.117431, 659.096496, 10.672415, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2969, 1595.887939, 658.278503, 10.748532, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2969, 1595.887939, 658.738708, 10.748532, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2969, 1595.887939, 658.548522, 10.958533, 0.000000, 0.000000, 36.499992, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2040, 1593.510131, 658.233032, 10.771810, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2040, 1593.720336, 658.233032, 10.771810, 0.000000, 0.000000, 8.499999, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2359, 1594.700927, 658.537963, 10.851242, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3015, 1593.779052, 658.812500, 10.751943, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2061, 1596.053100, 657.977294, 10.922294, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3014, 1590.919555, 658.672302, 10.891856, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2358, 1591.302978, 658.115661, 10.772297, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(357, 1592.874633, 658.159240, 10.623376, 75.600036, -10.299995, -160.399917, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(357, 1592.846557, 658.329162, 10.635916, 75.600036, -10.299995, -160.399917, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2059, 1592.136352, 658.834899, 10.692182, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3040, 1605.043945, 658.333923, 12.346560, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1776, 1600.048095, 644.433959, 10.866172, 0.000000, 0.000000, -179.100051, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(346, 1594.313598, 658.438598, 10.807022, -78.900024, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(3467, 1597.937988, 657.625793, 10.494160, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19328, 1600.592773, 643.633422, 13.425963, 0.000000, 0.000000, -179.999847, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(2115, 1601.114379, 645.491027, 9.670862, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(19636, 1601.488525, 645.504943, 10.470869, 0.000000, 0.000000, -69.599983, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1431, 1603.428710, 642.846923, 10.330860, 0.000000, 0.000000, -71.199996, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1412, 1616.774047, 646.218139, 11.040307, 0.000000, 0.000000, -92.299987, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1412, 1617.338500, 660.307189, 11.040307, 0.000000, 0.000000, -92.299987, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1412, 1617.127319, 655.051513, 11.040307, 0.000000, 0.000000, -92.299987, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1361, 1616.215087, 652.697875, 10.574727, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1361, 1616.215087, 648.537475, 10.574727, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(886, 1616.652465, 653.789794, 9.700751, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(886, 1616.652465, 656.619934, 9.700751, 0.000000, 0.000000, 47.600002, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(886, 1616.810424, 658.792846, 9.700751, 0.000000, 0.000000, -7.099995, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(886, 1617.108276, 661.184509, 9.700751, 0.000000, 0.000000, -28.599998, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(886, 1616.652465, 646.649963, 9.700751, 0.000000, 0.000000, -94.800003, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(886, 1616.523803, 645.115478, 9.700751, 0.000000, 0.000000, -47.900062, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(708, 1611.606933, 658.690124, 9.665047, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 
    CreateDynamicObject(1679, 1608.916625, 655.892700, 10.254561, 0.000000, 0.000000, 0.000000, -1, -1, -1, 500.00, 500.00); 

    Log(LOG_MODULE, "[misc/mappings] Black Market Mappings loaded...");
    return 1;
}