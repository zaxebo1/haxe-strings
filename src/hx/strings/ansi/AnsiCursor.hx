/*
 * Copyright (c) 2016-2020 Vegard IT GmbH (https://vegardit.com) and contributors.
 * SPDX-License-Identifier: Apache-2.0
 */
package hx.strings.ansi;

/**
 *
 * @author Sebastian Thomschke, Vegard IT GmbH
 */
enum AnsiCursor {
   GoToHome;
   GoToPos(line:Int, column:Int);
   MoveUp(lines:Int);
   MoveDown(lines:Int);
   MoveRight(columns:Int);
   MoveLeft(columns:Int);
   SavePos;
   RestorePos;
}
