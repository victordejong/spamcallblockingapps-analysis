package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/resource/CtaButtonDrawable.class */
public class CtaButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    public final Paint f34517a;

    /* renamed from: b */
    public final Paint f34518b;

    /* renamed from: c */
    public final Paint f34519c;

    /* renamed from: f */
    public final int f34522f;

    /* renamed from: e */
    public final Rect f34521e = new Rect();

    /* renamed from: g */
    public String f34523g = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;

    /* renamed from: d */
    public final RectF f34520d = new RectF();

    public CtaButtonDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(2.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(15.0f, context);
        Paint paint = new Paint();
        this.f34517a = paint;
        paint.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f34517a.setAlpha(51);
        this.f34517a.setStyle(DrawableConstants.CtaButton.BACKGROUND_STYLE);
        this.f34517a.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f34518b = paint2;
        paint2.setColor(-1);
        this.f34518b.setAlpha(51);
        this.f34518b.setStyle(DrawableConstants.CtaButton.OUTLINE_STYLE);
        this.f34518b.setStrokeWidth(dipsToIntPixels);
        this.f34518b.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f34519c = paint3;
        paint3.setColor(-1);
        this.f34519c.setTextAlign(DrawableConstants.CtaButton.TEXT_ALIGN);
        this.f34519c.setTypeface(DrawableConstants.CtaButton.TEXT_TYPEFACE);
        this.f34519c.setTextSize(dipsToFloatPixels);
        this.f34519c.setAntiAlias(true);
        this.f34522f = Dips.dipsToIntPixels(6.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f34520d.set(getBounds());
        RectF rectF = this.f34520d;
        int i = this.f34522f;
        canvas.drawRoundRect(rectF, i, i, this.f34517a);
        RectF rectF2 = this.f34520d;
        int i2 = this.f34522f;
        canvas.drawRoundRect(rectF2, i2, i2, this.f34518b);
        m4137a(canvas, this.f34519c, this.f34521e, this.f34523g);
    }

    @Deprecated
    @VisibleForTesting
    public String getCtaText() {
        return this.f34523g;
    }

    public void setCtaText(String str) {
        this.f34523g = str;
        invalidateSelf();
    }
}
