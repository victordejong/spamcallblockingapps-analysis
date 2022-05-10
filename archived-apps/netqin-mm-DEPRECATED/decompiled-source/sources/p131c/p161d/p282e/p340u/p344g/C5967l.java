package p131c.p161d.p282e.p340u.p344g;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.perf.internal.RemoteConfigManager;
/* renamed from: c.d.e.u.g.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/l.class */
public final /* synthetic */ class C5967l implements OnFailureListener {

    /* renamed from: a */
    public final RemoteConfigManager f19380a;

    public C5967l(RemoteConfigManager remoteConfigManager) {
        this.f19380a = remoteConfigManager;
    }

    /* renamed from: a */
    public static OnFailureListener m22497a(RemoteConfigManager remoteConfigManager) {
        return new C5967l(remoteConfigManager);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    /* renamed from: a */
    public void mo8583a(Exception exc) {
        this.f19380a.firebaseRemoteConfigLastFetchTimestampMs = 0L;
    }
}
