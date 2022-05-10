package p012b.p033e.p034f;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import p012b.p033e.p034f.C0778g;
/* renamed from: b.e.f.a */
/* loaded from: classes-dex2jar.jar:b/e/f/a.class */
public class C0770a extends C0773c {

    /* renamed from: b.e.f.a$a */
    /* loaded from: classes-dex2jar.jar:b/e/f/a$a.class */
    public class C0771a implements C0778g.AbstractC0779a {
        public C0771a(C0770a aVar) {
        }

        @Override // p012b.p033e.p034f.C0778g.AbstractC0779a
        /* renamed from: a */
        public void mo36073a(Canvas canvas, RectF rectF, float f, Paint paint) {
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    @Override // p012b.p033e.p034f.C0773c, p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36116a() {
        C0778g.f3642r = new C0771a(this);
    }
}
