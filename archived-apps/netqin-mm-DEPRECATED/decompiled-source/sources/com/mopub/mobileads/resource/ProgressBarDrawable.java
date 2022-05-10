package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/resource/ProgressBarDrawable.class */
public class ProgressBarDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    public final Paint f34524a;

    /* renamed from: b */
    public final Paint f34525b;

    /* renamed from: c */
    public int f34526c;

    /* renamed from: d */
    public int f34527d;

    /* renamed from: e */
    public int f34528e;

    /* renamed from: f */
    public int f34529f;

    /* renamed from: g */
    public float f34530g;

    /* renamed from: h */
    public final int f34531h;

    public ProgressBarDrawable(Context context) {
        Paint paint = new Paint();
        this.f34524a = paint;
        paint.setColor(-1);
        this.f34524a.setAlpha(128);
        this.f34524a.setStyle(DrawableConstants.ProgressBar.BACKGROUND_STYLE);
        this.f34524a.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f34525b = paint2;
        paint2.setColor(DrawableConstants.ProgressBar.PROGRESS_COLOR);
        this.f34525b.setAlpha(255);
        this.f34525b.setStyle(DrawableConstants.ProgressBar.PROGRESS_STYLE);
        this.f34525b.setAntiAlias(true);
        this.f34531h = Dips.dipsToIntPixels(4.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.f34524a);
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (this.f34528e / this.f34526c), getBounds().bottom, this.f34525b);
        int i = this.f34527d;
        if (i > 0 && i < this.f34526c) {
            float f = getBounds().right * this.f34530g;
            canvas.drawRect(f, getBounds().top, f + this.f34531h, getBounds().bottom, this.f34525b);
        }
    }

    @VisibleForTesting
    public void forceCompletion() {
        this.f34528e = this.f34526c;
    }

    @Deprecated
    @VisibleForTesting
    public int getCurrentProgress() {
        return this.f34528e;
    }

    @Deprecated
    @VisibleForTesting
    public float getSkipRatio() {
        return this.f34530g;
    }

    public void reset() {
        this.f34529f = 0;
    }

    public void setDurationAndSkipOffset(int i, int i2) {
        this.f34526c = i;
        this.f34527d = i2;
        this.f34530g = i2 / i;
    }

    public void setProgress(int i) {
        int i2 = this.f34529f;
        if (i >= i2) {
            this.f34528e = i;
            this.f34529f = i;
        } else if (i != 0) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(i2), Integer.valueOf(i)));
            forceCompletion();
        }
        invalidateSelf();
    }
}
