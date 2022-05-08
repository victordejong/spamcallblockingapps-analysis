package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.Intent;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6874h;
/* renamed from: h.i.a.e.d.n.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/d0.class */
public final class C6982d0 extends AbstractDialogInterface$OnClickListenerC6989g {

    /* renamed from: a */
    public final /* synthetic */ Intent f17092a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC6874h f17093b;

    /* renamed from: c */
    public final /* synthetic */ int f17094c;

    public C6982d0(Intent intent, AbstractC6874h hVar, int i) {
        this.f17092a = intent;
        this.f17093b = hVar;
        this.f17094c = i;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractDialogInterface$OnClickListenerC6989g
    /* renamed from: a */
    public final void mo21371a() {
        Intent intent = this.f17092a;
        if (intent != null) {
            this.f17093b.startActivityForResult(intent, this.f17094c);
        }
    }
}
