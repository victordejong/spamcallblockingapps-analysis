package p193e.p194a.p947k.p973n.p976f;

import com.truecaller.videocallerid.data.VideoDetails;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p971l.C16120b;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl$addVideo$2", f = "IncomingVideoRepository.kt", l = {28}, m = "invokeSuspend")
/* renamed from: e.a.k.n.f.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/f/e.class */
public final class C16200e extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f45684e;

    /* renamed from: f */
    public final /* synthetic */ C16201f f45685f;

    /* renamed from: g */
    public final /* synthetic */ C16120b f45686g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16200e(C16201f c16201f, C16120b c16120b, d dVar) {
        super(1, dVar);
        this.f45685f = c16201f;
        this.f45686g = c16120b;
    }

    /* renamed from: d */
    public final Object m17748d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16200e(this.f45685f, this.f45686g, dVar).m17746s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17747l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16200e(this.f45685f, this.f45686g, dVar);
    }

    /* renamed from: s */
    public final Object m17746s(Object obj) {
        a aVar = a.a;
        int i = this.f45684e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16189b abstractC16189b = (AbstractC16189b) this.f45685f.f45687a.get();
            C16201f c16201f = this.f45685f;
            C16120b c16120b = this.f45686g;
            Objects.requireNonNull(c16201f);
            String str = c16120b.f45428b;
            String str2 = c16120b.f45427a;
            long j = c16120b.f45429c;
            String str3 = c16120b.f45430d;
            VideoDetails videoDetails = c16120b.f45431e;
            C16188a c16188a = new C16188a(str, str2, videoDetails.f16003a, str3, j, videoDetails.f16004b, videoDetails.f16005c, videoDetails.f16006d);
            this.f45684e = 1;
            if (abstractC16189b.mo17751d(c16188a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
