package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.C1027R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabItem.class */
public class TabItem extends View {

    /* renamed from: f */
    public final CharSequence f11320f;

    /* renamed from: g */
    public final Drawable f11321g;

    /* renamed from: h */
    public final int f11322h;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray u = TintTypedArray.m21245u(context, attributeSet, C1027R.styleable.TabItem);
        this.f11320f = u.m21250p(C1027R.styleable.TabItem_android_text);
        this.f11321g = u.m21259g(C1027R.styleable.TabItem_android_icon);
        this.f11322h = u.m21252n(C1027R.styleable.TabItem_android_layout, 0);
        u.m21243w();
    }
}
