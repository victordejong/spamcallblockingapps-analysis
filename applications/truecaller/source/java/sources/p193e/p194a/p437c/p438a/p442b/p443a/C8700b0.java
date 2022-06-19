package p193e.p194a.p437c.p438a.p442b.p443a;

import com.truecaller.account.network.TokenResponseDto;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p442b.p445c.C8769f;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.b.a.b0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/b0.class */
public final class C8700b0 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ DialogInterface$OnShowListenerC8755z f26618b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8700b0(DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z) {
        super(0);
        this.f26618b = dialogInterface$OnShowListenerC8755z;
    }

    public Object invoke() {
        Objects.requireNonNull(C8696b.f26613f);
        new C8696b().show(this.f26618b.getChildFragmentManager(), C8696b.f26612e);
        AbstractC10060c abstractC10060c = this.f26618b.f26730a;
        if (abstractC10060c == null) {
            l.l("analyticsManager");
            throw null;
        }
        C8769f c8769f = C8769f.f26770i;
        C10530c c10530c = C8769f.f26767f;
        c10530c.m25824d(TokenResponseDto.METHOD_SMS);
        DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z = this.f26618b;
        String m26802b = C10031q.m26802b(dialogInterface$OnShowListenerC8755z.f26735f, dialogInterface$OnShowListenerC8755z.f26736g);
        if (m26802b != null) {
            c10530c.m25822f(m26802b);
        }
        abstractC10060c.mo26757a(c10530c.m25827a());
        return s.a;
    }
}
