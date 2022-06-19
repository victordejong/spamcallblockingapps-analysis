package androidx.appcompat.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$p.class */
class SearchView$p extends TouchDelegate {

    /* renamed from: a */
    private final View f350a;

    /* renamed from: e */
    private final int f354e;

    /* renamed from: f */
    private boolean f355f;

    /* renamed from: b */
    private final Rect f351b = new Rect();

    /* renamed from: d */
    private final Rect f353d = new Rect();

    /* renamed from: c */
    private final Rect f352c = new Rect();

    public SearchView$p(Rect rect, Rect rect2, View view) {
        super(rect, view);
        this.f354e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        m6719a(rect, rect2);
        this.f350a = view;
    }

    /* renamed from: a */
    public void m6719a(Rect rect, Rect rect2) {
        this.f351b.set(rect);
        this.f353d.set(rect);
        Rect rect3 = this.f353d;
        int i = this.f354e;
        rect3.inset(-i, -i);
        this.f352c.set(rect2);
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z2 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                boolean z3 = this.f355f;
                z2 = z3;
                if (z3) {
                    z2 = z3;
                    if (!this.f353d.contains(x, y)) {
                        z2 = z3;
                        z = false;
                    }
                }
            } else {
                if (action == 3) {
                    z2 = this.f355f;
                    this.f355f = false;
                }
                z = true;
                z2 = false;
            }
            z = true;
        } else {
            if (this.f351b.contains(x, y)) {
                this.f355f = true;
                z = true;
            }
            z = true;
            z2 = false;
        }
        boolean z4 = false;
        if (z2) {
            if (!z || this.f352c.contains(x, y)) {
                Rect rect = this.f352c;
                motionEvent.setLocation(x - rect.left, y - rect.top);
            } else {
                motionEvent.setLocation(this.f350a.getWidth() / 2, this.f350a.getHeight() / 2);
            }
            z4 = this.f350a.dispatchTouchEvent(motionEvent);
        }
        return z4;
    }
}
