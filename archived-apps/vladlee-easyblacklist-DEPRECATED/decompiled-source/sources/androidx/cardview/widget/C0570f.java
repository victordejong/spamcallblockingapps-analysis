package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.cardview.widget.C0574j;
/* renamed from: androidx.cardview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/f.class */
final class C0570f implements C0574j.AbstractC0575a {

    /* renamed from: a */
    final /* synthetic */ C0569e f2586a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0570f(C0569e eVar) {
        this.f2586a = eVar;
    }

    @Override // androidx.cardview.widget.C0574j.AbstractC0575a
    /* renamed from: a */
    public final void mo8820a(Canvas canvas, RectF rectF, float f, Paint paint) {
        float f2 = 2.0f * f;
        float width = (rectF.width() - f2) - 1.0f;
        float height = rectF.height();
        if (f >= 1.0f) {
            float f3 = f + 0.5f;
            float f4 = -f3;
            this.f2586a.f2585a.set(f4, f4, f3, f3);
            int save = canvas.save();
            canvas.translate(rectF.left + f3, rectF.top + f3);
            canvas.drawArc(this.f2586a.f2585a, 180.0f, 90.0f, true, paint);
            canvas.translate(width, 0.0f);
            canvas.rotate(90.0f);
            canvas.drawArc(this.f2586a.f2585a, 180.0f, 90.0f, true, paint);
            canvas.translate((height - f2) - 1.0f, 0.0f);
            canvas.rotate(90.0f);
            canvas.drawArc(this.f2586a.f2585a, 180.0f, 90.0f, true, paint);
            canvas.translate(width, 0.0f);
            canvas.rotate(90.0f);
            canvas.drawArc(this.f2586a.f2585a, 180.0f, 90.0f, true, paint);
            canvas.restoreToCount(save);
            canvas.drawRect((rectF.left + f3) - 1.0f, rectF.top, (rectF.right - f3) + 1.0f, rectF.top + f3, paint);
            canvas.drawRect((rectF.left + f3) - 1.0f, rectF.bottom - f3, (rectF.right - f3) + 1.0f, rectF.bottom, paint);
        }
        canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
    }
}
