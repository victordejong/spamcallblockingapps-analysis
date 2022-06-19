package p193e.p194a.p773g.p774a;

import com.truecaller.acs.analytics.ClickEvent;
import com.truecaller.data.entity.Contact;
import p193e.p194a.p773g.p774a.p776b.AbstractC14167s;
/* renamed from: e.a.g.a.b0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b0.class */
public final class C14169b0 implements AbstractC14167s {

    /* renamed from: a */
    public final /* synthetic */ AbstractC14205m f40903a;

    /* renamed from: b */
    public final /* synthetic */ Contact f40904b;

    /* renamed from: c */
    public final /* synthetic */ int f40905c;

    public C14169b0(AbstractC14205m abstractC14205m, Contact contact, int i) {
        this.f40903a = abstractC14205m;
        this.f40904b = contact;
        this.f40905c = i;
    }

    @Override // p193e.p194a.p773g.p774a.p776b.AbstractC14167s
    /* renamed from: a */
    public void mo20597a() {
        AbstractC14205m abstractC14205m = this.f40903a;
        Contact contact = this.f40904b;
        int i = this.f40905c;
        AbstractC14198h abstractC14198h = (AbstractC14198h) abstractC14205m.f57683a;
        if (abstractC14198h != null) {
            abstractC14198h.mo20502r8(contact, i);
        }
        abstractC14205m.f40998h.offer(ClickEvent.CHANGE_TAG);
    }
}
