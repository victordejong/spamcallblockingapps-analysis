package p193e.p194a.p947k.p980p;

import com.truecaller.videocallerid.upload.UploadingStates;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k.p.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/p/c.class */
public final class C16250c implements AbstractC16249b {

    /* renamed from: a */
    public final AbstractC16258i f45786a;

    @e(c = "com.truecaller.videocallerid.upload.ReadVideoUploadStateImpl$subscribeVideoUploadState$2", f = "ReadVideoUploadState.kt", l = {21}, m = "invokeSuspend")
    /* renamed from: e.a.k.p.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/p/c$a.class */
    public static final class C16251a extends i implements p<UploadingStates, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f45787e;

        /* renamed from: f */
        public int f45788f;

        /* renamed from: g */
        public final /* synthetic */ p f45789g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16251a(p pVar, d dVar) {
            super(2, dVar);
            this.f45789g = pVar;
        }

        /* renamed from: i */
        public final d<s> m17677i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C16251a c16251a = new C16251a(this.f45789g, dVar);
            c16251a.f45787e = obj;
            return c16251a;
        }

        /* renamed from: k */
        public final Object m17676k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16251a c16251a = new C16251a(this.f45789g, dVar);
            c16251a.f45787e = obj;
            return c16251a.m17675s(s.a);
        }

        /* renamed from: s */
        public final Object m17675s(Object obj) {
            a aVar = a.a;
            int i = this.f45788f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                UploadingStates uploadingStates = (UploadingStates) this.f45787e;
                p pVar = this.f45789g;
                this.f45788f = 1;
                if (pVar.k(uploadingStates, this) == aVar) {
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

    @Inject
    public C16250c(AbstractC16258i abstractC16258i) {
        l.e(abstractC16258i, "videoUploadStateHolder");
        this.f45786a = abstractC16258i;
    }

    /* renamed from: a */
    public Object m17678a(i0 i0Var, p<? super UploadingStates, ? super d<? super s>, ? extends Object> pVar, d<? super s> dVar) {
        Object mo17665a = this.f45786a.mo17665a(i0Var, new C16251a(pVar, null), dVar);
        return mo17665a == a.a ? mo17665a : s.a;
    }
}
