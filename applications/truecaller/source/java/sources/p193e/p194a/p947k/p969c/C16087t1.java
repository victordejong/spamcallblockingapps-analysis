package p193e.p194a.p947k.p969c;

import java.io.File;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$createTempRecordingFile$2", f = "VideoFileUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.c.t1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/t1.class */
public final class C16087t1 extends i implements l<d<? super File>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C15942a f45324e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16087t1(C15942a c15942a, d dVar) {
        super(1, dVar);
        this.f45324e = c15942a;
    }

    /* renamed from: d */
    public final Object m17914d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        C15942a c15942a = this.f45324e;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        ((File) c15942a.f44947a.getValue()).mkdirs();
        C15942a.m18115b(c15942a).getAbsolutePath();
        return C15942a.m18115b(c15942a);
    }

    /* renamed from: l */
    public final d<s> m17913l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16087t1(this.f45324e, dVar);
    }

    /* renamed from: s */
    public final Object m17912s(Object obj) {
        C25225a.m3932a3(obj);
        ((File) this.f45324e.f44947a.getValue()).mkdirs();
        C15942a.m18115b(this.f45324e).getAbsolutePath();
        return C15942a.m18115b(this.f45324e);
    }
}
