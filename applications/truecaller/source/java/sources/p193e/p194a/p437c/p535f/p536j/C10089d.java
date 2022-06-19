package p193e.p194a.p437c.p535f.p536j;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.InsightsDomain;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import s1.z.c.l;
/* renamed from: e.a.c.f.j.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/f/j/d.class */
public final class C10089d {

    /* renamed from: a */
    public final Context f30002a;

    public C10089d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f30002a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [e.a.c.r.j.a$h$b] */
    /* JADX WARN: Type inference failed for: r0v45, types: [e.a.c.r.j.a$h$a] */
    /* renamed from: a */
    public final List<AbstractC10567a> m26687a(InsightsDomain.C4062f c4062f, String str) {
        AbstractC10567a.C10573d c10573d;
        ArrayList arrayList = new ArrayList();
        String m35225k = c4062f.m35225k();
        int hashCode = m35225k.hashCode();
        boolean z = false;
        if (hashCode != -1271823248) {
            if (hashCode == 97920 && m35225k.equals("bus")) {
                if (c4062f.m35228h().length() == 0) {
                    z = true;
                }
                c10573d = z ? AbstractC10567a.C10573d.f31529c : new AbstractC10567a.AbstractC10578h.C10579a(c4062f.getMsgId(), c4062f.getSender(), c4062f.isIM(), c4062f.m35228h(), this.f30002a, null, null, 96);
            }
            c10573d = AbstractC10567a.C10573d.f31529c;
        } else {
            if (m35225k.equals("flight")) {
                if (C17891a1.C17902k.m15674H0(c4062f) && C17891a1.C17902k.m15671I0(c4062f)) {
                    boolean z2 = false;
                    if (c4062f.getUrl().length() > 0) {
                        z2 = true;
                    }
                    if (z2 && (!l.a(c4062f.m35235a(), "cancel"))) {
                        c10573d = new AbstractC10567a.AbstractC10578h.C10580b(c4062f.getMsgId(), c4062f.getSender(), c4062f.isIM(), c4062f.getUrl(), this.f30002a, null, null, 96);
                    }
                }
                c10573d = AbstractC10567a.C10573d.f31529c;
            }
            c10573d = AbstractC10567a.C10573d.f31529c;
        }
        arrayList.add(c10573d);
        String m15696A = C17891a1.C17902k.m15696A(c4062f, null, 1);
        arrayList.add(new AbstractC10567a.C10572c(c4062f.getMsgId(), m15696A, c4062f.getSender(), c4062f.isIM(), c4062f.f12608A, str, null, 64));
        arrayList.add(AbstractC10567a.C10573d.f31529c);
        arrayList.add(new AbstractC10567a.C10577g(c4062f.getMsgId(), c4062f.f12608A, m15696A, c4062f.getSender(), c4062f.isIM(), str, null, 64));
        return arrayList;
    }
}
