package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.b;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.common.api.internal.l2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/l2.class */
final class RunnableC0852l2 implements Runnable {

    /* renamed from: f */
    private final C0846i2 f3426f;

    /* renamed from: g */
    final /* synthetic */ j2 f3427g;

    RunnableC0852l2(j2 j2Var, C0846i2 c0846i2) {
        this.f3427g = j2Var;
        this.f3426f = c0846i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f3427g.g) {
            return;
        }
        b m3557b = this.f3426f.m3557b();
        if (m3557b.B1()) {
            j2 j2Var = this.f3427g;
            AbstractC0839h abstractC0839h = j2Var.f3365f;
            Activity m3637b = j2Var.m3637b();
            PendingIntent A1 = m3557b.A1();
            C0931r.m3308k(A1);
            abstractC0839h.startActivityForResult(GoogleApiActivity.m3697b(m3637b, A1, this.f3426f.m3558a(), false), 1);
        } else if (this.f3427g.j.m(m3557b.y1())) {
            j2 j2Var2 = this.f3427g;
            j2Var2.j.B(j2Var2.m3637b(), this.f3427g.f3365f, m3557b.y1(), 2, this.f3427g);
        } else if (m3557b.y1() != 18) {
            this.f3427g.n(m3557b, this.f3426f.m3558a());
        } else {
            Dialog u = e.u(this.f3427g.m3637b(), this.f3427g);
            j2 j2Var3 = this.f3427g;
            j2Var3.j.w(j2Var3.m3637b().getApplicationContext(), new k2(this, u));
        }
    }
}
