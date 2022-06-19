package p193e.p194a.p947k.p948a.p962i;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.videocallerid.p187ui.settings.VideoCallerIdSettingsView;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.k.a.i.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/i/a.class */
public abstract class AbstractC15790a extends ConstraintLayout implements b {

    /* renamed from: t */
    public ViewComponentManager f44546t;

    /* renamed from: u */
    public boolean f44547u;

    public AbstractC15790a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m18309f1();
    }

    public AbstractC15790a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m18309f1();
    }

    /* renamed from: Yt */
    public final Object m18310Yt() {
        if (this.f44546t == null) {
            this.f44546t = new ViewComponentManager(this, false);
        }
        return this.f44546t.Yt();
    }

    /* renamed from: f1 */
    public void m18309f1() {
        if (!this.f44547u) {
            this.f44547u = true;
            ((AbstractC15803j) m18310Yt()).mo11863f((VideoCallerIdSettingsView) this);
        }
    }
}
