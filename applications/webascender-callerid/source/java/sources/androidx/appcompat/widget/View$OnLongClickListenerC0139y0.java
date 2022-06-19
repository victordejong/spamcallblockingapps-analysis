package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import f.h.l.t;
import f.h.l.u;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.y0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y0.class */
public class View$OnLongClickListenerC0139y0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: o */
    private static View$OnLongClickListenerC0139y0 f612o;

    /* renamed from: p */
    private static View$OnLongClickListenerC0139y0 f613p;

    /* renamed from: f */
    private final View f614f;

    /* renamed from: g */
    private final CharSequence f615g;

    /* renamed from: h */
    private final int f616h;

    /* renamed from: i */
    private final Runnable f617i = new RunnableC0140a();

    /* renamed from: j */
    private final Runnable f618j = new RunnableC0141b();

    /* renamed from: k */
    private int f619k;

    /* renamed from: l */
    private int f620l;

    /* renamed from: m */
    private C0144z0 f621m;

    /* renamed from: n */
    private boolean f622n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.y0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y0$a.class */
    public class RunnableC0140a implements Runnable {
        RunnableC0140a() {
            View$OnLongClickListenerC0139y0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0139y0.this.m6406g(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.y0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y0$b.class */
    public class RunnableC0141b implements Runnable {
        RunnableC0141b() {
            View$OnLongClickListenerC0139y0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0139y0.this.m6410c();
        }
    }

    private View$OnLongClickListenerC0139y0(View view, CharSequence charSequence) {
        this.f614f = view;
        this.f615g = charSequence;
        this.f616h = u.c(ViewConfiguration.get(view.getContext()));
        m6411b();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: a */
    private void m6412a() {
        this.f614f.removeCallbacks(this.f617i);
    }

    /* renamed from: b */
    private void m6411b() {
        this.f619k = Integer.MAX_VALUE;
        this.f620l = Integer.MAX_VALUE;
    }

    /* renamed from: d */
    private void m6409d() {
        this.f614f.postDelayed(this.f617i, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: e */
    private static void m6408e(View$OnLongClickListenerC0139y0 view$OnLongClickListenerC0139y0) {
        View$OnLongClickListenerC0139y0 view$OnLongClickListenerC0139y02 = f612o;
        if (view$OnLongClickListenerC0139y02 != null) {
            view$OnLongClickListenerC0139y02.m6412a();
        }
        f612o = view$OnLongClickListenerC0139y0;
        if (view$OnLongClickListenerC0139y0 != null) {
            view$OnLongClickListenerC0139y0.m6409d();
        }
    }

    /* renamed from: f */
    public static void m6407f(View view, CharSequence charSequence) {
        View$OnLongClickListenerC0139y0 view$OnLongClickListenerC0139y0 = f612o;
        if (view$OnLongClickListenerC0139y0 != null && view$OnLongClickListenerC0139y0.f614f == view) {
            m6408e(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new View$OnLongClickListenerC0139y0(view, charSequence);
            return;
        }
        View$OnLongClickListenerC0139y0 view$OnLongClickListenerC0139y02 = f613p;
        if (view$OnLongClickListenerC0139y02 != null && view$OnLongClickListenerC0139y02.f614f == view) {
            view$OnLongClickListenerC0139y02.m6410c();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    /* renamed from: h */
    private boolean m6405h(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f619k) > this.f616h || Math.abs(y - this.f620l) > this.f616h) {
            this.f619k = x;
            this.f620l = y;
            return true;
        }
        return false;
    }

    /* renamed from: c */
    void m6410c() {
        if (f613p == this) {
            f613p = null;
            C0144z0 c0144z0 = this.f621m;
            if (c0144z0 != null) {
                c0144z0.m6369c();
                this.f621m = null;
                m6411b();
                this.f614f.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f612o == this) {
            m6408e(null);
        }
        this.f614f.removeCallbacks(this.f618j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r2v5, types: [long] */
    /* renamed from: g */
    void m6406g(boolean z) {
        ?? r10;
        int i;
        ?? r102;
        if (!t.P(this.f614f)) {
            return;
        }
        m6408e(null);
        View$OnLongClickListenerC0139y0 view$OnLongClickListenerC0139y0 = f613p;
        if (view$OnLongClickListenerC0139y0 != null) {
            view$OnLongClickListenerC0139y0.m6410c();
        }
        f613p = this;
        this.f622n = z;
        C0144z0 c0144z0 = new C0144z0(this.f614f.getContext());
        this.f621m = c0144z0;
        c0144z0.m6367e(this.f614f, this.f619k, this.f620l, this.f622n, this.f615g);
        this.f614f.addOnAttachStateChangeListener(this);
        if (this.f622n) {
            r10 = 2500;
        } else {
            if ((t.J(this.f614f) & 1) == 1) {
                r102 = true;
                i = ViewConfiguration.getLongPressTimeout();
            } else {
                r102 = true;
                i = ViewConfiguration.getLongPressTimeout();
            }
            r10 = (r102 == true ? 1L : 0L) - i;
        }
        this.f614f.removeCallbacks(this.f618j);
        this.f614f.postDelayed(this.f618j, r10);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f621m == null || !this.f622n) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f614f.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action != 10) {
                    return false;
                }
                m6411b();
                m6410c();
                return false;
            } else if (!this.f614f.isEnabled() || this.f621m != null || !m6405h(motionEvent)) {
                return false;
            } else {
                m6408e(this);
                return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f619k = view.getWidth() / 2;
        this.f620l = view.getHeight() / 2;
        m6406g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m6410c();
    }
}
