package com.google.android.exoplayer2.p492ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p170b.p188c.p196c1.AbstractC2763c;
import p131c.p161d.p170b.p188c.p196c1.C2761a;
import p131c.p161d.p170b.p188c.p196c1.C2762b;
import p131c.p161d.p170b.p188c.p199e1.C2800l;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: com.google.android.exoplayer2.ui.SubtitleView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/SubtitleView.class */
public final class SubtitleView extends View implements AbstractC2763c {

    /* renamed from: a */
    public final List<C2800l> f22488a;

    /* renamed from: b */
    public List<C2762b> f22489b;

    /* renamed from: c */
    public int f22490c;

    /* renamed from: d */
    public float f22491d;

    /* renamed from: e */
    public boolean f22492e;

    /* renamed from: f */
    public boolean f22493f;

    /* renamed from: g */
    public C2761a f22494g;

    /* renamed from: h */
    public float f22495h;

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22488a = new ArrayList();
        this.f22490c = 0;
        this.f22491d = 0.0533f;
        this.f22492e = true;
        this.f22493f = true;
        this.f22494g = C2761a.f10071g;
        this.f22495h = 0.08f;
    }

    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    private C2761a getUserCaptionStyleV19() {
        return C2761a.m29083a(((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle());
    }

    /* renamed from: a */
    public final float m18314a(int i, float f, int i2, int i3) {
        float f2;
        if (i == 0) {
            f2 = i3;
        } else if (i == 1) {
            f2 = i2;
        } else if (i != 2) {
            return -3.4028235E38f;
        } else {
            return f;
        }
        return f * f2;
    }

    /* renamed from: a */
    public final float m18313a(C2762b bVar, int i, int i2) {
        int i3 = bVar.f10090m;
        if (i3 == Integer.MIN_VALUE) {
            return 0.0f;
        }
        float f = bVar.f10091n;
        if (f == -3.4028235E38f) {
            return 0.0f;
        }
        return Math.max(m18314a(i3, f, i, i2), 0.0f);
    }

    /* renamed from: a */
    public void m18316a(float f, boolean z) {
        m18315a(z ? 1 : 0, f);
    }

    /* renamed from: a */
    public final void m18315a(int i, float f) {
        if (this.f22490c != i || this.f22491d != f) {
            this.f22490c = i;
            this.f22491d = f;
            invalidate();
        }
    }

    /* renamed from: a */
    public final boolean m18317a() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).isEnabled();
    }

    /* renamed from: b */
    public void m18312b() {
        setStyle((C2885h0.f10477a < 19 || !m18317a() || isInEditMode()) ? C2761a.f10071g : getUserCaptionStyleV19());
    }

    /* renamed from: c */
    public void m18311c() {
        setFractionalTextSize(((C2885h0.f10477a < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.0533f);
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<C2762b> list = this.f22489b;
        if (!(list == null || list.isEmpty())) {
            int height = getHeight();
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int paddingBottom = height - getPaddingBottom();
            if (paddingBottom > paddingTop && width > paddingLeft) {
                int i = paddingBottom - paddingTop;
                float a = m18314a(this.f22490c, this.f22491d, height, i);
                if (a > 0.0f) {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        C2762b bVar = list.get(i2);
                        this.f22488a.get(i2).m28997a(bVar, this.f22492e, this.f22493f, this.f22494g, a, m18313a(bVar, height, i), this.f22495h, canvas, paddingLeft, paddingTop, width, paddingBottom);
                    }
                }
            }
        }
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        if (this.f22493f != z) {
            this.f22493f = z;
            invalidate();
        }
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.f22492e != z || this.f22493f != z) {
            this.f22492e = z;
            this.f22493f = z;
            invalidate();
        }
    }

    public void setBottomPaddingFraction(float f) {
        if (this.f22495h != f) {
            this.f22495h = f;
            invalidate();
        }
    }

    public void setCues(List<C2762b> list) {
        if (this.f22489b != list) {
            this.f22489b = list;
            int size = list == null ? 0 : list.size();
            while (this.f22488a.size() < size) {
                this.f22488a.add(new C2800l(getContext()));
            }
            invalidate();
        }
    }

    public void setFractionalTextSize(float f) {
        m18316a(f, false);
    }

    public void setStyle(C2761a aVar) {
        if (this.f22494g != aVar) {
            this.f22494g = aVar;
            invalidate();
        }
    }
}
