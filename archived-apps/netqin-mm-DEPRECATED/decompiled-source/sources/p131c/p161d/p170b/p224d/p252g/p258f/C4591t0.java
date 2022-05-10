package p131c.p161d.p170b.p224d.p252g.p258f;

import android.database.ContentObserver;
import android.os.Handler;
import com.google.android.gms.internal.measurement.zzct;
/* renamed from: c.d.b.d.g.f.t0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/t0.class */
public final class C4591t0 extends ContentObserver {

    /* renamed from: a */
    public final /* synthetic */ zzct f16885a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4591t0(zzct zzctVar, Handler handler) {
        super(null);
        this.f16885a = zzctVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f16885a.m9858b();
    }
}
