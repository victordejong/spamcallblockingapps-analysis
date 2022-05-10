package p012b.p076s.p118e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.media.MediaFormat;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mopub.mobileads.resource.DrawableConstants;
import p012b.p076s.p118e.AbstractC1838f;
import p012b.p076s.p118e.AbstractC1866t;
import p012b.p076s.p118e.C1805b;
import p012b.p076s.p118e.C1859s;
/* renamed from: b.s.e.c */
/* loaded from: classes-dex2jar.jar:b/s/e/c.class */
public class C1813c extends C1859s.AbstractC1865f {

    /* renamed from: a */
    public final Context f7279a;

    /* renamed from: b */
    public C1814a f7280b;

    /* renamed from: b.s.e.c$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/c$a.class */
    public class C1814a extends AbstractC1838f implements C1805b.AbstractC1809d {

        /* renamed from: g */
        public final Rect f7281g;

        /* renamed from: b.s.e.c$a$a */
        /* loaded from: classes-dex2jar.jar:b/s/e/c$a$a.class */
        public class C1815a extends LinearLayout implements AbstractC1838f.AbstractC1840b {

            /* renamed from: a */
            public final C1816b[] f7282a = new C1816b[15];

            public C1815a(Context context) {
                super(context);
                setGravity(8388611);
                setOrientation(1);
                for (int i = 0; i < 15; i++) {
                    this.f7282a[i] = new C1816b(getContext());
                    addView(this.f7282a[i], -2, -2);
                }
            }

            @Override // p012b.p076s.p118e.AbstractC1838f.AbstractC1840b
            /* renamed from: a */
            public void mo31949a(float f) {
            }

            @Override // p012b.p076s.p118e.AbstractC1838f.AbstractC1840b
            /* renamed from: a */
            public void mo31948a(CaptioningManager.CaptionStyle captionStyle) {
                for (int i = 0; i < 15; i++) {
                    this.f7282a[i].m32012a(captionStyle);
                }
            }

            /* renamed from: a */
            public void m32015a(SpannableStringBuilder[] spannableStringBuilderArr) {
                for (int i = 0; i < 15; i++) {
                    if (spannableStringBuilderArr[i] != null) {
                        this.f7282a[i].setText(spannableStringBuilderArr[i], TextView.BufferType.SPANNABLE);
                        this.f7282a[i].setVisibility(0);
                    } else {
                        this.f7282a[i].setVisibility(4);
                    }
                }
            }

            @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int i5;
                int i6;
                int i7 = i3 - i;
                int i8 = i4 - i2;
                int i9 = i7 * 3;
                int i10 = i8 * 4;
                if (i9 >= i10) {
                    i5 = i10 / 3;
                    i6 = i8;
                } else {
                    i6 = i9 / 4;
                    i5 = i7;
                }
                int i11 = (int) (i5 * 0.9f);
                int i12 = (int) (i6 * 0.9f);
                int i13 = (i7 - i11) / 2;
                int i14 = (i8 - i12) / 2;
                int i15 = 0;
                while (i15 < 15) {
                    C1816b bVar = this.f7282a[i15];
                    i15++;
                    bVar.layout(i13, ((i12 * i15) / 15) + i14, i13 + i11, ((i12 * i15) / 15) + i14);
                }
            }

            @Override // android.widget.LinearLayout, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                int measuredWidth = getMeasuredWidth();
                int measuredHeight = getMeasuredHeight();
                int i3 = measuredWidth * 3;
                int i4 = measuredHeight * 4;
                if (i3 >= i4) {
                    measuredWidth = i4 / 3;
                } else {
                    measuredHeight = i3 / 4;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(((int) (measuredHeight * 0.9f)) / 15, 1073741824);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((int) (measuredWidth * 0.9f), 1073741824);
                for (int i5 = 0; i5 < 15; i5++) {
                    this.f7282a[i5].measure(makeMeasureSpec2, makeMeasureSpec);
                }
            }
        }

