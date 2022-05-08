package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/resource/CtaButtonDrawable.class */
public class CtaButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: f */
    public final int f8859f;
    @NonNull

    /* renamed from: a */
    public final Paint f8854a = new Paint();
    @NonNull

    /* renamed from: b */
    public final Paint f8855b = new Paint();
    @NonNull

    /* renamed from: c */
    public final Paint f8856c = new Paint();
    @NonNull

    /* renamed from: e */
    public final Rect f8858e = new Rect();

    /* renamed from: g */
    public String f8860g = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;
    @NonNull

    /* renamed from: d */
    public final RectF f8857d = new RectF();

    public CtaButtonDrawable(@NonNull Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(2.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(15.0f, context);
        this.f8854a.setColor(-16777216);
        this.f8854a.setAlpha(51);
        this.f8854a.setStyle(DrawableConstants.CtaButton.BACKGROUND_STYLE);
        this.f8854a.setAntiAlias(true);
        this.f8855b.setColor(-1);
        this.f8855b.setAlpha(51);
        this.f8855b.setStyle(DrawableConstants.CtaButton.OUTLINE_STYLE);
        this.f8855b.setStrokeWidth(dipsToIntPixels);
        this.f8855b.setAntiAlias(true);
        this.f8856c.setColor(-1);
        this.f8856c.setTextAlign(DrawableConstants.CtaButton.TEXT_ALIGN);
        this.f8856c.setTypeface(DrawableConstants.CtaButton.TEXT_TYPEFACE);
        this.f8856c.setTextSize(dipsToFloatPixels);
        this.f8856c.setAntiAlias(true);
        this.f8859f = Dips.dipsToIntPixels(6.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f8857d.set(getBounds());
        RectF rectF = this.f8857d;
        int i = this.f8859f;
        canvas.drawRoundRect(rectF, i, i, this.f8854a);
        RectF rectF2 = this.f8857d;
        int i2 = this.f8859f;
        canvas.drawRoundRect(rectF2, i2, i2, this.f8855b);
        m30343a(canvas, this.f8856c, this.f8858e, this.f8860g);
    }

    @Deprecated
    @VisibleForTesting
    public String getCtaText() {
        return this.f8860g;
    }

    public void setCtaText(@NonNull String str) {
        this.f8860g = str;
        invalidateSelf();
    }
}
