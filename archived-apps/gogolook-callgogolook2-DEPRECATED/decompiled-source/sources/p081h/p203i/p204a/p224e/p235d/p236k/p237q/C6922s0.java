package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6740b;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6836l;
/* renamed from: h.i.a.e.d.k.q.s0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/s0.class */
public final class C6922s0 implements AbstractC6836l<Status> {

    /* renamed from: a */
    public final /* synthetic */ C6901n f16951a;

    /* renamed from: b */
    public final /* synthetic */ boolean f16952b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC6825f f16953c;

    /* renamed from: d */
    public final /* synthetic */ C6902n0 f16954d;

    public C6922s0(C6902n0 n0Var, C6901n nVar, boolean z, AbstractC6825f fVar) {
        this.f16954d = n0Var;
        this.f16951a = nVar;
        this.f16952b = z;
        this.f16953c = fVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6836l
    /* renamed from: a */
    public final /* synthetic */ void mo21564a(@NonNull Status status) {
        Context context;
        Status status2 = status;
        context = this.f16954d.f16891g;
        C6740b.m21973a(context).m21962e();
        if (status2.m31991J() && this.f16954d.mo21491g()) {
            this.f16954d.m21634k();
        }
        this.f16951a.m31984a((C6901n) status2);
        if (this.f16952b) {
            this.f16953c.mo21492d();
        }
    }
}
