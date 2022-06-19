package p193e.p194a.p673d0.p674a;

import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.data.entity.CallContextMessage;
import java.util.Objects;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f;
import s1.z.c.l;
/* renamed from: e.a.d0.a.i */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/i.class */
public final class C12435i implements AbstractC18675f {

    /* renamed from: a */
    public final /* synthetic */ C12409a f36301a;

    public C12435i(C12409a c12409a) {
        this.f36301a = c12409a;
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: a */
    public void mo14649a(String str, OnDemandMessageSource onDemandMessageSource) {
        l.e(onDemandMessageSource, "onDemandMessageSource");
        C12439m c12439m = (C12439m) this.f36301a.m23096C();
        Objects.requireNonNull(c12439m);
        l.e(onDemandMessageSource, "onDemandMessageSource");
        AbstractC12438l abstractC12438l = (AbstractC12438l) c12439m.f57683a;
        if (abstractC12438l != null) {
            abstractC12438l.mo23032c6(onDemandMessageSource, str);
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: b */
    public void mo14648b(CallContextMessage callContextMessage) {
        l.e(callContextMessage, "message");
        l.e(callContextMessage, "message");
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: c */
    public void mo14647c() {
        AbstractC12438l abstractC12438l = (AbstractC12438l) ((C12439m) this.f36301a.m23096C()).f57683a;
        if (abstractC12438l != null) {
            abstractC12438l.mo23026m2();
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: d */
    public void mo14646d() {
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: e */
    public void mo14645e() {
        AbstractC12438l abstractC12438l = (AbstractC12438l) ((C12439m) this.f36301a.m23096C()).f57683a;
        if (abstractC12438l != null) {
            abstractC12438l.mo23024r5();
        }
    }
}
