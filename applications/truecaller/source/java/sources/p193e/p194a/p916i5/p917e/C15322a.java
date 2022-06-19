package p193e.p194a.p916i5.p917e;

import android.content.Context;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import p193e.p194a.p1049l4.C17422k;
import s1.z.c.l;
/* renamed from: e.a.i5.e.a */
/* loaded from: classes14-dex2jar.jar:e/a/i5/e/a.class */
public final class C15322a {
    /* renamed from: a */
    public static final int m18927a(Context context, int i) {
        l.e(context, "$this$getColorFromAttr");
        ContextThemeWrapper m16113E = C17422k.m16113E(context, true);
        TypedValue typedValue = new TypedValue();
        m16113E.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.data;
    }

    /* renamed from: b */
    public static final int m18926b(Context context, int i) {
        l.e(context, "$this$getDrawableFromAttr");
        ContextThemeWrapper m16113E = C17422k.m16113E(context, true);
        TypedValue typedValue = new TypedValue();
        m16113E.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }
}
