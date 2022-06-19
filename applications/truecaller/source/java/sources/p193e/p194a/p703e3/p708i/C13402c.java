package p193e.p194a.p703e3.p708i;

import com.truecaller.data.entity.Number;
import java.io.IOException;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p1727n3.p1807k.p1820h.C26553c;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p677d3.AbstractC12585d;
import p193e.p194a.p677d3.AbstractC12589h;
import p193e.p194a.p677d3.AbstractC12592j;
import p193e.p194a.p703e3.p704e.C13353b;
import p193e.p194a.p703e3.p710k.AbstractC13433i;
import p193e.p194a.p703e3.p710k.p711s.AbstractC13468c;
import p193e.p194a.p947k.AbstractC16111h;
import s1.z.c.l;
import u3.k0;
import u3.l0;
import x3.a0;
import x3.b;
import x3.h0.o;
import x3.h0.s;
import x3.h0.t;
/* renamed from: e.a.e3.i.c */
/* loaded from: classes6-dex2jar.jar:e/a/e3/i/c.class */
public final class C13402c implements AbstractC13401b {

    /* renamed from: a */
    public final AbstractC13468c f38875a;

    /* renamed from: b */
    public final AbstractC13403a f38876b;

    /* renamed from: c */
    public final AbstractC12589h f38877c;

    /* renamed from: d */
    public final AbstractC12592j f38878d;

    /* renamed from: e */
    public final a<AbstractC13433i> f38879e;

    /* renamed from: f */
    public final AbstractC18765c f38880f;

    /* renamed from: g */
    public final AbstractC19237j0 f38881g;

    /* renamed from: h */
    public final AbstractC16111h f38882h;

    /* renamed from: i */
    public final AbstractC12585d f38883i;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018��2\u00020\u0001J5\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"e/a/e3/i/c$a", "", "", "callState", "number", "countryCode", "Lx3/b;", "Lu3/l0;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;", "call-alert_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.e3.i.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/i/c$a.class */
    public interface AbstractC13403a {
        @o("/v1/callerId/{callState}")
        /* renamed from: a */
        b<l0> m21865a(@s("callState") String str, @t("q") String str2, @t("countryCode") String str3);
    }

    @Inject
    public C13402c(AbstractC13468c abstractC13468c, AbstractC13403a abstractC13403a, AbstractC12589h abstractC12589h, AbstractC12592j abstractC12592j, a<AbstractC13433i> aVar, AbstractC18765c abstractC18765c, AbstractC19237j0 abstractC19237j0, AbstractC16111h abstractC16111h, AbstractC12585d abstractC12585d) {
        l.e(abstractC13468c, "callingCache");
        l.e(abstractC13403a, "callingNetworkApi");
        l.e(abstractC12589h, "businessCardRepository");
        l.e(abstractC12592j, "pushCallerIdStubManager");
        l.e(aVar, "callAlertSimSupport");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC19237j0, "toastUtil");
        l.e(abstractC16111h, "videoCallerId");
        l.e(abstractC12585d, "businessCardManager");
        this.f38875a = abstractC13468c;
        this.f38876b = abstractC13403a;
        this.f38877c = abstractC12589h;
        this.f38878d = abstractC12592j;
        this.f38879e = aVar;
        this.f38880f = abstractC18765c;
        this.f38881g = abstractC19237j0;
        this.f38882h = abstractC16111h;
        this.f38883i = abstractC12585d;
    }

    /* renamed from: b */
    public static C13353b m21868b(C13402c c13402c, C13353b c13353b, C26553c c26553c, boolean z, int i) {
        if ((i & 1) != 0) {
            c26553c = new C26553c(Boolean.FALSE, null);
        }
        if ((i & 2) != 0) {
            z = c13353b.f38781e;
        }
        return c13402c.m21869a(c13353b, c26553c, z);
    }

    /* renamed from: a */
    public final C13353b m21869a(C13353b c13353b, C26553c<Boolean, String> c26553c, boolean z) {
        Boolean bool = c26553c.f74395a;
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        String str = c26553c.f74396b;
        String str2 = c13353b.f38778b;
        boolean z2 = c13353b.f38780d;
        Objects.requireNonNull(c13353b);
        l.e(str2, "callState");
        return new C13353b(booleanValue, str2, str, z2, z);
    }

    /* renamed from: c */
    public final C26553c<Boolean, String> m21867c(String str, String str2, Number number) {
        try {
            a0 execute = this.f38876b.m21865a(str, str2, number.getCountryCode()).execute();
            AbstractC13468c abstractC13468c = this.f38875a;
            k0 k0Var = execute.a;
            l.d(k0Var, "response.raw()");
            abstractC13468c.mo21783c(number, str, k0Var);
            C26553c<Boolean, String> c26553c = new C26553c<>(Boolean.TRUE, execute.a.d);
            l.d(c26553c, "Pair.create(true, response.message())");
            return c26553c;
        } catch (IOException e) {
            C26553c<Boolean, String> c26553c2 = new C26553c<>(Boolean.FALSE, null);
            l.d(c26553c2, "Pair.create(false, null)");
            return c26553c2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x03e1, code lost:
        if (r9.f38883i.mo22855a(r0.f15999a) == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x009b, code lost:
        if ((r0 != null ? r0.f15999a : null) != null) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:139:0x05a5  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x05b9  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f5  */
    @Override // p193e.p194a.p703e3.p708i.AbstractC13401b
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<p193e.p194a.p703e3.p704e.C13353b> mo21866e(java.lang.String r10, com.truecaller.data.entity.Number r11) {
        /*
            Method dump skipped, instructions count: 1554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p708i.C13402c.mo21866e(java.lang.String, com.truecaller.data.entity.Number):e.a.r2.x");
    }
}
