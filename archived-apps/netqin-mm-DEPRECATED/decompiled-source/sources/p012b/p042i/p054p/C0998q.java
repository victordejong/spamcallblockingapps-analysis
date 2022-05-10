package p012b.p042i.p054p;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: b.i.p.q */
/* loaded from: classes-dex2jar.jar:b/i/p/q.class */
public class C0998q {

    /* renamed from: a */
    public int f4248a;

    /* renamed from: b */
    public int f4249b;

    public C0998q(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public int m35264a() {
        return this.f4248a | this.f4249b;
    }

    /* renamed from: a */
    public void m35263a(View view) {
        m35262a(view, 0);
    }

    /* renamed from: a */
    public void m35262a(View view, int i) {
        if (i == 1) {
            this.f4249b = 0;
        } else {
            this.f4248a = 0;
        }
    }

    /* renamed from: a */
    public void m35261a(View view, View view2, int i) {
        m35260a(view, view2, i, 0);
    }

    /* renamed from: a */
    public void m35260a(View view, View view2, int i, int i2) {
        if (i2 == 1) {
            this.f4249b = i;
        } else {
            this.f4248a = i;
        }
    }
}
