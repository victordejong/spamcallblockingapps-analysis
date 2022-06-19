package p193e.p194a.p947k.p969c;

import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import java.io.File;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$getOutgoingVideoFile$2", f = "VideoFileUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.c.v1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/v1.class */
public final class C16094v1 extends i implements l<d<? super File>, Object> {

    /* renamed from: e */
    public final /* synthetic */ OutgoingVideoDetails f45337e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16094v1(OutgoingVideoDetails outgoingVideoDetails, d dVar) {
        super(1, dVar);
        this.f45337e = outgoingVideoDetails;
    }

    /* renamed from: d */
    public final Object m17906d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        OutgoingVideoDetails outgoingVideoDetails = this.f45337e;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        String str = outgoingVideoDetails.f16000b;
        File file = null;
        if (str != null) {
            File file2 = new File(str);
            file = null;
            if (file2.exists()) {
                file = file2;
            }
        }
        return file;
    }

    /* renamed from: l */
    public final d<s> m17905l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16094v1(this.f45337e, dVar);
    }

    /* renamed from: s */
    public final Object m17904s(Object obj) {
        C25225a.m3932a3(obj);
        String str = this.f45337e.f16000b;
        File file = null;
        if (str != null) {
            File file2 = new File(str);
            file = null;
            if (file2.exists()) {
                file = file2;
            }
        }
        return file;
    }
}
