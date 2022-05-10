package p131c.p161d.p170b.p224d.p252g.p255c;

import android.database.ContentObserver;
import android.os.Handler;
import com.google.android.gms.internal.clearcut.zzab;
/* renamed from: c.d.b.d.g.c.a */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/a.class */
public final class C4315a extends ContentObserver {

    /* renamed from: a */
    public final /* synthetic */ zzab f16478a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4315a(zzab zzabVar, Handler handler) {
        super(null);
        this.f16478a = zzabVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f16478a.m10867b();
        this.f16478a.m10865d();
    }
}
