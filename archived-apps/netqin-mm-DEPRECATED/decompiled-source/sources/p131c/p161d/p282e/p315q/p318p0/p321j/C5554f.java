package p131c.p161d.p282e.p315q.p318p0.p321j;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import p131c.p161d.p282e.p315q.p318p0.p321j.View$OnTouchListenerC5571o;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c;
/* renamed from: c.d.e.q.p0.j.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/f.class */
public class C5554f {

    /* renamed from: a */
    public AbstractC5579c f18525a;

    /* renamed from: c.d.e.q.p0.j.f$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/f$a.class */
    public class C5555a implements View$OnTouchListenerC5571o.AbstractC5576e {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5579c f18526a;

        public C5555a(C5554f fVar, AbstractC5579c cVar) {
            this.f18526a = cVar;
        }

        @Override // p131c.p161d.p282e.p315q.p318p0.p321j.View$OnTouchListenerC5571o.AbstractC5576e
        /* renamed from: a */
        public void mo23490a(View view, Object obj) {
            if (this.f18526a.mo23471d() != null) {
                this.f18526a.mo23471d().onClick(view);
            }
        }

        @Override // p131c.p161d.p282e.p315q.p318p0.p321j.View$OnTouchListenerC5571o.AbstractC5576e
        /* renamed from: a */
        public boolean mo23489a(Object obj) {
            return true;
        }
    }

    /* renamed from: c.d.e.q.p0.j.f$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/f$b.class */
    public class C5556b extends View$OnTouchListenerC5571o {

        /* renamed from: o */
        public final /* synthetic */ WindowManager.LayoutParams f18527o;

        /* renamed from: p */
        public final /* synthetic */ WindowManager f18528p;

        /* renamed from: q */
        public final /* synthetic */ AbstractC5579c f18529q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5556b(C5554f fVar, View view, Object obj, View$OnTouchListenerC5571o.AbstractC5576e eVar, WindowManager.LayoutParams layoutParams, WindowManager windowManager, AbstractC5579c cVar) {
            super(view, obj, eVar);
            this.f18527o = layoutParams;
            this.f18528p = windowManager;
            this.f18529q = cVar;
        }

        @Override // p131c.p161d.p282e.p315q.p318p0.p321j.View$OnTouchListenerC5571o
        /* renamed from: a */
        public float mo23501a() {
            return this.f18527o.x;
        }

        @Override // p131c.p161d.p282e.p315q.p318p0.p321j.View$OnTouchListenerC5571o
        /* renamed from: b */
        public void mo23495b(float f) {
            this.f18527o.x = (int) f;
            this.f18528p.updateViewLayout(this.f18529q.mo23457f(), this.f18527o);
        }
    }

    /* renamed from: a */
    public final WindowManager.LayoutParams m23566a(C5560i iVar, Activity activity) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(iVar.m23531m().intValue(), iVar.m23532l().intValue(), 1003, iVar.m23533k().intValue(), -3);
        Rect c = m23562c(activity);
        if ((iVar.m23534j().intValue() & 48) == 48) {
            layoutParams.y = c.top;
        }
        layoutParams.dimAmount = 0.3f;
        layoutParams.gravity = iVar.m23534j().intValue();
        layoutParams.windowAnimations = 0;
        return layoutParams;
    }

    /* renamed from: a */
    public final View$OnTouchListenerC5571o m23565a(C5560i iVar, AbstractC5579c cVar, WindowManager windowManager, WindowManager.LayoutParams layoutParams) {
        C5555a aVar = new C5555a(this, cVar);
        return iVar.m23531m().intValue() == -1 ? new View$OnTouchListenerC5571o(cVar.mo23459c(), null, aVar) : new C5556b(this, cVar.mo23459c(), null, aVar, layoutParams, windowManager, cVar);
    }

    /* renamed from: a */
    public void m23567a(Activity activity) {
        if (m23568a()) {
            m23560e(activity).removeViewImmediate(this.f18525a.mo23457f());
            this.f18525a = null;
        }
    }

    /* renamed from: a */
    public void m23564a(AbstractC5579c cVar, Activity activity) {
        if (m23568a()) {
            C5562j.m23511c("Fiam already active. Cannot show new Fiam.");
            return;
        }
        C5560i b = cVar.mo23460b();
        WindowManager.LayoutParams a = m23566a(b, activity);
        WindowManager e = m23560e(activity);
        e.addView(cVar.mo23457f(), a);
        Rect c = m23562c(activity);
        C5562j.m23513a("Inset (top, bottom)", c.top, c.bottom);
        C5562j.m23513a("Inset (left, right)", c.left, c.right);
        if (cVar.mo23482a()) {
            cVar.mo23459c().setOnTouchListener(m23565a(b, cVar, e, a));
        }
        this.f18525a = cVar;
    }

    /* renamed from: a */
    public boolean m23568a() {
        AbstractC5579c cVar = this.f18525a;
        if (cVar == null) {
            return false;
        }
        return cVar.mo23457f().isShown();
    }

    /* renamed from: b */
    public final Point m23563b(Activity activity) {
        Point point = new Point();
        Display defaultDisplay = m23560e(activity).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        return point;
    }

    /* renamed from: c */
    public final Rect m23562c(Activity activity) {
        Rect rect = new Rect();
        Rect d = m23561d(activity);
        Point b = m23563b(activity);
        rect.top = d.top;
        rect.left = d.left;
        rect.right = b.x - d.right;
        rect.bottom = b.y - d.bottom;
        return rect;
    }

    /* renamed from: d */
    public final Rect m23561d(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect;
    }

    /* renamed from: e */
    public final WindowManager m23560e(Activity activity) {
        return (WindowManager) activity.getSystemService("window");
    }
}
