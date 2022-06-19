package p193e.p194a.p619d.p622b.p623a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.ConnectionState;
import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.VoipUserBadge;
import com.truecaller.voip.manager.VoipMsg;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p663x.C12221p;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$listenForVoipMessages$1", f = "LegacyVoipServicePresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/j.class */
public final class C11112j extends i implements p<VoipMsg, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f32857e;

    /* renamed from: f */
    public final /* synthetic */ C11087b f32858f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11112j(C11087b c11087b, d dVar) {
        super(2, dVar);
        this.f32858f = c11087b;
    }

    /* renamed from: i */
    public final d<s> m25193i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11112j c11112j = new C11112j(this.f32858f, dVar);
        c11112j.f32857e = obj;
        return c11112j;
    }

    /* renamed from: k */
    public final Object m25192k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11112j c11112j = new C11112j(this.f32858f, dVar);
        c11112j.f32857e = obj;
        s sVar = s.a;
        c11112j.m25191s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m25191s(Object obj) {
        C25225a.m3932a3(obj);
        VoipMsg voipMsg = (VoipMsg) this.f32857e;
        String str = "New voip message:" + voipMsg;
        switch (voipMsg.getAction().ordinal()) {
            case 1:
                C11087b c11087b = this.f32858f;
                VoipUser m25287Jj = C11087b.m25287Jj(c11087b);
                Integer uid = voipMsg.getExtras().getUid();
                String str2 = m25287Jj.f16283a;
                String str3 = m25287Jj.f16284b;
                String str4 = m25287Jj.f16285c;
                String str5 = m25287Jj.f16286d;
                boolean z = m25287Jj.f16287e;
                Integer num = m25287Jj.f16288f;
                VoipUserBadge voipUserBadge = m25287Jj.f16289g;
                boolean z2 = m25287Jj.f16291i;
                boolean z3 = m25287Jj.f16292j;
                Objects.requireNonNull(m25287Jj);
                l.e(str2, "id");
                l.e(str3, "number");
                l.e(str4, AnalyticsConstants.NAME);
                l.e(voipUserBadge, "badge");
                c11087b.m25262ik(new VoipUser(str2, str3, str4, str5, z, num, voipUserBadge, uid, z2, z3));
                this.f32858f.m25264gk(VoipState.ONGOING, null);
                if (this.f32858f.m25281Pj().f35689c) {
                    this.f32858f.m25266ek();
                    break;
                }
                break;
            case 2:
                C11087b.m25286Kj(this.f32858f, ConnectionState.INTERRUPTED);
                break;
            case 3:
                C11087b.m25286Kj(this.f32858f, ConnectionState.CONNECTED);
                break;
            case 4:
                C11087b.m25286Kj(this.f32858f, ConnectionState.DISCONNECTED);
                break;
            case 5:
                C11087b c11087b2 = this.f32858f;
                boolean muted = voipMsg.getExtras().getMuted();
                C12221p c12221p = c11087b2.f32781j;
                if (muted != c12221p.f35688b) {
                    c11087b2.f32781j = C12221p.m23434a(c12221p, false, muted, false, false, null, 29);
                    c11087b2.m25269bk();
                    break;
                }
                break;
            case 6:
                this.f32858f.m25264gk(VoipState.ENDED, VoipStateReason.PEER_LEFT_CHANNEL);
                break;
            case 7:
                C11087b c11087b3 = this.f32858f;
                if (c11087b3.f32780i.f34449a == VoipState.ONGOING && voipMsg.getExtras().getUserCount() == 1) {
                    c11087b3.m25264gk(VoipState.ENDED, VoipStateReason.EMPTY_CHANNEL);
                    break;
                }
                break;
        }
        return s.a;
    }
}
