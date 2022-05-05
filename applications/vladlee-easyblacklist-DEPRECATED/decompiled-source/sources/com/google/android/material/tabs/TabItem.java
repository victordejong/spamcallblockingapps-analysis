package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.C0484bm;
import com.google.android.material.C2913a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabItem.class */
public class TabItem extends View {

    /* renamed from: a */
    public final CharSequence f18548a;

    /* renamed from: b */
    public final Drawable f18549b;

    /* renamed from: c */
    public final int f18550c;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0484bm a = C0484bm.m9093a(context, attributeSet, C2913a.C2924k.f17681cO);
        this.f18548a = a.m9089c(C2913a.C2924k.f17684cR);
        this.f18549b = a.m9099a(C2913a.C2924k.f17682cP);
        this.f18550c = a.m9082f(C2913a.C2924k.f17683cQ, 0);
        a.m9100a();
    }
}
