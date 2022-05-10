package p131c.p161d.p170b.p224d.p259h;

import com.google.android.gms.location.ActivityTransition;
import java.util.Comparator;
/* renamed from: c.d.b.d.h.c */
/* loaded from: classes-dex2jar.jar:c/d/b/d/h/c.class */
public final class C4634c implements Comparator<ActivityTransition> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(ActivityTransition activityTransition, ActivityTransition activityTransition2) {
        ActivityTransition activityTransition3 = activityTransition;
        ActivityTransition activityTransition4 = activityTransition2;
        int f = activityTransition3.m9424f();
        int f2 = activityTransition4.m9424f();
        if (f != f2) {
            return f < f2 ? -1 : 1;
        }
        int i = activityTransition3.m9423i();
        int i2 = activityTransition4.m9423i();
        if (i == i2) {
            return 0;
        }
        return i < i2 ? -1 : 1;
    }
}
