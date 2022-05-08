package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.animation.TimeAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import gogolook.callgogolook2.R$styleable;
import p459j.p460a.p474c0.p491g.p496e0.C12007a;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.SoundLevels */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/SoundLevels.class */
public class SoundLevels extends View {

    /* renamed from: a */
    public boolean f11902a;

    /* renamed from: b */
    public int f11903b;

    /* renamed from: c */
    public int f11904c;

    /* renamed from: d */
    public final Paint f11905d;

    /* renamed from: e */
    public final float f11906e;

    /* renamed from: f */
    public final float f11907f;

    /* renamed from: g */
    public final float f11908g;

    /* renamed from: h */
    public final TimeAnimator f11909h;

    /* renamed from: i */
    public float f11910i;

    /* renamed from: j */
    public boolean f11911j;

    /* renamed from: k */
    public C12007a f11912k;

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.SoundLevels$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/SoundLevels$a.class */
    public class C4838a implements TimeAnimator.TimeListener {
        public C4838a() {
        }

        @Override // android.animation.TimeAnimator.TimeListener
        public void onTimeUpdate(TimeAnimator timeAnimator, long j, long j2) {
            SoundLevels.this.invalidate();
        }
    }

    public SoundLevels(Context context) {
        this(context, null);
    }

    public SoundLevels(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SoundLevels(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11912k = new C12007a();
        this.f11912k.m7555a(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SoundLevels, i, 0);
        this.f11908g = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        this.f11907f = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f11906e = this.f11907f / this.f11908g;
        this.f11905d = new Paint();
        this.f11905d.setColor(obtainStyledAttributes.getColor(2, -16777216));
        this.f11905d.setFlags(1);
        obtainStyledAttributes.recycle();
        this.f11909h = new TimeAnimator();
        this.f11909h.setRepeatCount(-1);
        this.f11909h.setTimeListener(new C4838a());
    }

    /* renamed from: a */
    public final void m26952a() {
        if (!this.f11909h.isStarted()) {
            this.f11909h.start();
        }
    }

    /* renamed from: a */
    public void m26951a(C12007a aVar) {
        this.f11912k = aVar;
    }

    /* renamed from: b */
    public final void m26950b() {
        if (this.f11909h.isStarted()) {
            this.f11909h.end();
        }
    }

    /* renamed from: c */
    public final void m26949c() {
        if (this.f11911j) {
            m26952a();
        } else {
            m26950b();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m26950b();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f11911j) {
            if (!this.f11902a) {
                this.f11903b = getWidth() / 2;
                this.f11904c = getWidth() / 2;
                this.f11902a = true;
            }
            float a = this.f11912k.m7556a();
            float f = this.f11910i;
            if (a > f) {
                this.f11910i = f + ((a - f) / 4.0f);
            } else {
                this.f11910i = f * 0.95f;
            }
            float f2 = this.f11906e;
            float f3 = ((1.0f - f2) * this.f11910i) / 100.0f;
            this.f11905d.setStyle(Paint.Style.FILL);
            canvas.drawCircle(this.f11903b, this.f11904c, (f2 + f3) * this.f11908g, this.f11905d);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(SoundLevels.class.getCanonicalName());
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (z != this.f11911j) {
            super.setEnabled(z);
            this.f11911j = z;
            setKeepScreenOn(z);
            m26949c();
        }
    }
}
