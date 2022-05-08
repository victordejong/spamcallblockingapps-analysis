package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.RequiresApi;
import androidx.cardview.widget.RoundRectDrawableWithShadow;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardViewApi17Impl.class */
class CardViewApi17Impl extends CardViewBaseImpl {
    @Override // androidx.cardview.widget.CardViewBaseImpl, androidx.cardview.widget.CardViewImpl
    /* renamed from: j */
    public void mo21101j() {
        RoundRectDrawableWithShadow.f1519r = new RoundRectDrawableWithShadow.RoundRectHelper(this) { // from class: androidx.cardview.widget.CardViewApi17Impl.1
            @Override // androidx.cardview.widget.RoundRectDrawableWithShadow.RoundRectHelper
            /* renamed from: a */
            public void mo21066a(Canvas canvas, RectF rectF, float f, Paint paint) {
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        };
    }
}
