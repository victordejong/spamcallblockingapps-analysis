package p131c.p132a.p133a.p134a;

import java.util.concurrent.Callable;
import p131c.p132a.p133a.p134a.C1999i;
/* renamed from: c.a.a.a.p */
/* loaded from: classes-dex2jar.jar:c/a/a/a/p.class */
public final class CallableC2015p implements Callable<C1999i.C2000a> {

    /* renamed from: a */
    public final /* synthetic */ String f7875a;

    /* renamed from: b */
    public final /* synthetic */ C1987d f7876b;

    public CallableC2015p(C1987d dVar, String str) {
        this.f7876b = dVar;
        this.f7875a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ C1999i.C2000a call() throws Exception {
        return C1987d.m31343a(this.f7876b, this.f7875a);
    }
}
