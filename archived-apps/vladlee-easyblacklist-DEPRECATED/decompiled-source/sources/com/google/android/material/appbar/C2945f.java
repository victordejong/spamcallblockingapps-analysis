package com.google.android.material.appbar;

import android.view.View;
import androidx.core.p037g.C0741t;
/* renamed from: com.google.android.material.appbar.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/f.class */
final class C2945f {

    /* renamed from: a */
    private final View f17906a;

    /* renamed from: b */
    private int f17907b;

    /* renamed from: c */
    private int f17908c;

    /* renamed from: d */
    private int f17909d;

    /* renamed from: e */
    private int f17910e;

    public C2945f(View view) {
        this.f17906a = view;
    }

    /* renamed from: d */
    private void m1451d() {
        View view = this.f17906a;
        C0741t.m8332c(view, this.f17909d - (view.getTop() - this.f17907b));
        View view2 = this.f17906a;
        C0741t.m8330d(view2, this.f17910e - (view2.getLeft() - this.f17908c));
    }

    /* renamed from: a */
    public final void m1456a() {
        this.f17907b = this.f17906a.getTop();
        this.f17908c = this.f17906a.getLeft();
        m1451d();
    }

    /* renamed from: a */
    public final boolean m1455a(int i) {
        if (this.f17909d == i) {
            return false;
        }
        this.f17909d = i;
        m1451d();
        return true;
    }

    /* renamed from: b */
    public final int m1454b() {
        return this.f17909d;
    }

    /* renamed from: b */
    public final boolean m1453b(int i) {
        if (this.f17910e == i) {
            return false;
        }
        this.f17910e = i;
        m1451d();
        return true;
    }

    /* renamed from: c */
    public final int m1452c() {
        return this.f17907b;
    }
}
