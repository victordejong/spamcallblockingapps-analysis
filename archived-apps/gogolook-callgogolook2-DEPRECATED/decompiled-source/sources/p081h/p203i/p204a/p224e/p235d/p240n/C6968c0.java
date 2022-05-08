package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.Intent;
import androidx.fragment.app.Fragment;
/* renamed from: h.i.a.e.d.n.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/c0.class */
public final class C6968c0 extends AbstractDialogInterface$OnClickListenerC6989g {

    /* renamed from: a */
    public final /* synthetic */ Intent f17047a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f17048b;

    /* renamed from: c */
    public final /* synthetic */ int f17049c;

    public C6968c0(Intent intent, Fragment fragment, int i) {
        this.f17047a = intent;
        this.f17048b = fragment;
        this.f17049c = i;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractDialogInterface$OnClickListenerC6989g
    /* renamed from: a */
    public final void mo21371a() {
        Intent intent = this.f17047a;
        if (intent != null) {
            this.f17048b.startActivityForResult(intent, this.f17049c);
        }
    }
}
