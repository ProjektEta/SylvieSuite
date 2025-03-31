		local AllowedMethods = lookupify{ "__index", "__namecall", "__newindex", "__call", "__concat", "__unm", "__add", "__sub", "__mul", "__div", "__pow", "__mod", "__tostring", "__eq", "__lt", "__le", "__gc", "__len" }
		getgenv().hookmetamethod = newcclosure(function(ud, method, fn)
			assert(ud ~= nil, 'invalid argument #1 (object expected)', 0)
			assert(typeof(method) == "string", 'invalid argument #2 (string expected)', 0)
			assert(typeof(fn) == "function", 'invalid argument #3 (function expected)', 0)
			assert(AllowedMethods[method], 'invalid argument #2 (function mode expected)', 0)

			local gmt = getrawmetatable(ud)
			local old_fn = rawget(gmt, method)

			if (old_fn == nil and type(old_fn) ~= "function") then 
				return 
			end

			setreadonly(gmt, false)
			rawset(gmt, method, (islclosure(fn) and newcclosure(fn) or fn))
			setreadonly(gmt, true)
			return old_fn
		end)
