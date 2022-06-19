package p193e.p194a.p947k.p948a.p963j;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import java.util.NoSuchElementException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import s1.s;
import s1.u.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.a.j.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/j/a.class */
public final class C15804a {

    /* renamed from: a */
    public final g<C15805a> f44583a;

    /* renamed from: b */
    public final View f44584b;

    /* renamed from: c */
    public final Integer f44585c;

    /* renamed from: d */
    public final ToastWithActionView f44586d;

    /* renamed from: e.a.k.a.j.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/j/a$a.class */
    public static final class C15805a {

        /* renamed from: a */
        public final String f44587a;

        /* renamed from: b */
        public final boolean f44588b;

        /* renamed from: c */
        public final long f44589c;

        /* renamed from: d */
        public final AbstractC15816a f44590d;

        public C15805a(String str, boolean z, long j, AbstractC15816a abstractC15816a) {
            l.e(str, "message");
            this.f44587a = str;
            this.f44588b = z;
            this.f44589c = j;
            this.f44590d = abstractC15816a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Type inference failed for: r10v3 */
        public /* synthetic */ C15805a(String str, boolean z, long j, AbstractC15816a abstractC15816a, int i) {
            this(str, z, (i & 4) != 0 ? 3000 : j, null);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15805a)) {
                    return false;
                }
                C15805a c15805a = (C15805a) obj;
                return l.a(this.f44587a, c15805a.f44587a) && this.f44588b == c15805a.f44588b && this.f44589c == c15805a.f44589c && l.a(this.f44590d, c15805a.f44590d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f44587a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.f44588b;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            int m34274a = C4876d.m34274a(this.f44589c);
            AbstractC15816a abstractC15816a = this.f44590d;
            if (abstractC15816a != null) {
                i = abstractC15816a.hashCode();
            }
            return (((((hashCode * 31) + i2) * 31) + m34274a) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Message(message=");
            m8728C.append(this.f44587a);
            m8728C.append(", showGotIt=");
            m8728C.append(this.f44588b);
            m8728C.append(", duration=");
            m8728C.append(this.f44589c);
            m8728C.append(", avatarVideoConfig=");
            m8728C.append(this.f44590d);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.a.j.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/j/a$b.class */
    public static final class C15806b extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15806b() {
            super(0);
            C15804a.this = r4;
        }

        public Object invoke() {
            if (C15804a.this.f44583a.a() != 0) {
                C15804a.this.f44583a.removeFirst();
                C15804a.this.m18283b();
            }
            return s.a;
        }
    }

    public C15804a(View view, Integer num, ToastWithActionView toastWithActionView, int i) {
        view = (i & 1) != 0 ? null : view;
        num = (i & 2) != 0 ? null : num;
        toastWithActionView = (i & 4) != 0 ? null : toastWithActionView;
        this.f44584b = view;
        this.f44585c = num;
        this.f44586d = toastWithActionView;
        this.f44583a = new g<>();
    }

    /* renamed from: a */
    public final void m18284a(C15805a c15805a) {
        l.e(c15805a, "toastMessage");
        this.f44583a.addLast(c15805a);
        if (this.f44583a.c == 1) {
            m18283b();
        }
    }

    /* renamed from: b */
    public final void m18283b() {
        if (this.f44583a.a() == 0) {
            return;
        }
        View view = this.f44584b;
        if (view != null && !view.isAttachedToWindow()) {
            this.f44583a.clear();
            return;
        }
        g<C15805a> gVar = this.f44583a;
        if (gVar.isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        C15805a c15805a = (C15805a) gVar.b[gVar.a];
        C15806b c15806b = new C15806b();
        ToastWithActionView toastWithActionView = this.f44586d;
        if (toastWithActionView != null) {
            ToastWithActionView.C4737a c4737a = ToastWithActionView.f16055i;
            g<C15805a> gVar2 = this.f44583a;
            l.e(c15805a, "toastMessage");
            l.e(gVar2, "queue");
            l.e(c15806b, "dismissListener");
            if (toastWithActionView == null) {
                return;
            }
            C19286f.m13684T(toastWithActionView);
            toastWithActionView.m34451j(c15805a.f44587a, c15805a.f44588b, c15805a.f44590d);
            long j = c15805a.f44589c;
            if (j >= 0) {
                toastWithActionView.m34453h(j, gVar2);
            }
            toastWithActionView.setDismissListener(new C15813g(c15805a, gVar2, toastWithActionView, c15806b));
            return;
        }
        ToastWithActionView.C4737a c4737a2 = ToastWithActionView.f16055i;
        View view2 = this.f44584b;
        Integer num = this.f44585c;
        l.e(c15805a, "toastMessage");
        l.e(c15806b, "dismissListener");
        if (view2 == null || num == null) {
            return;
        }
        num.intValue();
        FrameLayout frameLayout = new FrameLayout(view2.getContext());
        Context context = view2.getContext();
        l.d(context, "anchorView.context");
        ToastWithActionView toastWithActionView2 = new ToastWithActionView(context, null, 0, 6);
        Context context2 = toastWithActionView2.getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        int dimensionPixelSize = context2.getResources().getDimensionPixelSize(C4718R.dimen.toast_with_action_view_horizontal_margin);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        layoutParams.setMarginStart(dimensionPixelSize);
        layoutParams.setMarginEnd(dimensionPixelSize);
        layoutParams.bottomMargin = num.intValue();
        toastWithActionView2.setLayoutParams(layoutParams);
        toastWithActionView2.m34451j(c15805a.f44587a, c15805a.f44588b, c15805a.f44590d);
        frameLayout.addView(toastWithActionView2);
        PopupWindow popupWindow = new PopupWindow((View) frameLayout, -1, -1, false);
        toastWithActionView2.setDismissListener(new C15807b(popupWindow));
        C19286f.m13656w(view2, new C15812f(popupWindow, toastWithActionView2, view2, c15806b, c15805a, frameLayout));
    }
}
