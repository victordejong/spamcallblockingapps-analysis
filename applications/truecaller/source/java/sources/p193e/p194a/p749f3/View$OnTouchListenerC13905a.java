package p193e.p194a.p749f3;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import p1727n3.p1807k.p1821i.C26574e;
import p193e.p194a.p749f3.AbstractC13931x;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.f3.a */
/* loaded from: classes6-dex2jar.jar:e/a/f3/a.class */
public final class View$OnTouchListenerC13905a extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener {

    /* renamed from: a */
    public l<? super AbstractC13931x, s> f40294a;

    /* renamed from: b */
    public final C26574e f40295b;

    /* renamed from: c */
    public int f40296c = -1;

    /* renamed from: d */
    public float f40297d;

    /* renamed from: e */
    public float f40298e;

    public View$OnTouchListenerC13905a(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f40295b = new C26574e(context, this);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (motionEvent == null) {
            return false;
        }
        if (this.f40296c != motionEvent.getPointerId(motionEvent.getActionIndex())) {
            return false;
        }
        l<? super AbstractC13931x, s> lVar = this.f40294a;
        if (lVar == null) {
            return true;
        }
        s sVar = (s) lVar.d(new AbstractC13931x.C13934c(f, f2));
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        l<? super AbstractC13931x, s> lVar = this.f40294a;
        if (lVar != null) {
            s sVar = (s) lVar.d(AbstractC13931x.C13935d.f40344a);
            return true;
        }
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        AbstractC13931x.C13936e c13936e = AbstractC13931x.C13936e.f40345a;
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(motionEvent, "event");
        String str = "New motion event: " + motionEvent;
        boolean onTouchEvent = ((C26574e.C26576b) this.f40295b.f74449a).f74450a.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            int actionIndex = motionEvent.getActionIndex();
            this.f40296c = motionEvent.getPointerId(actionIndex);
            this.f40297d = motionEvent.getX(actionIndex);
            this.f40298e = motionEvent.getY(actionIndex);
            l<? super AbstractC13931x, s> lVar = this.f40294a;
            if (lVar == null) {
                return false;
            }
            s sVar = (s) lVar.d(AbstractC13931x.C13932a.f40339a);
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                int i = this.f40296c;
                if (i != pointerId) {
                    return false;
                }
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x = motionEvent.getX(findPointerIndex);
                float y = motionEvent.getY(findPointerIndex);
                float f = this.f40297d;
                float f2 = this.f40298e;
                this.f40297d = x;
                this.f40298e = y;
                l<? super AbstractC13931x, s> lVar2 = this.f40294a;
                if (lVar2 == null) {
                    return false;
                }
                s sVar2 = (s) lVar2.d(new AbstractC13931x.C13933b(x - f, y - f2));
                return false;
            } else if (actionMasked != 3) {
                if (actionMasked != 6 || onTouchEvent) {
                    return false;
                }
                if (this.f40296c != motionEvent.getPointerId(motionEvent.getActionIndex())) {
                    return false;
                }
                this.f40296c = -1;
                l<? super AbstractC13931x, s> lVar3 = this.f40294a;
                if (lVar3 == null) {
                    return false;
                }
                s sVar3 = (s) lVar3.d(c13936e);
                return false;
            }
        }
        if (onTouchEvent) {
            return false;
        }
        this.f40296c = -1;
        l<? super AbstractC13931x, s> lVar4 = this.f40294a;
        if (lVar4 == null) {
            return false;
        }
        s sVar4 = (s) lVar4.d(c13936e);
        return false;
    }
}
