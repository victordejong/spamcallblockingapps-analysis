package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.cardview.widget.C0574j;
/* renamed from: androidx.cardview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/c.class */
final class C0567c implements C0574j.AbstractC0575a {

    /* renamed from: a */
    final /* synthetic */ C0566b f2584a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0567c(C0566b bVar) {
        this.f2584a = bVar;
    }

    @Override // androidx.cardview.widget.C0574j.AbstractC0575a
    /* renamed from: a */
    public final void mo8820a(Canvas canvas, RectF rectF, float f, Paint paint) {
        canvas.drawRoundRect(rectF, f, f, paint);
    }
}
