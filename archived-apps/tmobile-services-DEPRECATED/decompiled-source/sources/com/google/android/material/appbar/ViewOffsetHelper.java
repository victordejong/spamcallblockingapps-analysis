package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/ViewOffsetHelper.class */
class ViewOffsetHelper {

    /* renamed from: a */
    private final View f10036a;

    /* renamed from: b */
    private int f10037b;

    /* renamed from: c */
    private int f10038c;

    /* renamed from: d */
    private int f10039d;

    /* renamed from: e */
    private int f10040e;

    /* renamed from: f */
    private boolean f10041f = true;

    /* renamed from: g */
    private boolean f10042g = true;

    public ViewOffsetHelper(View view) {
        this.f10036a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10632a() {
        View view = this.f10036a;
        ViewCompat.m19212Y(view, this.f10039d - (view.getTop() - this.f10037b));
        View view2 = this.f10036a;
        ViewCompat.m19213X(view2, this.f10040e - (view2.getLeft() - this.f10038c));
    }

    /* renamed from: b */
    public int m10631b() {
        return this.f10037b;
    }

    /* renamed from: c */
    public int m10630c() {
        return this.f10039d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m10629d() {
        this.f10037b = this.f10036a.getTop();
        this.f10038c = this.f10036a.getLeft();
    }

    /* renamed from: e */
    public boolean m10628e(int i) {
        if (!this.f10042g || this.f10040e == i) {
            return false;
        }
        this.f10040e = i;
        m10632a();
        return true;
    }

    /* renamed from: f */
    public boolean m10627f(int i) {
        if (!this.f10041f || this.f10039d == i) {
            return false;
        }
        this.f10039d = i;
        m10632a();
        return true;
    }
}
