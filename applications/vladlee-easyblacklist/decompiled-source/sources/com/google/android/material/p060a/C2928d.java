package com.google.android.material.p060a;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.C2913a;
/* renamed from: com.google.android.material.a.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/d.class */
public final class C2928d extends Property<ViewGroup, Float> {

    /* renamed from: a */
    public static final Property<ViewGroup, Float> f17816a = new C2928d("childrenAlpha");

    private C2928d(String str) {
        super(Float.class, str);
    }

    @Override // android.util.Property
    public final /* synthetic */ Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(C2913a.C2919f.f17496f);
        return f != null ? f : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(ViewGroup viewGroup, Float f) {
        ViewGroup viewGroup2 = viewGroup;
        float floatValue = f.floatValue();
        viewGroup2.setTag(C2913a.C2919f.f17496f, Float.valueOf(floatValue));
        int childCount = viewGroup2.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup2.getChildAt(i).setAlpha(floatValue);
        }
    }
}
