package p193e.p194a.p682e.p683a;

import android.content.Context;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import n3.b.a.g;
import s1.z.c.l;
/* renamed from: e.a.e.a.m2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/m2.class */
public final class C12781m2 extends g {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12781m2(Context context) {
        super(context, (int) C2752R.style.Theme_Floating);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C12781m2.super.onCreate(bundle);
        setContentView(C2752R.layout.dialog_full_screen_progress);
    }
}
