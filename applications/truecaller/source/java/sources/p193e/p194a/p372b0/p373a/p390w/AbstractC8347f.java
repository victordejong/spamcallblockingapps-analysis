package p193e.p194a.p372b0.p373a.p390w;

import com.google.android.material.appbar.AppBarLayout;
import p193e.p194a.p682e.C13317u1;
/* renamed from: e.a.b0.a.w.f */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/w/f.class */
public abstract class AbstractC8347f implements AppBarLayout.c {

    /* renamed from: a */
    public int f25675a;

    /* renamed from: b */
    public int f25676b;

    /* renamed from: Xm */
    public void m28648Xm(AppBarLayout appBarLayout, int i) {
        if (this.f25676b == 0) {
            this.f25676b = appBarLayout.getTotalScrollRange();
        }
        int i2 = this.f25676b;
        boolean z = true;
        if ((i == 0 || i2 == 0 || Math.abs(i) == i2) ? false : true) {
            if (i >= this.f25675a) {
                z = false;
            }
            ((C13317u1) this).f38696c.mo28649v7(z);
        }
        this.f25675a = i;
    }
}
