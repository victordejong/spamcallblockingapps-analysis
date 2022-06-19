package androidx.activity;

import androidx.activity.ComponentActivity;
import androidx.activity.result.p003g.AbstractC0049a;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b$a.class */
class ComponentActivity$b$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ int f62f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0049a.C0050a f63g;

    /* renamed from: h */
    final /* synthetic */ ComponentActivity.b f64h;

    ComponentActivity$b$a(ComponentActivity.b bVar, int i, AbstractC0049a.C0050a c0050a) {
        this.f64h = bVar;
        this.f62f = i;
        this.f63g = c0050a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f64h.m6967c(this.f62f, this.f63g.m6945a());
    }
}
