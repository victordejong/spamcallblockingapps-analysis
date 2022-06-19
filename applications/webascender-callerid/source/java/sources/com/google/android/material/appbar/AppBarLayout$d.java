package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import g.f.a.e.l;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$d.class */
public class AppBarLayout$d extends LinearLayout.LayoutParams {

    /* renamed from: a */
    int f4650a;

    /* renamed from: b */
    Interpolator f4651b;

    public AppBarLayout$d(int i, int i2) {
        super(i, i2);
        this.f4650a = 1;
    }

    public AppBarLayout$d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4650a = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.j);
        this.f4650a = obtainStyledAttributes.getInt(l.k, 0);
        int i = l.l;
        if (obtainStyledAttributes.hasValue(i)) {
            this.f4651b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(i, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public AppBarLayout$d(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f4650a = 1;
    }

    public AppBarLayout$d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f4650a = 1;
    }

    public AppBarLayout$d(LinearLayout.LayoutParams layoutParams) {
        super(layoutParams);
        this.f4650a = 1;
    }

    /* renamed from: a */
    public int m1425a() {
        return this.f4650a;
    }

    /* renamed from: b */
    public Interpolator m1424b() {
        return this.f4651b;
    }

    /* renamed from: c */
    boolean m1423c() {
        int i = this.f4650a;
        boolean z = true;
        if ((i & 1) != 1 || (i & 10) == 0) {
            z = false;
        }
        return z;
    }
}
