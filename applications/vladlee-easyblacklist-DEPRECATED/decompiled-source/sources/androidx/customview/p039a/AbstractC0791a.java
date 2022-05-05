package androidx.customview.p039a;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import androidx.core.p037g.p038a.C0700e;
import androidx.customview.p039a.C0795d;
import androidx.p026b.C0543j;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.customview.a.a */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/a.class */
public abstract class AbstractC0791a extends C0689a {

    /* renamed from: c */
    private static final Rect f3262c = new Rect(Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: l */
    private static final C0795d.AbstractC0796a<C0696d> f3263l = new C0793b();

    /* renamed from: m */
    private static final C0795d.AbstractC0797b<C0543j<C0696d>, C0696d> f3264m = new C0794c();

    /* renamed from: h */
    private final AccessibilityManager f3271h;

    /* renamed from: i */
    private final View f3272i;

    /* renamed from: j */
    private C0792a f3273j;

    /* renamed from: d */
    private final Rect f3267d = new Rect();

    /* renamed from: e */
    private final Rect f3268e = new Rect();

    /* renamed from: f */
    private final Rect f3269f = new Rect();

    /* renamed from: g */
    private final int[] f3270g = new int[2];

    /* renamed from: a */
    int f3265a = Integer.MIN_VALUE;

    /* renamed from: b */
    int f3266b = Integer.MIN_VALUE;

    /* renamed from: k */
    private int f3274k = Integer.MIN_VALUE;

    /* renamed from: androidx.customview.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/a$a.class */
    private final class C0792a extends C0700e {
        C0792a() {
        }

        @Override // androidx.core.p037g.p038a.C0700e
        /* renamed from: a */
        public final C0696d mo8102a(int i) {
            return C0696d.m8526a(AbstractC0791a.this.m8120a(i));
        }

        @Override // androidx.core.p037g.p038a.C0700e
        /* renamed from: a */
        public final boolean mo8101a(int i, int i2, Bundle bundle) {
            return AbstractC0791a.this.m8118a(i, i2, bundle);
        }

        @Override // androidx.core.p037g.p038a.C0700e
        /* renamed from: b */
        public final C0696d mo8100b(int i) {
            int i2 = i == 2 ? AbstractC0791a.this.f3265a : AbstractC0791a.this.f3266b;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return mo8102a(i2);
        }
    }

    public AbstractC0791a(View view) {
        if (view != null) {
            this.f3272i = view;
            this.f3271h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (C0741t.m8327f(view) == 0) {
                C0741t.m8358a(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    /* renamed from: a */
    private static Rect m8112a(View view, int i, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i == 17) {
            rect.set(width, 0, width, height);
        } else if (i == 33) {
            rect.set(0, height, width, height);
        } else if (i == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i == 130) {
            rect.set(0, -1, width, -1);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    /* renamed from: a */
    private void m8117a(int i, Rect rect) {
        m8120a(i).m8532a(rect);
    }

    /* renamed from: a */
    private boolean m8116a(Rect rect) {
        View view;
        if (rect == null || rect.isEmpty() || this.f3272i.getWindowVisibility() != 0) {
            return false;
        }
        View view2 = this.f3272i;
        do {
            ViewParent parent = view2.getParent();
            if (!(parent instanceof View)) {
                return parent != null;
            }
            view = (View) parent;
            if (view.getAlpha() <= 0.0f) {
                return false;
            }
            view2 = view;
        } while (view.getVisibility() == 0);
        return false;
    }

    /* renamed from: b */
    private C0543j<C0696d> m8110b() {
        ArrayList arrayList = new ArrayList();
        mo1293a(arrayList);
        C0543j<C0696d> jVar = new C0543j<>();
        for (int i = 0; i < arrayList.size(); i++) {
            jVar.m8894b(i, m8106c(i));
        }
        return jVar;
    }

    /* renamed from: b */
    private void m8109b(int i) {
        int i2 = this.f3274k;
        if (i2 != i) {
            this.f3274k = i;
            m8119a(i, 128);
            m8119a(i2, 256);
        }
    }

    /* renamed from: b */
    private boolean m8108b(int i, Rect rect) {
        Object obj;
        C0543j<C0696d> b = m8110b();
        int i2 = this.f3266b;
        int i3 = Integer.MIN_VALUE;
        C0696d a = i2 == Integer.MIN_VALUE ? null : b.m8899a(i2);
        if (i == 1 || i == 2) {
            obj = C0795d.m8095a(b, f3264m, f3263l, a, i, C0741t.m8325g(this.f3272i) == 1);
        } else if (i == 17 || i == 33 || i == 66 || i == 130) {
            Rect rect2 = new Rect();
            int i4 = this.f3266b;
            if (i4 != Integer.MIN_VALUE) {
                m8117a(i4, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                m8112a(this.f3272i, i, rect2);
            }
            obj = C0795d.m8094a(b, f3264m, f3263l, a, rect2, i);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        C0696d dVar = (C0696d) obj;
        if (dVar != null) {
            i3 = b.m8892c(b.m8897a((C0543j<C0696d>) dVar));
        }
        return m8104e(i3);
    }

    /* renamed from: c */
    private C0696d m8107c() {
        C0696d a = C0696d.m8530a(this.f3272i);
        C0741t.m8349a(this.f3272i, a);
        ArrayList arrayList = new ArrayList();
        mo1293a(arrayList);
        if (a.m8511c() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                a.m8516b(this.f3272i, ((Integer) arrayList.get(i)).intValue());
            }
            return a;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    /* renamed from: c */
    private C0696d m8106c(int i) {
        C0696d b = C0696d.m8520b();
        b.m8484j(true);
        b.m8507c(true);
        b.m8514b("android.view.View");
        b.m8518b(f3262c);
        b.m8505d(f3262c);
        b.m8504d(this.f3272i);
        mo1294a(b);
        if (b.m8471s() == null && b.m8470t() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        b.m8532a(this.f3268e);
        if (!this.f3268e.equals(f3262c)) {
            int d = b.m8506d();
            if ((d & 64) != 0) {
                throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            } else if ((d & 128) == 0) {
                b.m8525a((CharSequence) this.f3272i.getContext().getPackageName());
                b.m8529a(this.f3272i, i);
                if (this.f3265a == i) {
                    b.m8494f(true);
                    b.m8535a(128);
                } else {
                    b.m8494f(false);
                    b.m8535a(64);
                }
                boolean z = this.f3266b == i;
                if (z) {
                    b.m8535a(2);
                } else if (b.m8493g()) {
                    b.m8535a(1);
                }
                b.m8502d(z);
                this.f3272i.getLocationOnScreen(this.f3270g);
                b.m8510c(this.f3267d);
                if (this.f3267d.equals(f3262c)) {
                    b.m8532a(this.f3267d);
                    if (b.f3022a != -1) {
                        C0696d b2 = C0696d.m8520b();
                        for (int i2 = b.f3022a; i2 != -1; i2 = b2.f3022a) {
                            b2.m8500e(this.f3272i);
                            b2.m8518b(f3262c);
                            mo1294a(b2);
                            b2.m8532a(this.f3268e);
                            this.f3267d.offset(this.f3268e.left, this.f3268e.top);
                        }
                        b2.m8469u();
                    }
                    this.f3267d.offset(this.f3270g[0] - this.f3272i.getScrollX(), this.f3270g[1] - this.f3272i.getScrollY());
                }
                if (this.f3272i.getLocalVisibleRect(this.f3269f)) {
                    this.f3269f.offset(this.f3270g[0] - this.f3272i.getScrollX(), this.f3270g[1] - this.f3272i.getScrollY());
                    if (this.f3267d.intersect(this.f3269f)) {
                        b.m8505d(this.f3267d);
                        if (m8116a(this.f3267d)) {
                            b.m8498e(true);
                        }
                    }
                }
                return b;
            } else {
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
        } else {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
    }

    /* renamed from: d */
    private boolean m8105d(int i) {
        if (this.f3265a != i) {
            return false;
        }
        this.f3265a = Integer.MIN_VALUE;
        this.f3272i.invalidate();
        m8119a(i, 65536);
        return true;
    }

    /* renamed from: e */
    private boolean m8104e(int i) {
        int i2;
        if ((!this.f3272i.isFocused() && !this.f3272i.requestFocus()) || (i2 = this.f3266b) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m8103f(i2);
        }
        this.f3266b = i;
        m8119a(i, 8);
        return true;
    }

    /* renamed from: f */
    private boolean m8103f(int i) {
        if (this.f3266b != i) {
            return false;
        }
        this.f3266b = Integer.MIN_VALUE;
        m8119a(i, 8);
        return true;
    }

    /* renamed from: a */
    protected abstract int mo1295a(float f, float f2);

    /* renamed from: a */
    final C0696d m8120a(int i) {
        return i == -1 ? m8107c() : m8106c(i);
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: a */
    public final C0700e mo8113a(View view) {
        if (this.f3273j == null) {
            this.f3273j = new C0792a();
        }
        return this.f3273j;
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: a */
    public final void mo802a(View view, C0696d dVar) {
        super.mo802a(view, dVar);
        mo1291b(dVar);
    }

    /* renamed from: a */
    protected abstract void mo1294a(C0696d dVar);

    /* renamed from: a */
    protected abstract void mo1293a(List<Integer> list);

    /* renamed from: a */
    public final void m8111a(boolean z, int i, Rect rect) {
        int i2 = this.f3266b;
        if (i2 != Integer.MIN_VALUE) {
            m8103f(i2);
        }
        if (z) {
            m8108b(i, rect);
        }
    }

    /* renamed from: a */
    public final boolean m8119a(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f3271h.isEnabled() || (parent = this.f3272i.getParent()) == null) {
            return false;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        if (i != -1) {
            C0696d a = m8120a(i);
            obtain.getText().add(a.m8471s());
            obtain.setContentDescription(a.m8470t());
            obtain.setScrollable(a.m8474p());
            obtain.setPassword(a.m8475o());
            obtain.setEnabled(a.m8477n());
            obtain.setChecked(a.m8497f());
            if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
                obtain.setClassName(a.m8472r());
                View view = this.f3272i;
                if (Build.VERSION.SDK_INT >= 16) {
                    obtain.setSource(view, i);
                }
                obtain.setPackageName(this.f3272i.getContext().getPackageName());
            } else {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
        } else {
            this.f3272i.onInitializeAccessibilityEvent(obtain);
        }
        return parent.requestSendAccessibilityEvent(this.f3272i, obtain);
    }

    /* renamed from: a */
    final boolean m8118a(int i, int i2, Bundle bundle) {
        int i3;
        if (i == -1) {
            return C0741t.m8356a(this.f3272i, i2, bundle);
        }
        if (i2 == 1) {
            return m8104e(i);
        }
        if (i2 == 2) {
            return m8103f(i);
        }
        if (i2 != 64) {
            return i2 != 128 ? mo1292b(i, i2) : m8105d(i);
        }
        if (!this.f3271h.isEnabled() || !this.f3271h.isTouchExplorationEnabled() || (i3 = this.f3265a) == i) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            m8105d(i3);
        }
        this.f3265a = i;
        this.f3272i.invalidate();
        m8119a(i, 32768);
        return true;
    }

    /* renamed from: a */
    public final boolean m8115a(KeyEvent keyEvent) {
        int i = 0;
        boolean z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            z = false;
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i2 = 33;
                                } else if (keyCode == 21) {
                                    i2 = 17;
                                } else if (keyCode != 22) {
                                    i2 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount();
                                z = false;
                                while (i < repeatCount + 1 && m8108b(i2, (Rect) null)) {
                                    i++;
                                    z = true;
                                }
                            }
                            break;
                        case 23:
                            break;
                        default:
                            z = false;
                            break;
                    }
                }
                z = false;
                if (keyEvent.hasNoModifiers()) {
                    z = false;
                    if (keyEvent.getRepeatCount() == 0) {
                        int i3 = this.f3266b;
                        if (i3 != Integer.MIN_VALUE) {
                            mo1292b(i3, 16);
                        }
                        z = true;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = m8108b(2, (Rect) null);
            } else {
                z = false;
                if (keyEvent.hasModifiers(1)) {
                    z = m8108b(1, (Rect) null);
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m8114a(MotionEvent motionEvent) {
        if (!this.f3271h.isEnabled() || !this.f3271h.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int a = mo1295a(motionEvent.getX(), motionEvent.getY());
            m8109b(a);
            return a != Integer.MIN_VALUE;
        } else if (action != 10 || this.f3274k == Integer.MIN_VALUE) {
            return false;
        } else {
            m8109b(Integer.MIN_VALUE);
            return true;
        }
    }

    /* renamed from: b */
    protected void mo1291b(C0696d dVar) {
    }

    /* renamed from: b */
    protected abstract boolean mo1292b(int i, int i2);

    @Override // androidx.core.p037g.C0689a
    /* renamed from: d */
    public final void mo1060d(View view, AccessibilityEvent accessibilityEvent) {
        super.mo1060d(view, accessibilityEvent);
    }
}
