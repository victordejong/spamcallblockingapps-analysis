package com.adbert.p009a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
/* renamed from: com.adbert.a.a */
/* loaded from: classes-dex2jar.jar:com/adbert/a/a.class */
public class C1359a {

    /* renamed from: b */
    public Context f330b;

    /* renamed from: c */
    public int f331c;

    /* renamed from: d */
    public int f332d;

    /* renamed from: e */
    public boolean f333e;

    /* renamed from: f */
    public boolean f334f;

    /* renamed from: g */
    public int f335g;

    /* renamed from: h */
    public int f336h;

    /* renamed from: i */
    public int f337i = 320;

    /* renamed from: j */
    public int f338j = 50;

    /* renamed from: a */
    public int f329a = 0;

    public C1359a(Context context) {
        this.f330b = context;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            this.f331c = displayMetrics.widthPixels;
            this.f332d = displayMetrics.heightPixels;
        } catch (Exception e) {
            C1402g.m37141a(e);
            if (Build.VERSION.SDK_INT >= 13) {
                try {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    Point point = new Point();
                    defaultDisplay.getSize(point);
                    this.f331c = point.x;
                    this.f332d = point.y;
                } catch (Exception e2) {
                    C1402g.m37141a(e2);
                }
            }
        }
    }

    /* renamed from: a */
    private int m37291a(float f, int i, int i2) {
        return (int) ((f / i) * i2);
    }

    /* renamed from: i */
    private boolean m37280i() {
        return this.f333e && !m37282g();
    }

    /* renamed from: a */
    public int m37292a() {
        return this.f331c;
    }

    /* renamed from: a */
    public void m37290a(int i) {
        this.f334f = true;
        this.f335g = (int) ((i / this.f338j) * this.f337i);
        this.f336h = i;
    }

    /* renamed from: a */
    public void m37289a(boolean z) {
        this.f333e = z;
    }

    /* renamed from: b */
    public int m37288b() {
        return this.f332d;
    }

    /* renamed from: b */
    public void m37287b(int i) {
        this.f329a = i;
    }

    /* renamed from: c */
    public int m37286c() {
        int i = this.f329a;
        return i > 0 ? i : m37280i() ? m37288b() : m37292a();
    }

    /* renamed from: d */
    public int m37285d() {
        return this.f334f ? this.f336h : m37291a(m37286c(), this.f337i, this.f338j);
    }

    /* renamed from: e */
    public int m37284e() {
        return this.f334f ? this.f335g : m37286c();
    }

    /* renamed from: f */
    public int m37283f() {
        return this.f334f ? this.f336h : m37285d();
    }

    /* renamed from: g */
    public boolean m37282g() {
        boolean z = true;
        if (this.f330b.getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public boolean m37281h() {
        return this.f333e;
    }
}
