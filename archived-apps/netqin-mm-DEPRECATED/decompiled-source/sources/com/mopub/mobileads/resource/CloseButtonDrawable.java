package com.mopub.mobileads.resource;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/resource/CloseButtonDrawable.class */
public class CloseButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    public final Paint f34515a;

    /* renamed from: b */
    public final float f34516b;

    public CloseButtonDrawable() {
        this(8.0f);
    }

    public CloseButtonDrawable(float f) {
        this.f34516b = f / 2.0f;
        Paint paint = new Paint();
        this.f34515a = paint;
        paint.setColor(-1);
        this.f34515a.setStrokeWidth(f);
        this.f34515a.setStrokeCap(DrawableConstants.CloseButton.STROKE_CAP);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int width = getBounds().width();
        int height = getBounds().height();
        float f = this.f34516b;
        float f2 = height;
        float f3 = width;
        canvas.drawLine(f + 0.0f, f2 - f, f3 - f, f + 0.0f, this.f34515a);
        float f4 = this.f34516b;
        canvas.drawLine(f4 + 0.0f, f4 + 0.0f, f3 - f4, f2 - f4, this.f34515a);
    }
}
