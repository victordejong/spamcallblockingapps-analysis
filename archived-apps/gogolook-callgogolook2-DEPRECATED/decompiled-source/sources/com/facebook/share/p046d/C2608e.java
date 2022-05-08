package com.facebook.share.p046d;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.common.R$color;
import com.facebook.common.R$dimen;
@Deprecated
/* renamed from: com.facebook.share.d.e */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/e.class */
public class C2608e extends FrameLayout {

    /* renamed from: a */
    public TextView f3513a;

    /* renamed from: b */
    public EnumC2610b f3514b = EnumC2610b.LEFT;

    /* renamed from: c */
    public float f3515c;

    /* renamed from: d */
    public float f3516d;

    /* renamed from: e */
    public float f3517e;

    /* renamed from: f */
    public Paint f3518f;

    /* renamed from: g */
    public int f3519g;

    /* renamed from: h */
    public int f3520h;

    /* renamed from: com.facebook.share.d.e$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/e$a.class */
    public static /* synthetic */ class C2609a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3521a = new int[EnumC2610b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f3521a[EnumC2610b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3521a[EnumC2610b.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3521a[EnumC2610b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3521a[EnumC2610b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.facebook.share.d.e$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/e$b.class */
    public enum EnumC2610b {
        LEFT,
        TOP,
        RIGHT,
        BOTTOM
    }

    @Deprecated
    public C2608e(Context context) {
        super(context);
        m34185a(context);
    }

    /* renamed from: a */
    public final void m34186a(int i, int i2, int i3, int i4) {
        TextView textView = this.f3513a;
        int i5 = this.f3519g;
        textView.setPadding(i + i5, i2 + i5, i3 + i5, i5 + i4);
    }

    /* renamed from: a */
    public final void m34185a(Context context) {
        setWillNotDraw(false);
        this.f3515c = getResources().getDimension(R$dimen.com_facebook_likeboxcountview_caret_height);
        this.f3516d = getResources().getDimension(R$dimen.com_facebook_likeboxcountview_caret_width);
        this.f3517e = getResources().getDimension(R$dimen.com_facebook_likeboxcountview_border_radius);
        this.f3518f = new Paint();
        this.f3518f.setColor(getResources().getColor(R$color.com_facebook_likeboxcountview_border_color));
        this.f3518f.setStrokeWidth(getResources().getDimension(R$dimen.com_facebook_likeboxcountview_border_width));
        this.f3518f.setStyle(Paint.Style.STROKE);
        m34181b(context);
        addView(this.f3513a);
        m34183a(this.f3514b);
    }

    /* renamed from: a */
    public final void m34184a(Canvas canvas, float f, float f2, float f3, float f4) {
        Path path = new Path();
        float f5 = this.f3517e * 2.0f;
        float f6 = f + f5;
        float f7 = f2 + f5;
        path.addArc(new RectF(f, f2, f6, f7), -180.0f, 90.0f);
        if (this.f3514b == EnumC2610b.TOP) {
            float f8 = f3 - f;
            path.lineTo(((f8 - this.f3516d) / 2.0f) + f, f2);
            path.lineTo((f8 / 2.0f) + f, f2 - this.f3515c);
            path.lineTo(((f8 + this.f3516d) / 2.0f) + f, f2);
        }
        path.lineTo(f3 - this.f3517e, f2);
        float f9 = f3 - f5;
        path.addArc(new RectF(f9, f2, f3, f7), -90.0f, 90.0f);
        if (this.f3514b == EnumC2610b.RIGHT) {
            float f10 = f4 - f2;
            path.lineTo(f3, ((f10 - this.f3516d) / 2.0f) + f2);
            path.lineTo(this.f3515c + f3, (f10 / 2.0f) + f2);
            path.lineTo(f3, ((f10 + this.f3516d) / 2.0f) + f2);
        }
        path.lineTo(f3, f4 - this.f3517e);
        float f11 = f4 - f5;
        path.addArc(new RectF(f9, f11, f3, f4), 0.0f, 90.0f);
        if (this.f3514b == EnumC2610b.BOTTOM) {
            float f12 = f3 - f;
            path.lineTo(((this.f3516d + f12) / 2.0f) + f, f4);
            path.lineTo((f12 / 2.0f) + f, this.f3515c + f4);
            path.lineTo(((f12 - this.f3516d) / 2.0f) + f, f4);
        }
        path.lineTo(this.f3517e + f, f4);
        path.addArc(new RectF(f, f11, f6, f4), 90.0f, 90.0f);
        if (this.f3514b == EnumC2610b.LEFT) {
            float f13 = f4 - f2;
            path.lineTo(f, ((this.f3516d + f13) / 2.0f) + f2);
            path.lineTo(f - this.f3515c, (f13 / 2.0f) + f2);
            path.lineTo(f, ((f13 - this.f3516d) / 2.0f) + f2);
        }
        path.lineTo(f, f2 + this.f3517e);
        canvas.drawPath(path, this.f3518f);
    }

    @Deprecated
    /* renamed from: a */
    public void m34183a(EnumC2610b bVar) {
        this.f3514b = bVar;
        int i = C2609a.f3521a[bVar.ordinal()];
        if (i == 1) {
            m34186a(this.f3520h, 0, 0, 0);
        } else if (i == 2) {
            m34186a(0, this.f3520h, 0, 0);
        } else if (i == 3) {
            m34186a(0, 0, this.f3520h, 0);
        } else if (i == 4) {
            m34186a(0, 0, 0, this.f3520h);
        }
    }

    @Deprecated
    /* renamed from: a */
    public void m34182a(String str) {
        this.f3513a.setText(str);
    }

    /* renamed from: b */
    public final void m34181b(Context context) {
        this.f3513a = new TextView(context);
        this.f3513a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f3513a.setGravity(17);
        this.f3513a.setTextSize(0, getResources().getDimension(R$dimen.com_facebook_likeboxcountview_text_size));
        this.f3513a.setTextColor(getResources().getColor(R$color.com_facebook_likeboxcountview_text_color));
        this.f3519g = getResources().getDimensionPixelSize(R$dimen.com_facebook_likeboxcountview_text_padding);
        this.f3520h = getResources().getDimensionPixelSize(R$dimen.com_facebook_likeboxcountview_caret_height);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int i = C2609a.f3521a[this.f3514b.ordinal()];
        if (i == 1) {
            paddingLeft = (int) (paddingLeft + this.f3515c);
        } else if (i == 2) {
            paddingTop = (int) (paddingTop + this.f3515c);
        } else if (i == 3) {
            width = (int) (width - this.f3515c);
        } else if (i == 4) {
            height = (int) (height - this.f3515c);
        }
        m34184a(canvas, paddingLeft, paddingTop, width, height);
    }
}
