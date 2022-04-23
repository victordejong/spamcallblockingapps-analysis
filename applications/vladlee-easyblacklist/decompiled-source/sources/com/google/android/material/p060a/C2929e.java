package com.google.android.material.p060a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;
/* renamed from: com.google.android.material.a.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/e.class */
public final class C2929e extends Property<Drawable, Integer> {

    /* renamed from: a */
    public static final Property<Drawable, Integer> f17817a = new C2929e();

    /* renamed from: b */
    private final WeakHashMap<Drawable, Integer> f17818b = new WeakHashMap<>();

    private C2929e() {
        super(Integer.class, "drawableAlphaCompat");
    }

    @Override // android.util.Property
    public final /* synthetic */ Integer get(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable2.getAlpha());
        }
        if (this.f17818b.containsKey(drawable2)) {
            return this.f17818b.get(drawable2);
        }
        return 255;
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(Drawable drawable, Integer num) {
        Drawable drawable2 = drawable;
        Integer num2 = num;
        if (Build.VERSION.SDK_INT < 19) {
            this.f17818b.put(drawable2, num2);
        }
        drawable2.setAlpha(num2.intValue());
    }
}
