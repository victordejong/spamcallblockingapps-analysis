package p193e.p194a.p682e.p684b.p688d;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.analytics.common.event.ViewActionEvent;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1395y3.AbstractC21785c;
import s1.z.c.l;
/* renamed from: e.a.e.b.d.d */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/d/d.class */
public final class C12915d extends AbstractC20576b<AbstractC12914c> implements AbstractC12913b {

    /* renamed from: b */
    public final AbstractC19462a f37522b;

    /* renamed from: c */
    public final AbstractC21785c f37523c;

    @Inject
    public C12915d(AbstractC19462a abstractC19462a, AbstractC21785c abstractC21785c) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC21785c, "freshChatManager");
        this.f37522b = abstractC19462a;
        this.f37523c = abstractC21785c;
    }

    @Override // p193e.p194a.p682e.p684b.p688d.AbstractC12913b
    /* renamed from: Oa */
    public void mo22426Oa() {
        n.B0(ViewActionEvent.f9985d.m35929i("settings_help_screen", ViewActionEvent.HelpAction.CHAT_WITH_US), this.f37522b);
        this.f37523c.mo9079b();
    }

    @Override // p193e.p194a.p682e.p684b.p688d.AbstractC12913b
    /* renamed from: b5 */
    public void mo22425b5() {
        n.B0(ViewActionEvent.f9985d.m35929i("settings_help_screen", ViewActionEvent.HelpAction.FAQ), this.f37522b);
        AbstractC12914c abstractC12914c = (AbstractC12914c) this.f57683a;
        if (abstractC12914c != null) {
            abstractC12914c.mo22427b("https://support.truecaller.com/hc/en-us/categories/201513109-Android");
        }
    }

    @Override // p193e.p194a.p682e.p684b.p688d.AbstractC12913b
    /* renamed from: m1 */
    public void mo22424m1() {
        n.B0(ViewActionEvent.f9985d.m35929i("settings_help_screen", ViewActionEvent.HelpAction.SEND_FEEDBACK), this.f37522b);
        AbstractC12914c abstractC12914c = (AbstractC12914c) this.f57683a;
        if (abstractC12914c != null) {
            abstractC12914c.mo22428F9();
        }
    }
}
