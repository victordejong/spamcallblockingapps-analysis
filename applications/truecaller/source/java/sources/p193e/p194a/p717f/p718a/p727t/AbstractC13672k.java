package p193e.p194a.p717f.p718a.p727t;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.truecaller.incallui.callui.callergradient.CallerGradientView;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.f.a.t.k */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/t/k.class */
public abstract class AbstractC13672k extends View implements b {

    /* renamed from: a */
    public ViewComponentManager f39631a;

    /* renamed from: b */
    public boolean f39632b;

    public AbstractC13672k(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m21330c();
    }

    public AbstractC13672k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m21330c();
    }

    /* renamed from: Yt */
    public final Object m21331Yt() {
        if (this.f39631a == null) {
            this.f39631a = new ViewComponentManager(this, false);
        }
        return this.f39631a.Yt();
    }

    /* renamed from: c */
    public void m21330c() {
        if (!this.f39632b) {
            this.f39632b = true;
            ((AbstractC13671j) m21331Yt()).mo11862g((CallerGradientView) this);
        }
    }
}
