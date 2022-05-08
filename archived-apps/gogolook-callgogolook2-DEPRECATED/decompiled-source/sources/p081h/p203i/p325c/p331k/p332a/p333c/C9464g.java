package p081h.p203i.p325c.p331k.p332a.p333c;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
/* renamed from: h.i.c.k.a.c.g */
/* loaded from: classes2-dex2jar.jar:h/i/c/k/a/c/g.class */
public final class C9464g implements AppMeasurement.AbstractC3585c {

    /* renamed from: a */
    public final /* synthetic */ C9463f f21609a;

    public C9464g(C9463f fVar) {
        this.f21609a = fVar;
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC3585c
    /* renamed from: a */
    public final void mo15103a(String str, String str2, Bundle bundle, long j) {
        AbstractC9452a.AbstractC9454b bVar;
        if (str != null && !str.equals("crash") && C9460c.m15107b(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("name", str2);
            bundle2.putLong("timestampInMillis", j);
            bundle2.putBundle("params", bundle);
            bVar = this.f21609a.f21606a;
            bVar.mo15029a(3, bundle2);
        }
    }
}
