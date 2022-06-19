package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.d.c.a.p.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/b.class */
public abstract class AbstractC11200b extends ConstraintLayout implements b {

    /* renamed from: t */
    public ViewComponentManager f33088t;

    /* renamed from: u */
    public boolean f33089u;

    public AbstractC11200b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (!this.f33089u) {
            this.f33089u = true;
            ((AbstractC11247x) m25053Yt()).mo11861h((C11245w) this);
        }
    }

    /* renamed from: Yt */
    public final Object m25053Yt() {
        if (this.f33088t == null) {
            this.f33088t = new ViewComponentManager(this, false);
        }
        return this.f33088t.Yt();
    }
}
