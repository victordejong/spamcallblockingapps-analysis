package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.C0750y;
import com.google.android.gms.common.api.Api;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.bv */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bv.class */
public final class View$OnAttachStateChangeListenerC0493bv implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {

    /* renamed from: j */
    private static View$OnAttachStateChangeListenerC0493bv f2364j;

    /* renamed from: k */
    private static View$OnAttachStateChangeListenerC0493bv f2365k;

    /* renamed from: a */
    private final View f2366a;

    /* renamed from: b */
    private final CharSequence f2367b;

    /* renamed from: c */
    private final int f2368c;

    /* renamed from: d */
    private final Runnable f2369d = new RunnableC0494bw(this);

    /* renamed from: e */
    private final Runnable f2370e = new RunnableC0495bx(this);

    /* renamed from: f */
    private int f2371f;

    /* renamed from: g */
    private int f2372g;

    /* renamed from: h */
    private C0496by f2373h;

    /* renamed from: i */
    private boolean f2374i;

    private View$OnAttachStateChangeListenerC0493bv(View view, CharSequence charSequence) {
        this.f2366a = view;
        this.f2367b = charSequence;
        this.f2368c = C0750y.m8295a(ViewConfiguration.get(this.f2366a.getContext()));
        m9037d();
        this.f2366a.setOnLongClickListener(this);
        this.f2366a.setOnHoverListener(this);
    }

    /* renamed from: a */
    public static void m9042a(View view, CharSequence charSequence) {
        View$OnAttachStateChangeListenerC0493bv bvVar = f2364j;
        if (bvVar != null && bvVar.f2366a == view) {
            m9041a((View$OnAttachStateChangeListenerC0493bv) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            View$OnAttachStateChangeListenerC0493bv bvVar2 = f2365k;
            if (bvVar2 != null && bvVar2.f2366a == view) {
                bvVar2.m9043a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new View$OnAttachStateChangeListenerC0493bv(view, charSequence);
    }

    /* renamed from: a */
    private static void m9041a(View$OnAttachStateChangeListenerC0493bv bvVar) {
        View$OnAttachStateChangeListenerC0493bv bvVar2 = f2364j;
        if (bvVar2 != null) {
            bvVar2.m9038c();
        }
        f2364j = bvVar;
        if (bvVar != null) {
            f2364j.m9039b();
        }
    }

    /* renamed from: b */
    private void m9039b() {
        this.f2366a.postDelayed(this.f2369d, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: c */
    private void m9038c() {
        this.f2366a.removeCallbacks(this.f2369d);
    }

    /* renamed from: d */
    private void m9037d() {
        this.f2371f = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f2372g = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9043a() {
        if (f2365k == this) {
            f2365k = null;
            C0496by byVar = this.f2373h;
            if (byVar != null) {
                byVar.m9036a();
                this.f2373h = null;
                m9037d();
                this.f2366a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f2364j == this) {
            m9041a((View$OnAttachStateChangeListenerC0493bv) null);
        }
        this.f2366a.removeCallbacks(this.f2370e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9040a(boolean z) {
        long j;
        if (C0741t.m8370E(this.f2366a)) {
            m9041a((View$OnAttachStateChangeListenerC0493bv) null);
            View$OnAttachStateChangeListenerC0493bv bvVar = f2365k;
            if (bvVar != null) {
                bvVar.m9043a();
            }
            f2365k = this;
            this.f2374i = z;
            this.f2373h = new C0496by(this.f2366a.getContext());
            this.f2373h.m9035a(this.f2366a, this.f2371f, this.f2372g, this.f2374i, this.f2367b);
            this.f2366a.addOnAttachStateChangeListener(this);
            if (this.f2374i) {
                j = 2500;
            } else {
                j = ((C0741t.m8313r(this.f2366a) & 1) == 1 ? 3000L : 15000L) - ViewConfiguration.getLongPressTimeout();
            }
            this.f2366a.removeCallbacks(this.f2370e);
            this.f2366a.postDelayed(this.f2370e, j);
        }
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.f2373h != null && this.f2374i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f2366a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action != 10) {
                return false;
            }
            m9037d();
            m9043a();
            return false;
        } else if (!this.f2366a.isEnabled() || this.f2373h != null) {
            return false;
        } else {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (Math.abs(x - this.f2371f) > this.f2368c || Math.abs(y - this.f2372g) > this.f2368c) {
                this.f2371f = x;
                this.f2372g = y;
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
            m9041a(this);
            return false;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f2371f = view.getWidth() / 2;
        this.f2372g = view.getHeight() / 2;
        m9040a(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m9043a();
    }
}
