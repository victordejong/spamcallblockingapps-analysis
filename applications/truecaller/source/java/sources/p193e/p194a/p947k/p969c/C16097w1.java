package p193e.p194a.p947k.p969c;

import java.io.File;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$getVideoDuration$2", f = "VideoFileUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.c.w1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/w1.class */
public final class C16097w1 extends i implements l<d<? super Long>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C15942a f45346e;

    /* renamed from: f */
    public final /* synthetic */ File f45347f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16097w1(C15942a c15942a, File file, d dVar) {
        super(1, dVar);
        this.f45346e = c15942a;
        this.f45347f = file;
    }

    /* renamed from: d */
    public final Object m17897d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        C15942a c15942a = this.f45346e;
        File file = this.f45347f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return C15942a.m18114c(c15942a, file);
    }

    /* renamed from: l */
    public final d<s> m17896l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16097w1(this.f45346e, this.f45347f, dVar);
    }

    /* renamed from: s */
    public final Object m17895s(Object obj) {
        C25225a.m3932a3(obj);
        return C15942a.m18114c(this.f45346e, this.f45347f);
    }
}
