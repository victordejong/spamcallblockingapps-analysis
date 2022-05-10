package p131c.p431l.p432a.p468n;

import android.animation.Keyframe;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
/* renamed from: c.l.a.n.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/b.class */
public class C6840b {

    /* renamed from: c.l.a.n.b$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/n/b$a.class */
    public interface AbstractC6841a {
        /* renamed from: a */
        float mo3311a(int i, float f);
    }

    static {
        new OvershootInterpolator();
        new OvershootInterpolator(1.0f);
        new DecelerateInterpolator();
        new AccelerateInterpolator();
    }

    /* renamed from: a */
    public static Keyframe[] m19610a(int i, float f, AbstractC6841a aVar) {
        Keyframe[] keyframeArr = new Keyframe[i];
        float f2 = 1.0f / (i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            keyframeArr[i2] = Keyframe.ofFloat(i2 * f2, aVar.mo3311a(i2, f));
        }
        return keyframeArr;
    }
}
