package p459j.p460a.p603y;

import gogolook.callgogolook2.job.DailySyncJobWorker;
import kotlin.Metadata;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p459j.p460a.p582w0.C14063l4;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
/* renamed from: j.a.y.q */
/* loaded from: classes2-dex2jar.jar:j/a/y/q.class */
public final class C14464q extends AbstractC15150l implements AbstractC15107a<C14989s> {

    /* renamed from: a */
    public final /* synthetic */ DailySyncJobWorker f32364a;

    /* renamed from: b */
    public final /* synthetic */ boolean f32365b;

    /* renamed from: j.a.y.q$a */
    /* loaded from: classes2-dex2jar.jar:j/a/y/q$a.class */
    public static final class C14465a extends AbstractC6378d {
        public C14465a() {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) {
            C14063l4.m2664d(C14464q.this.f32364a.m27935c());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14464q(DailySyncJobWorker dailySyncJobWorker, boolean z) {
        super(0);
        this.f32364a = dailySyncJobWorker;
        this.f32365b = z;
    }

    @Override // p626l.p641z.p642c.AbstractC15107a
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (this.f32365b) {
            C14063l4.m2683a(new C14465a());
        }
    }
}
