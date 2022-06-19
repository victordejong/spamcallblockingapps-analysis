package com.google.android.gms.measurement.internal;

import android.util.Log;
/* renamed from: com.google.android.gms.measurement.internal.k3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k3.class */
final class RunnableC1534k3 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ int f4343f;

    /* renamed from: g */
    final /* synthetic */ String f4344g;

    /* renamed from: h */
    final /* synthetic */ Object f4345h;

    /* renamed from: i */
    final /* synthetic */ Object f4346i;

    /* renamed from: j */
    final /* synthetic */ Object f4347j;

    /* renamed from: k */
    final /* synthetic */ n3 f4348k;

    RunnableC1534k3(n3 n3Var, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f4348k = n3Var;
        this.f4343f = i;
        this.f4344g = str;
        this.f4345h = obj;
        this.f4346i = obj2;
        this.f4347j = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c4 A = ((l5) this.f4348k).a.A();
        if (!A.k()) {
            Log.println(6, this.f4348k.z(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (n3.C(this.f4348k) == 0) {
            if (((l5) this.f4348k).a.z().q()) {
                n3 n3Var = this.f4348k;
                ((l5) n3Var).a.f();
                n3.D(n3Var, 'C');
            } else {
                n3 n3Var2 = this.f4348k;
                ((l5) n3Var2).a.f();
                n3.D(n3Var2, 'c');
            }
        }
        if (n3.E(this.f4348k) < 0) {
            n3 n3Var3 = this.f4348k;
            ((l5) n3Var3).a.z().p();
            n3.F(n3Var3, 39000L);
        }
        char charAt = "01VDIWEA?".charAt(this.f4343f);
        char C = n3.C(this.f4348k);
        long E = n3.E(this.f4348k);
        String A2 = n3.A(true, this.f4344g, this.f4345h, this.f4346i, this.f4347j);
        StringBuilder sb = new StringBuilder(String.valueOf(A2).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(C);
        sb.append(E);
        sb.append(":");
        sb.append(A2);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.f4344g.substring(0, 1024);
        }
        C1471a4 c1471a4 = A.d;
        if (c1471a4 == null) {
            return;
        }
        c1471a4.m1709a(str, 1L);
    }
}
