package p193e.p194a.p773g.p774a.p775a;

import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.data.entity.CallContextMessage;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f;
import p193e.p194a.p773g.p774a.AbstractC14198h;
import p193e.p194a.p773g.p774a.AbstractC14205m;
import s1.z.c.l;
/* renamed from: e.a.g.a.a.e */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/a/e.class */
public final class C14101e implements AbstractC18675f {

    /* renamed from: a */
    public final /* synthetic */ C14074a f40755a;

    public C14101e(C14074a c14074a) {
        this.f40755a = c14074a;
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: a */
    public void mo14649a(String str, OnDemandMessageSource onDemandMessageSource) {
        l.e(onDemandMessageSource, "onDemandMessageSource");
        ((AbstractC14205m) this.f40755a.m20786VA()).m20423lk(str, onDemandMessageSource);
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: b */
    public void mo14648b(CallContextMessage callContextMessage) {
        l.e(callContextMessage, "message");
        ((AbstractC14205m) this.f40755a.m20786VA()).m20425jk(callContextMessage);
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: c */
    public void mo14647c() {
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: d */
    public void mo14646d() {
        ((AbstractC14205m) this.f40755a.m20786VA()).f41020s = true;
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: e */
    public void mo14645e() {
        AbstractC14198h abstractC14198h = (AbstractC14198h) ((AbstractC14205m) this.f40755a.m20786VA()).f57683a;
        if (abstractC14198h != null) {
            abstractC14198h.mo20567Kn();
        }
    }
}
