package p081h.p203i.p204a.p224e.p280k;

import com.google.android.gms.location.ActivityTransition;
import java.util.Comparator;
/* renamed from: h.i.a.e.k.y */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/y.class */
public final class C8852y implements Comparator<ActivityTransition> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(ActivityTransition activityTransition, ActivityTransition activityTransition2) {
        ActivityTransition activityTransition3 = activityTransition;
        ActivityTransition activityTransition4 = activityTransition2;
        int c = activityTransition3.m31822c();
        int c2 = activityTransition4.m31822c();
        if (c != c2) {
            return c < c2 ? -1 : 1;
        }
        int H = activityTransition3.m31823H();
        int H2 = activityTransition4.m31823H();
        if (H == H2) {
            return 0;
        }
        return H < H2 ? -1 : 1;
    }
}
