package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* renamed from: c.d.b.d.d.a.a.r */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/r.class */
public final class C3276r implements BackgroundDetector.BackgroundStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ GoogleApiManager f11984a;

    public C3276r(GoogleApiManager googleApiManager) {
        this.f11984a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    /* renamed from: a */
    public final void mo17731a(boolean z) {
        this.f11984a.f23128m.sendMessage(this.f11984a.f23128m.obtainMessage(1, Boolean.valueOf(z)));
    }
}
