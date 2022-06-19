package p193e.p194a.p717f.p718a.p721b;

import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.data.entity.CallContextMessage;
import java.util.Objects;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f;
import s1.z.c.l;
/* renamed from: e.a.f.a.b.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/f.class */
public final class C13586f implements AbstractC18675f {

    /* renamed from: a */
    public final /* synthetic */ C13577c f39365a;

    public C13586f(C13577c c13577c) {
        this.f39365a = c13577c;
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: a */
    public void mo14649a(String str, OnDemandMessageSource onDemandMessageSource) {
        l.e(onDemandMessageSource, "onDemandMessageSource");
        C13590j c13590j = (C13590j) this.f39365a.mo21466QA();
        Objects.requireNonNull(c13590j);
        l.e(onDemandMessageSource, "onDemandMessageSource");
        AbstractC13589i abstractC13589i = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21567ji(str, onDemandMessageSource);
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
        AbstractC13589i abstractC13589i = (AbstractC13589i) ((C13590j) this.f39365a.mo21466QA()).f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21562m2();
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: d */
    public void mo14646d() {
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f
    /* renamed from: e */
    public void mo14645e() {
        AbstractC13589i abstractC13589i = (AbstractC13589i) ((C13590j) this.f39365a.mo21466QA()).f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21560r5();
        }
    }
}
