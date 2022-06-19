package p193e.p194a.p947k.p948a.p954e.p957m;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.videocallerid.p187ui.manageincomingvideo.managepreferences.ManagePreferencesView;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.k.a.e.m.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/m/a.class */
public abstract class AbstractC15683a extends ConstraintLayout implements b {

    /* renamed from: t */
    public ViewComponentManager f44254t;

    /* renamed from: u */
    public boolean f44255u;

    public AbstractC15683a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m18520f1();
    }

    public AbstractC15683a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m18520f1();
    }

    /* renamed from: Yt */
    public final Object m18521Yt() {
        if (this.f44254t == null) {
            this.f44254t = new ViewComponentManager(this, false);
        }
        return this.f44254t.Yt();
    }

    /* renamed from: f1 */
    public void m18520f1() {
        if (!this.f44255u) {
            this.f44255u = true;
            ((AbstractC15689g) m18521Yt()).mo11867a((ManagePreferencesView) this);
        }
    }
}
