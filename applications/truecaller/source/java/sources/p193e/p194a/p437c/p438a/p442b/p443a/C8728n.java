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
/* renamed from: e.a.c.a.b.a.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/n.class */
public final class C8728n extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ DialogInterface$OnShowListenerC8722l f26671b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8728n(DialogInterface$OnShowListenerC8722l dialogInterface$OnShowListenerC8722l) {
        super(0);
        this.f26671b = dialogInterface$OnShowListenerC8722l;
    }

    public Object invoke() {
        Objects.requireNonNull(C8696b.f26613f);
        new C8696b().show(this.f26671b.getChildFragmentManager(), C8696b.f26612e);
        AbstractC10060c abstractC10060c = this.f26671b.f26660a;
        if (abstractC10060c == null) {
            l.l("analyticsManager");
            throw null;
        }
        C8769f c8769f = C8769f.f26770i;
        C10530c c10530c = C8769f.f26769h;
        c10530c.m25824d(TokenResponseDto.METHOD_SMS);
        DialogInterface$OnShowListenerC8722l dialogInterface$OnShowListenerC8722l = this.f26671b;
        String m26802b = C10031q.m26802b(dialogInterface$OnShowListenerC8722l.f26664e, dialogInterface$OnShowListenerC8722l.f26665f);
        if (m26802b != null) {
            c10530c.m25822f(m26802b);
        }
        abstractC10060c.mo26757a(c10530c.m25827a());
        return s.a;
    }
}
