package com.hiya.stingray.util;

import android.content.Context;
import android.content.res.Resources;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.o */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/o.class */
public final class C1838o {
    /* renamed from: a */
    public static final String m883a(Context context, int i) {
        k.g(context, "$this$getStringWithAppName");
        String string = context.getString(i, context.getString(2131820584));
        k.c(string, "this.getString(stringRes…tring(R.string.app_name))");
        return string;
    }

    /* renamed from: b */
    public static final boolean m882b(Context context) {
        k.g(context, "$this$isDarkTheme");
        Resources resources = context.getResources();
        k.c(resources, "resources");
        return (resources.getConfiguration().uiMode & 48) == 32;
    }
}
