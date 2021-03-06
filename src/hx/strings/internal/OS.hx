/*
 * Copyright (c) 2016-2020 Vegard IT GmbH (https://vegardit.com) and contributors.
 * SPDX-License-Identifier: Apache-2.0
 */
package hx.strings.internal;

/**
 * <b>IMPORTANT:</b> This class it not part of the API. Direct usage is discouraged.
 *
 * @author Sebastian Thomschke, Vegard IT GmbH
 */
@:noDoc @:dox(hide)
@:noCompletion
class OS {

   #if js
   static final isNodeJS = untyped __js__("(typeof process !== 'undefined') && (typeof process.release !== 'undefined') && (process.release.name === 'node')");
   #end

   public static var isWindows(default, never):Bool = {
      #if flash
      final os = flash.system.Capabilities.os;
      #elseif js
      final os = isNodeJS ? untyped __js__("process.platform") : js.Browser.navigator.platform;
      #else
      final os = Sys.systemName();
      #end
      ~/win/i.match(os);
   }
}