        /* renamed from: b.s.e.c$a$b */
        /* loaded from: classes-dex2jar.jar:b/s/e/c$a$b.class */
        public class C1816b extends AppCompatTextView {

            /* renamed from: e */
            public float f7284e;

            /* renamed from: f */
            public float f7285f;

            /* renamed from: g */
            public float f7286g;

            /* renamed from: h */
            public int f7287h = -1;

            /* renamed from: i */
            public int f7288i = DrawableConstants.CtaButton.BACKGROUND_COLOR;

            /* renamed from: j */
            public int f7289j = 0;

            /* renamed from: k */
            public int f7290k = 0;

            public C1816b(Context context) {
                super(context);
                setGravity(17);
                setBackgroundColor(0);
                setTextColor(-1);
                setTypeface(Typeface.MONOSPACE);
                setVisibility(4);
                Resources resources = getContext().getResources();
                this.f7284e = resources.getDimensionPixelSize(C1850l.subtitle_outline_width);
                this.f7285f = resources.getDimensionPixelSize(C1850l.subtitle_shadow_radius);
                this.f7286g = resources.getDimensionPixelSize(C1850l.subtitle_shadow_offset);
            }

            /* renamed from: a */
            public final void m32014a(int i) {
                CharSequence text = getText();
                if (text instanceof Spannable) {
                    Spannable spannable = (Spannable) text;
                    for (C1805b.C1810e eVar : (C1805b.C1810e[]) spannable.getSpans(0, spannable.length(), C1805b.C1810e.class)) {
                        eVar.m32025a(i);
                    }
                }
            }

            /* renamed from: a */
            public final void m32013a(Canvas canvas) {
                TextPaint paint = getPaint();
                Paint.Style style = paint.getStyle();
                Paint.Join strokeJoin = paint.getStrokeJoin();
                float strokeWidth = paint.getStrokeWidth();
                setTextColor(this.f7290k);
                paint.setStyle(Paint.Style.FILL_AND_STROKE);
                paint.setStrokeJoin(Paint.Join.ROUND);
                paint.setStrokeWidth(this.f7284e);
                super.onDraw(canvas);
                setTextColor(this.f7287h);
                paint.setStyle(style);
                paint.setStrokeJoin(strokeJoin);
                paint.setStrokeWidth(strokeWidth);
                m32014a(0);
                super.onDraw(canvas);
                m32014a(this.f7288i);
            }

            /* renamed from: a */
            public void m32012a(CaptioningManager.CaptionStyle captionStyle) {
                int i = captionStyle.foregroundColor;
                this.f7287h = i;
                this.f7288i = captionStyle.backgroundColor;
                this.f7289j = captionStyle.edgeType;
                this.f7290k = captionStyle.edgeColor;
                setTextColor(i);
                if (this.f7289j == 2) {
                    float f = this.f7285f;
                    float f2 = this.f7286g;
                    setShadowLayer(f, f2, f2, this.f7290k);
                } else {
                    setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                }
                invalidate();
            }

            /* renamed from: b */
            public final void m32011b(Canvas canvas) {
                TextPaint paint = getPaint();
                Paint.Style style = paint.getStyle();
                paint.setStyle(Paint.Style.FILL);
                boolean z = this.f7289j == 3;
                int i = -1;
                int i2 = z ? -1 : this.f7290k;
                if (z) {
                    i = this.f7290k;
                }
                float f = this.f7285f;
                float f2 = f / 2.0f;
                float f3 = -f2;
                setShadowLayer(f, f3, f3, i2);
                super.onDraw(canvas);
                m32014a(0);
                setShadowLayer(this.f7285f, f2, f2, i);
                super.onDraw(canvas);
                paint.setStyle(style);
                m32014a(this.f7288i);
            }

