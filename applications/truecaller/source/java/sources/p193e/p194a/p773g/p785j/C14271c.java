package p193e.p194a.p773g.p785j;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import s1.z.c.l;
/* renamed from: e.a.g.j.c */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/c.class */
public final class C14271c implements AbstractC14269b {

    /* renamed from: a */
    public final AbstractC19223c0 f41313a;

    @Inject
    public C14271c(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        this.f41313a = abstractC19223c0;
    }

    /* renamed from: a */
    public final int m20303a(Context context, boolean z, int i, int i2) {
        float f;
        if (z) {
            f = 1.0f;
        } else {
            Resources resources = context.getResources();
            ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
            if (Build.VERSION.SDK_INT >= 29) {
                f = resources.getFloat(i2);
            } else {
                ThreadLocal<TypedValue> threadLocal2 = C26488h.f74265a;
                TypedValue typedValue = threadLocal2.get();
                TypedValue typedValue2 = typedValue;
                if (typedValue == null) {
                    typedValue2 = new TypedValue();
                    threadLocal2.set(typedValue2);
                }
                resources.getValue(i2, typedValue2, true);
                if (typedValue2.type != 4) {
                    StringBuilder m8728C = C22128a.m8728C("Resource ID #0x");
                    m8728C.append(Integer.toHexString(i2));
                    m8728C.append(" type #0x");
                    m8728C.append(Integer.toHexString(typedValue2.type));
                    m8728C.append(" is not valid");
                    throw new Resources.NotFoundException(m8728C.toString());
                }
                f = typedValue2.getFloat();
            }
        }
        return (int) (f * this.f41313a.mo13770H(i));
    }

    /* renamed from: b */
    public void m20302b(Context context, boolean z, View view, C14301p0 c14301p0, C14299o0 c14299o0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(view, ViewAction.VIEW);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (c14301p0 != null) {
            int m20303a = m20303a(context, z, c14301p0.f41373a, c14301p0.f41374b);
            marginLayoutParams.width = m20303a;
            marginLayoutParams.height = m20303a;
        }
        if (c14299o0 != null) {
            int m20303a2 = m20303a(context, z, c14299o0.f41370b, c14299o0.f41371c);
            int ordinal = c14299o0.f41369a.ordinal();
            if (ordinal == 0) {
                marginLayoutParams.topMargin = m20303a2;
            } else if (ordinal == 1) {
                marginLayoutParams.bottomMargin = m20303a2;
            }
        }
        view.setLayoutParams(marginLayoutParams);
    }
}
