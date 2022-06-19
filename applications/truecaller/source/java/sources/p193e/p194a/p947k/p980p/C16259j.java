package p193e.p194a.p947k.p980p;

import com.truecaller.videocallerid.upload.UploadingStates;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.x2.a1;
import q3.a.x2.k1;
import q3.a.x2.u0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k.p.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/p/j.class */
public final class C16259j implements AbstractC16258i {

    /* renamed from: a */
    public final a1<UploadingStates> f45808a = k1.a(UploadingStates.UNKNOWN);

    @e(c = "com.truecaller.videocallerid.upload.VideoUploadStateHolderImpl$subscribeVideoUploadState$2", f = "VideoUploadStateHolder.kt", l = {48}, m = "invokeSuspend")
    /* renamed from: e.a.k.p.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/p/j$a.class */
    public static final class C16260a extends i implements p<UploadingStates, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f45809e;

        /* renamed from: f */
        public int f45810f;

        /* renamed from: g */
        public final /* synthetic */ p f45811g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16260a(p pVar, d dVar) {
            super(2, dVar);
            this.f45811g = pVar;
        }

        /* renamed from: i */
        public final d<s> m17663i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C16260a c16260a = new C16260a(this.f45811g, dVar);
            c16260a.f45809e = obj;
            return c16260a;
        }

        /* renamed from: k */
        public final Object m17662k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16260a c16260a = new C16260a(this.f45811g, dVar);
            c16260a.f45809e = obj;
            return c16260a.m17661s(s.a);
        }

        /* renamed from: s */
        public final Object m17661s(Object obj) {
            a aVar = a.a;
            int i = this.f45810f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                UploadingStates uploadingStates = (UploadingStates) this.f45809e;
                p pVar = this.f45811g;
                this.f45810f = 1;
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

    @Override // p193e.p194a.p947k.p980p.AbstractC16258i
    /* renamed from: a */
    public Object mo17665a(i0 i0Var, p<? super UploadingStates, ? super d<? super s>, ? extends Object> pVar, d<? super s> dVar) {
        a x2 = s1.a.a.a.v0.f.d.x2(new u0(this.f45808a, new C16260a(pVar, null)), i0Var);
        return x2 == a.a ? x2 : s.a;
    }

    @Override // p193e.p194a.p947k.p980p.AbstractC16258i
    /* renamed from: b */
    public void mo17664b(UploadingStates uploadingStates) {
        l.e(uploadingStates, "uploadingStates");
        this.f45808a.setValue(uploadingStates);
    }
}
