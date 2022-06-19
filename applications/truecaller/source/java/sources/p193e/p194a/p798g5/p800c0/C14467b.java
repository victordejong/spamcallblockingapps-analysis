package p193e.p194a.p798g5.p800c0;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.lifecycle.LiveData;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1868v.AbstractC27005g0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.AbstractC14537p;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.g5.c0.b */
/* loaded from: classes14-dex2jar.jar:e/a/g5/c0/b.class */
public final class C14467b implements AbstractC14466a {

    /* renamed from: a */
    public final AbstractC8552d f41654a;

    /* renamed from: b */
    public final AbstractC14537p f41655b;

    /* renamed from: c */
    public final f f41656c;

    @e(c = "com.truecaller.tagger.data.TagRepositoryImpl$fetchTags$1", f = "TagRepository.kt", l = {30, 32}, m = "invokeSuspend")
    /* renamed from: e.a.g5.c0.b$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/c0/b$a.class */
    public static final class C14468a extends i implements p<AbstractC27005g0<List<? extends C8551c>>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f41657e;

        /* renamed from: f */
        public int f41658f;

        /* renamed from: h */
        public final /* synthetic */ String f41660h;

        /* renamed from: i */
        public final /* synthetic */ long f41661i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14468a(String str, long j, d dVar) {
            super(2, dVar);
            C14467b.this = r5;
            this.f41660h = str;
            this.f41661i = j;
        }

        /* renamed from: i */
        public final d<s> m20066i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C14468a c14468a = new C14468a(this.f41660h, this.f41661i, dVar);
            c14468a.f41657e = obj;
            return c14468a;
        }

        /* renamed from: k */
        public final Object m20065k(Object obj, Object obj2) {
            return m20066i(obj, (d) obj2).m20064s(s.a);
        }

        /* renamed from: s */
        public final Object m20064s(Object obj) {
            a aVar = a.a;
            int i = this.f41658f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC27005g0 abstractC27005g0 = (AbstractC27005g0) this.f41657e;
                String str = this.f41660h;
                if (str == null || r.p(str)) {
                    List<C8551c> mo28403a = C14467b.this.f41654a.mo28403a(this.f41661i);
                    this.f41658f = 1;
                    if (abstractC27005g0.mo1006a(mo28403a, this) == aVar) {
                        return aVar;
                    }
                } else {
                    List<C8551c> m16072j0 = C17422k.m16072j0(C14467b.this.f41654a, this.f41660h);
                    this.f41658f = 2;
                    if (abstractC27005g0.mo1006a(m16072j0, this) == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1 && i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C14467b(AbstractC8552d abstractC8552d, AbstractC14537p abstractC14537p, @Named("IO") f fVar) {
        l.e(abstractC8552d, "tagManager");
        l.e(abstractC14537p, "tagDisplayUtil");
        l.e(fVar, "ioCoroutineContext");
        this.f41654a = abstractC8552d;
        this.f41655b = abstractC14537p;
        this.f41656c = fVar;
    }

    @Override // p193e.p194a.p798g5.p800c0.AbstractC14466a
    /* renamed from: a */
    public LiveData<List<C8551c>> mo20068a(long j, String str) {
        return MediaSessionCompat.m43285M0(this.f41656c, 0L, new C14468a(str, j, null), 2);
    }

    @Override // p193e.p194a.p798g5.p800c0.AbstractC14466a
    /* renamed from: y1 */
    public C8551c mo20067y1(long j) {
        return this.f41655b.mo20024c(j);
    }
}
