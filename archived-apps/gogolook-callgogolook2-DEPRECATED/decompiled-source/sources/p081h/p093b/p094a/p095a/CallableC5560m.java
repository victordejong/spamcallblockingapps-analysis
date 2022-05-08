package p081h.p093b.p094a.p095a;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Callable;
import p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c;
/* renamed from: h.b.a.a.m */
/* loaded from: classes-dex2jar.jar:h/b/a/a/m.class */
public final class CallableC5560m implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ C5552i f13886a;

    /* renamed from: b */
    public final /* synthetic */ String f13887b;

    /* renamed from: c */
    public final /* synthetic */ C5534b f13888c;

    public CallableC5560m(C5534b bVar, C5552i iVar, String str) {
        this.f13888c = bVar;
        this.f13886a = iVar;
        this.f13887b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        AbstractC8807c cVar;
        Context context;
        cVar = this.f13888c.f13811g;
        context = this.f13888c.f13810f;
        return cVar.mo16900a(3, context.getPackageName(), this.f13886a.m25145k(), this.f13887b, (String) null);
    }
}
