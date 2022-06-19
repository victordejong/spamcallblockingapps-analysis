package p193e.p194a.p947k.p948a.p964k;

import android.content.Context;
import android.util.AttributeSet;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenVideoPlayerView;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import o3.b.b.b;
/* renamed from: e.a.k.a.k.o */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/o.class */
public abstract class AbstractC15842o extends AbstractC15821c implements b {

    /* renamed from: f */
    public ViewComponentManager f44678f;

    /* renamed from: g */
    public boolean f44679g;

    public AbstractC15842o(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (!this.f44679g) {
            this.f44679g = true;
            ((AbstractC15841n) m18261Yt()).mo11860i((FullScreenVideoPlayerView) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18261Yt() {
        if (this.f44678f == null) {
            this.f44678f = new ViewComponentManager(this, false);
        }
        return this.f44678f.Yt();
    }
}
