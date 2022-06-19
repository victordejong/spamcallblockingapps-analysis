package p193e.p194a.p619d.p666y.p668b;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.voip.notification.inapp.VoipInAppNotificationView;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.d.y.b.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/b/a.class */
public abstract class AbstractC12298a extends ConstraintLayout implements b {

    /* renamed from: t */
    public ViewComponentManager f35934t;

    /* renamed from: u */
    public boolean f35935u;

    public AbstractC12298a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m23299f1();
    }

    public AbstractC12298a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m23299f1();
    }

    /* renamed from: Yt */
    public final Object m23300Yt() {
        if (this.f35934t == null) {
            this.f35934t = new ViewComponentManager(this, false);
        }
        return this.f35934t.Yt();
    }

    /* renamed from: f1 */
    public void m23299f1() {
        if (!this.f35935u) {
            this.f35935u = true;
            ((AbstractC12312m) m23300Yt()).mo11866b((VoipInAppNotificationView) this);
        }
    }
}
