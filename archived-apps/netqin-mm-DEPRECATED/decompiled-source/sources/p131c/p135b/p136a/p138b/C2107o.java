package p131c.p135b.p136a.p138b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.applovin.impl.adview.AbstractC6929h;
/* renamed from: c.b.a.b.o */
/* loaded from: classes-dex2jar.jar:c/b/a/b/o.class */
public final class C2107o extends AbstractC6929h {

    /* renamed from: b */
    public static final Paint f8103b = new Paint(1);

    /* renamed from: c */
    public static final Paint f8104c = new Paint(1);

    public C2107o(Context context) {
        super(context);
        f8103b.setARGB(80, 0, 0, 0);
        f8104c.setColor(-1);
        f8104c.setStyle(Paint.Style.STROKE);
    }

    @Override // com.applovin.impl.adview.AbstractC6929h
    /* renamed from: a */
    public void mo19330a(int i) {
        setViewScale(i / 30.0f);
    }

    public float getCenter() {
        return getSize() / 2.0f;
    }

    public float getCrossOffset() {
        return this.f21281a * 8.0f;
    }

    public float getStrokeWidth() {
        return this.f21281a * 2.0f;
    }

    @Override // com.applovin.impl.adview.AbstractC6929h
    public AbstractC6929h.EnumC6930a getStyle() {
        return AbstractC6929h.EnumC6930a.WHITE_ON_TRANSPARENT;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f8103b);
        float crossOffset = getCrossOffset();
        float size = getSize() - crossOffset;
        f8104c.setStrokeWidth(getStrokeWidth());
        canvas.drawLine(crossOffset, crossOffset, size, size, f8104c);
        canvas.drawLine(crossOffset, size, size, crossOffset, f8104c);
    }
}
