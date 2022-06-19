package p193e.p194a.p773g.p774a.p775a;

import android.view.View;
import com.truecaller.acs.C2778R;
import com.truecaller.ads.p134ui.AdsSwitchView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
/* renamed from: e.a.g.a.a.d */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/a/d.class */
public final class RunnableC14100d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C14074a f40753a;

    /* renamed from: b */
    public final /* synthetic */ AdsSwitchView f40754b;

    public RunnableC14100d(C14074a c14074a, AdsSwitchView adsSwitchView) {
        this.f40753a = c14074a;
        this.f40754b = adsSwitchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View findViewById;
        C19286f.m13684T(this.f40754b);
        int integer = this.f40754b.getResources().getInteger(17694720);
        if (integer != 0) {
            View view = this.f40753a.getView();
            this.f40754b.setTranslationY(-((view == null || (findViewById = view.findViewById(C2778R.C2780id.mainContainer)) == null) ? 0 : findViewById.getHeight()));
            this.f40754b.animate().translationY(0.0f).setDuration(integer).start();
        }
    }
}
