package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.voip.p192ui.util.view.tile.VoipContactTileGroupView;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.d.c.a.p.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/a.class */
public abstract class AbstractC11199a extends ConstraintLayout implements b {

    /* renamed from: t */
    public ViewComponentManager f33086t;

    /* renamed from: u */
    public boolean f33087u;

    public AbstractC11199a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25054f1();
    }

    public AbstractC11199a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25054f1();
    }

    /* renamed from: Yt */
    public final Object m25055Yt() {
        if (this.f33086t == null) {
            this.f33086t = new ViewComponentManager(this, false);
        }
        return this.f33086t.Yt();
    }

    /* renamed from: f1 */
    public void m25054f1() {
        if (!this.f33087u) {
            this.f33087u = true;
            ((AbstractC11229n) m25055Yt()).mo11864d((VoipContactTileGroupView) this);
        }
    }
}
