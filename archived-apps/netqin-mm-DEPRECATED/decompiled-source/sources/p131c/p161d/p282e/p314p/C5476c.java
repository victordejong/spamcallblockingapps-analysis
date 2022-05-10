package p131c.p161d.p282e.p314p;

import android.content.Context;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p288k.C5183q;
import p131c.p161d.p282e.p334r.AbstractC5887a;
/* renamed from: c.d.e.p.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/p/c.class */
public class C5476c implements HeartBeatInfo {

    /* renamed from: a */
    public AbstractC5887a<C5477d> f18460a;

    public C5476c(Context context) {
        this(new C5183q(C5474a.m23715a(context)));
    }

    public C5476c(AbstractC5887a<C5477d> aVar) {
        this.f18460a = aVar;
    }

    /* renamed from: a */
    public static C5162d<HeartBeatInfo> m23713a() {
        C5162d.C5164b a = C5162d.m24395a(HeartBeatInfo.class);
        a.m24378a(C5180n.m24343c(Context.class));
        a.m24379a(C5475b.m23714a());
        return a.m24382a();
    }

    /* renamed from: a */
    public static /* synthetic */ HeartBeatInfo m23711a(AbstractC5165e eVar) {
        return new C5476c((Context) eVar.mo24330a(Context.class));
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    /* renamed from: a */
    public HeartBeatInfo.HeartBeat mo7360a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean a = this.f18460a.get().m23708a(str, currentTimeMillis);
        boolean a2 = this.f18460a.get().m23710a(currentTimeMillis);
        return (!a || !a2) ? a2 ? HeartBeatInfo.HeartBeat.GLOBAL : a ? HeartBeatInfo.HeartBeat.SDK : HeartBeatInfo.HeartBeat.NONE : HeartBeatInfo.HeartBeat.COMBINED;
    }
}
