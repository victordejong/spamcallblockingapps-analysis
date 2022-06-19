package p193e.p194a.p372b0.p373a.p383e0;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.b0.a.e0.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/e0/a.class */
public final class C8301a {

    /* renamed from: a */
    public static final C8301a f25570a = new C8301a();

    /* renamed from: e.a.b0.a.e0.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/e0/a$a.class */
    public static final class View$OnTouchListenerC8302a implements View.OnTouchListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f25571a;

        /* renamed from: b */
        public final /* synthetic */ ViewGroup f25572b;

        /* renamed from: c */
        public final /* synthetic */ C8303b f25573c;

        /* renamed from: d */
        public final /* synthetic */ a f25574d;

        public View$OnTouchListenerC8302a(boolean z, ViewGroup viewGroup, C8303b c8303b, a aVar) {
            this.f25571a = z;
            this.f25572b = viewGroup;
            this.f25573c = c8303b;
            this.f25574d = aVar;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            if (this.f25571a) {
                l.d(motionEvent, "event");
                if (motionEvent.getY() == 0.0f) {
                    return false;
                }
            }
            ViewGroup viewGroup = this.f25572b;
            l.e(viewGroup, "parent");
            Object tag = viewGroup.getTag();
            Object obj = tag;
            if (!(tag instanceof C8304c)) {
                obj = null;
            }
            C8304c c8304c = (C8304c) obj;
            if (c8304c != null) {
                viewGroup.removeOnLayoutChangeListener(c8304c.f25583b);
                viewGroup.removeView(c8304c.f25582a);
                viewGroup.setTag(null);
                try {
                    Context context = viewGroup.getContext();
                    l.d(context, "parent.context");
                    C19291g.m13529n0(context).removeView(c8304c.f25584c);
                } catch (Exception e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                }
            }
            if (this.f25573c.getVisibility() == 0) {
                this.f25574d.invoke();
                return true;
            }
            return true;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m28681c(C8301a c8301a, ViewGroup viewGroup, TooltipDirection tooltipDirection, int i, View view, float f, Context context, int i2, boolean z, a aVar, int i3) {
        if ((i3 & 32) != 0) {
            context = viewGroup.getContext();
            l.d(context, "parent.context");
        }
        if ((i3 & 64) != 0) {
            i2 = 0;
        }
        if ((i3 & 128) != 0) {
            z = false;
        }
        return c8301a.m28683a(viewGroup, tooltipDirection, i, view, f, context, i2, z, aVar);
    }

    /* renamed from: a */
    public final boolean m28683a(ViewGroup viewGroup, TooltipDirection tooltipDirection, int i, View view, float f, Context context, int i2, boolean z, a<s> aVar) {
        l.e(viewGroup, "parent");
        l.e(tooltipDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "dismissListener");
        String string = context.getString(i);
        l.d(string, "context.getString(textRes)");
        return m28682b(viewGroup, tooltipDirection, string, view, f, context, i2, z, aVar);
    }

    /* renamed from: b */
    public final boolean m28682b(ViewGroup viewGroup, TooltipDirection tooltipDirection, String str, View view, float f, Context context, int i, boolean z, a<s> aVar) {
        l.e(viewGroup, "parent");
        l.e(tooltipDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        l.e(str, "text");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "dismissListener");
        m28680d(viewGroup);
        C8303b c8303b = new C8303b(context, null, 0, 6);
        c8303b.setDirection(tooltipDirection);
        if (view != null) {
            c8303b.setNotchBias(view.getWidth() / 2.0f);
        }
        if (i != 0) {
            c8303b.setColor(i);
        }
        c8303b.setText(str);
        Context context2 = viewGroup.getContext();
        l.d(context2, "parent.context");
        View view2 = new View(context2);
        Object systemService = context2.getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        try {
            ((WindowManager) systemService).addView(view2, new WindowManager.LayoutParams(1000, 8650776, -2));
        } catch (WindowManager.BadTokenException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            view2 = null;
        }
        if (view2 != null) {
            view2.setOnTouchListener(new View$OnTouchListenerC8302a(z, viewGroup, c8303b, aVar));
            View$OnLayoutChangeListenerC8305d view$OnLayoutChangeListenerC8305d = new View$OnLayoutChangeListenerC8305d(c8303b, tooltipDirection, view, f);
            viewGroup.addOnLayoutChangeListener(view$OnLayoutChangeListenerC8305d);
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
            viewGroup.addView(c8303b, -2, -2);
            viewGroup.setTag(new C8304c(c8303b, view$OnLayoutChangeListenerC8305d, view2));
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public final void m28680d(ViewGroup viewGroup) {
        l.e(viewGroup, "parent");
        Object tag = viewGroup.getTag();
        Object obj = tag;
        if (!(tag instanceof C8304c)) {
            obj = null;
        }
        C8304c c8304c = (C8304c) obj;
        if (c8304c != null) {
            viewGroup.removeOnLayoutChangeListener(c8304c.f25583b);
            viewGroup.removeView(c8304c.f25582a);
            viewGroup.setTag(null);
            try {
                Context context = viewGroup.getContext();
                l.d(context, "parent.context");
                C19291g.m13529n0(context).removeView(c8304c.f25584c);
            } catch (Exception e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
        }
    }
}
