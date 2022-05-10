package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Numbers;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/resource/RadialCountdownDrawable.class */
public class RadialCountdownDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    public final Paint f34532a;

    /* renamed from: b */
    public final Paint f34533b;

    /* renamed from: c */
    public final Paint f34534c;

    /* renamed from: d */
    public Rect f34535d = new Rect();

    /* renamed from: e */
    public int f34536e;

    /* renamed from: f */
    public int f34537f;

    /* renamed from: g */
    public float f34538g;

    public RadialCountdownDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(3.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(18.0f, context);
        Paint paint = new Paint();
        this.f34532a = paint;
        paint.setColor(-1);
        this.f34532a.setAlpha(128);
        this.f34532a.setStyle(DrawableConstants.RadialCountdown.BACKGROUND_STYLE);
        float f = dipsToIntPixels;
        this.f34532a.setStrokeWidth(f);
        this.f34532a.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f34533b = paint2;
        paint2.setColor(-1);
        this.f34533b.setAlpha(255);
        this.f34533b.setStyle(DrawableConstants.RadialCountdown.PROGRESS_STYLE);
        this.f34533b.setStrokeWidth(f);
        this.f34533b.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f34534c = paint3;
        paint3.setColor(-1);
        this.f34534c.setTextAlign(DrawableConstants.RadialCountdown.TEXT_ALIGN);
        this.f34534c.setTextSize(dipsToFloatPixels);
        this.f34534c.setAntiAlias(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int centerX = getBounds().centerX();
        int centerY = getBounds().centerY();
        canvas.drawCircle(centerX, centerY, Math.min(centerX, centerY), this.f34532a);
        m4137a(canvas, this.f34534c, this.f34535d, String.valueOf(this.f34537f));
        canvas.drawArc(new RectF(getBounds()), -90.0f, this.f34538g, false, this.f34533b);
    }

    @Deprecated
    @VisibleForTesting
    public int getInitialCountdownMilliseconds() {
        return this.f34536e;
    }

    public void setInitialCountdown(int i) {
        this.f34536e = i;
    }

    public void updateCountdownProgress(int i) {
        this.f34537f = (int) Numbers.convertMillisecondsToSecondsRoundedUp(this.f34536e - i);
        this.f34538g = (i * 360.0f) / this.f34536e;
        invalidateSelf();
    }
}
