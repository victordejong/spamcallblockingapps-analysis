package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import com.google.android.gms.common.api.Api;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/TooltipCompatHandler.class */
class TooltipCompatHandler implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: o */
    private static TooltipCompatHandler f1431o;

    /* renamed from: p */
    private static TooltipCompatHandler f1432p;

    /* renamed from: f */
    private final View f1433f;

    /* renamed from: g */
    private final CharSequence f1434g;

    /* renamed from: h */
    private final int f1435h;

    /* renamed from: i */
    private final Runnable f1436i = new Runnable() { // from class: androidx.appcompat.widget.TooltipCompatHandler.1
        @Override // java.lang.Runnable
        public void run() {
            TooltipCompatHandler.this.m21163g(false);
        }
    };

    /* renamed from: j */
    private final Runnable f1437j = new Runnable() { // from class: androidx.appcompat.widget.TooltipCompatHandler.2
        @Override // java.lang.Runnable
        public void run() {
            TooltipCompatHandler.this.m21167c();
        }
    };

    /* renamed from: k */
    private int f1438k;

    /* renamed from: l */
    private int f1439l;

    /* renamed from: m */
    private TooltipPopup f1440m;

    /* renamed from: n */
    private boolean f1441n;

    private TooltipCompatHandler(View view, CharSequence charSequence) {
        this.f1433f = view;
        this.f1434g = charSequence;
        this.f1435h = ViewConfigurationCompat.m19127c(ViewConfiguration.get(view.getContext()));
        m21168b();
        this.f1433f.setOnLongClickListener(this);
        this.f1433f.setOnHoverListener(this);
    }

    /* renamed from: a */
    private void m21169a() {
        this.f1433f.removeCallbacks(this.f1436i);
    }

    /* renamed from: b */
    private void m21168b() {
        this.f1438k = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f1439l = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: d */
    private void m21166d() {
        this.f1433f.postDelayed(this.f1436i, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: e */
    private static void m21165e(TooltipCompatHandler tooltipCompatHandler) {
        TooltipCompatHandler tooltipCompatHandler2 = f1431o;
        if (tooltipCompatHandler2 != null) {
            tooltipCompatHandler2.m21169a();
        }
        f1431o = tooltipCompatHandler;
        if (tooltipCompatHandler != null) {
            tooltipCompatHandler.m21166d();
        }
    }

    /* renamed from: f */
    public static void m21164f(View view, CharSequence charSequence) {
        TooltipCompatHandler tooltipCompatHandler = f1431o;
        if (tooltipCompatHandler != null && tooltipCompatHandler.f1433f == view) {
            m21165e(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            TooltipCompatHandler tooltipCompatHandler2 = f1432p;
            if (tooltipCompatHandler2 != null && tooltipCompatHandler2.f1433f == view) {
                tooltipCompatHandler2.m21167c();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new TooltipCompatHandler(view, charSequence);
    }

    /* renamed from: h */
    private boolean m21162h(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f1438k) <= this.f1435h && Math.abs(y - this.f1439l) <= this.f1435h) {
            return false;
        }
        this.f1438k = x;
        this.f1439l = y;
        return true;
    }

    /* renamed from: c */
    void m21167c() {
        if (f1432p == this) {
            f1432p = null;
            TooltipPopup tooltipPopup = this.f1440m;
            if (tooltipPopup != null) {
                tooltipPopup.m21159c();
                this.f1440m = null;
                m21168b();
                this.f1433f.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1431o == this) {
            m21165e(null);
        }
        this.f1433f.removeCallbacks(this.f1437j);
    }

    /* renamed from: g */
    void m21163g(boolean z) {
        long j;
        int i;
        long j2;
        if (ViewCompat.m19219R(this.f1433f)) {
            m21165e(null);
            TooltipCompatHandler tooltipCompatHandler = f1432p;
            if (tooltipCompatHandler != null) {
                tooltipCompatHandler.m21167c();
            }
            f1432p = this;
            this.f1441n = z;
            TooltipPopup tooltipPopup = new TooltipPopup(this.f1433f.getContext());
            this.f1440m = tooltipPopup;
            tooltipPopup.m21157e(this.f1433f, this.f1438k, this.f1439l, this.f1441n, this.f1434g);
            this.f1433f.addOnAttachStateChangeListener(this);
            if (this.f1441n) {
                j = 2500;
            } else {
                if ((ViewCompat.m19225L(this.f1433f) & 1) == 1) {
                    j2 = 3000;
                    i = ViewConfiguration.getLongPressTimeout();
                } else {
                    j2 = 15000;
                    i = ViewConfiguration.getLongPressTimeout();
                }
                j = j2 - i;
            }
            this.f1433f.removeCallbacks(this.f1437j);
            this.f1433f.postDelayed(this.f1437j, j);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1440m != null && this.f1441n) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1433f.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action != 10) {
                return false;
            }
            m21168b();
            m21167c();
            return false;
        } else if (!this.f1433f.isEnabled() || this.f1440m != null || !m21162h(motionEvent)) {
            return false;
        } else {
            m21165e(this);
            return false;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1438k = view.getWidth() / 2;
        this.f1439l = view.getHeight() / 2;
        m21163g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m21167c();
    }
}