            @Override // android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                int i = this.f7289j;
                if (i == -1 || i == 0 || i == 2) {
                    super.onDraw(canvas);
                } else if (i == 1) {
                    m32013a(canvas);
                } else {
                    m32011b(canvas);
                }
            }

            @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
            public void onMeasure(int i, int i2) {
                float size = View.MeasureSpec.getSize(i2) * 0.75f;
                setTextSize(0, size);
                this.f7284e = (0.1f * size) + 1.0f;
                float f = (size * 0.05f) + 1.0f;
                this.f7285f = f;
                this.f7286g = f;
                setScaleX(1.0f);
                getPaint().getTextBounds("1234567890123456789012345678901234", 0, 34, C1814a.this.f7281g);
                float width = C1814a.this.f7281g.width();
                float size2 = View.MeasureSpec.getSize(i);
                if (width != 0.0f) {
                    setScaleX(size2 / width);
                } else {
                    Log.w("Cea608CaptionRenderer", "onMeasure(): Paint#getTextBounds() returned zero width. Ignored.");
                }
                super.onMeasure(i, i2);
            }
        }

        public C1814a(C1813c cVar, Context context) {
            this(cVar, context, null);
        }

        public C1814a(C1813c cVar, Context context, AttributeSet attributeSet) {
            this(cVar, context, attributeSet, 0);
        }

        public C1814a(C1813c cVar, Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f7281g = new Rect();
        }

        @Override // p012b.p076s.p118e.C1805b.AbstractC1809d
        /* renamed from: a */
        public CaptioningManager.CaptionStyle mo32017a() {
            return this.f7353b;
        }

        @Override // p012b.p076s.p118e.AbstractC1838f
        /* renamed from: a */
        public AbstractC1838f.AbstractC1840b mo31951a(Context context) {
            return new C1815a(context);
        }

        @Override // p012b.p076s.p118e.C1805b.AbstractC1809d
        /* renamed from: a */
        public void mo32016a(SpannableStringBuilder[] spannableStringBuilderArr) {
            ((C1815a) this.f7355d).m32015a(spannableStringBuilderArr);
            AbstractC1866t.AbstractC1869c.AbstractC1870a aVar = this.f7354c;
            if (aVar != null) {
                aVar.mo31859a(this);
            }
        }
    }

    /* renamed from: b.s.e.c$b */
    /* loaded from: classes-dex2jar.jar:b/s/e/c$b.class */
    public static class C1817b extends AbstractC1866t {

        /* renamed from: i */
        public final C1805b f7292i;

        /* renamed from: j */
        public final C1814a f7293j;

        public C1817b(C1814a aVar, MediaFormat mediaFormat) {
            super(mediaFormat);
            this.f7293j = aVar;
            this.f7292i = new C1805b(this.f7293j);
        }

        @Override // p012b.p076s.p118e.AbstractC1866t
        /* renamed from: a */
        public void mo31869a(byte[] bArr, boolean z, long j) {
            this.f7292i.m32069a(bArr);
        }

        @Override // p012b.p076s.p118e.AbstractC1866t
        /* renamed from: c */
        public AbstractC1866t.AbstractC1869c mo31867c() {
            return this.f7293j;
        }
    }

    public C1813c(Context context) {
        this.f7279a = context;
    }

    @Override // p012b.p076s.p118e.C1859s.AbstractC1865f
    /* renamed from: a */
    public AbstractC1866t mo31876a(MediaFormat mediaFormat) {
        if ("text/cea-608".equals(mediaFormat.getString("mime"))) {
            if (this.f7280b == null) {
                this.f7280b = new C1814a(this, this.f7279a);
            }
            return new C1817b(this.f7280b, mediaFormat);
        }
        throw new RuntimeException("No matching format: " + mediaFormat.toString());
    }

    @Override // p012b.p076s.p118e.C1859s.AbstractC1865f
    /* renamed from: b */
    public boolean mo31875b(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("mime")) {
            return "text/cea-608".equals(mediaFormat.getString("mime"));
        }
        return false;
    }
}
