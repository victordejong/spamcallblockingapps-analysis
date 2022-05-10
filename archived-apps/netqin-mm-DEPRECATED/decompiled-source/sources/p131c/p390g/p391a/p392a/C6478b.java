package p131c.p390g.p391a.p392a;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: c.g.a.a.b */
/* loaded from: classes2-dex2jar.jar:c/g/a/a/b.class */
public class C6478b {

    /* renamed from: b */
    public Object f20195b;

    /* renamed from: c */
    public int f20196c;

    /* renamed from: d */
    public int f20197d;

    /* renamed from: f */
    public ValueAnimator f20199f;

    /* renamed from: a */
    public final ArrayList<C6475a> f20194a = new ArrayList<>();

    /* renamed from: e */
    public boolean f20198e = false;

    /* renamed from: c.g.a.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/g/a/a/b$a.class */
    public class C6479a implements ValueAnimator.AnimatorUpdateListener {
        public C6479a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C6478b.this.m20732c();
        }
    }

    public C6478b(Object obj) {
        this.f20195b = obj;
        m20738a();
    }

    /* renamed from: a */
    public final void m20738a() {
        Object obj = this.f20195b;
        if ((obj instanceof View) || (obj instanceof Drawable)) {
            Object obj2 = this.f20195b;
            if (obj2 instanceof ViewGroup) {
                ((ViewGroup) obj2).setWillNotDraw(false);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The target must be an instance of View/ViewGroup or Drawable");
    }

    /* renamed from: a */
    public void m20737a(int i, int i2) {
        this.f20196c = i;
        this.f20197d = i2;
        Iterator<C6475a> it = this.f20194a.iterator();
        while (it.hasNext()) {
            it.next().m20769a(this.f20196c, this.f20197d);
        }
    }

    /* renamed from: a */
    public void m20736a(Canvas canvas) {
        if (this.f20194a.isEmpty()) {
            m20731d();
            return;
        }
        Iterator it = ((ArrayList) this.f20194a.clone()).iterator();
        while (it.hasNext()) {
            C6475a aVar = (C6475a) it.next();
            if (aVar.m20753h() || aVar.m20752i()) {
                this.f20194a.remove(aVar);
            } else {
                aVar.m20766a(canvas);
            }
        }
    }

    /* renamed from: a */
    public void m20735a(C6475a aVar) {
        ValueAnimator valueAnimator = this.f20199f;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            m20733b();
        }
        if (!this.f20194a.contains(aVar)) {
            aVar.m20769a(this.f20196c, this.f20197d);
            this.f20194a.add(aVar);
        }
    }

    /* renamed from: b */
    public final void m20733b() {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 1);
        this.f20199f = ofInt;
        ofInt.setRepeatCount(-1);
        this.f20199f.setInterpolator(new LinearInterpolator());
        this.f20199f.addUpdateListener(new C6479a());
        this.f20199f.start();
        if (this.f20198e) {
            Object obj = this.f20195b;
            if (obj instanceof View) {
                ((View) obj).setLayerType(2, null);
            }
        }
    }

    /* renamed from: c */
    public final void m20732c() {
        Object obj = this.f20195b;
        if (obj instanceof Drawable) {
            ((Drawable) obj).invalidateSelf();
        } else {
            ((View) obj).invalidate();
        }
    }

    /* renamed from: d */
    public void m20731d() {
        ValueAnimator valueAnimator = this.f20199f;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f20199f.removeAllListeners();
            this.f20199f.removeAllUpdateListeners();
            this.f20199f.cancel();
            this.f20199f = null;
        }
        if (this.f20198e) {
            Object obj = this.f20195b;
            if (obj instanceof View) {
                ((View) obj).setLayerType(0, null);
            }
        }
        Iterator<C6475a> it = this.f20194a.iterator();
        while (it.hasNext()) {
            it.next().m20756e();
        }
    }
}
