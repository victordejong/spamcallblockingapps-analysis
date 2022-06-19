package p193e.p194a.p682e.p683a;

import android.widget.Toast;
import com.truecaller.log.AssertionUtil;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.e.a.l3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/l3.class */
public class C12777l3 implements l<Throwable, s> {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC12763k3 f37232a;

    public C12777l3(View$OnClickListenerC12763k3 view$OnClickListenerC12763k3) {
        this.f37232a = view$OnClickListenerC12763k3;
    }

    /* renamed from: d */
    public Object m22661d(Object obj) {
        Throwable th = (Throwable) obj;
        if (th != null) {
            Toast.makeText(this.f37232a.getContext(), "An error occurred during heap dumping", 0).show();
            AssertionUtil.reportThrowableButNeverCrash(th);
        } else {
            C22128a.m8549y0(this.f37232a, "Dump saved in Downloads directory", 1);
        }
        return s.a;
    }
}
