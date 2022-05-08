package com.firstorion.libcyd;

import android.graphics.Color;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/ColorHelper.class */
final class ColorHelper {
    private ColorHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int tryParseColor(String str, int i) {
        try {
            return Color.parseColor(str);
        } catch (Throwable th) {
            return i;
        }
    }
}
