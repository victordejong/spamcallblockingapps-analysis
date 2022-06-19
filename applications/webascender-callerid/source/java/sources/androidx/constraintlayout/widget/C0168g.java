package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import f.f.b.k.e;
/* renamed from: androidx.constraintlayout.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/g.class */
public class C0168g extends View {

    /* renamed from: f */
    private int f903f;

    /* renamed from: g */
    private View f904g;

    /* renamed from: h */
    private int f905h;

    /* renamed from: a */
    public void m6236a(ConstraintLayout constraintLayout) {
        if (this.f904g == null) {
            return;
        }
        ConstraintLayout.C0151b c0151b = (ConstraintLayout.C0151b) getLayoutParams();
        ConstraintLayout.C0151b c0151b2 = (ConstraintLayout.C0151b) this.f904g.getLayoutParams();
        c0151b2.f757m0.T0(0);
        e.b y = c0151b.f757m0.y();
        e.b bVar = e.b.FIXED;
        if (y != bVar) {
            c0151b.f757m0.U0(c0151b2.f757m0.R());
        }
        if (c0151b.f757m0.O() != bVar) {
            c0151b.f757m0.v0(c0151b2.f757m0.v());
        }
        c0151b2.f757m0.T0(8);
    }

    /* renamed from: b */
    public void m6235b(ConstraintLayout constraintLayout) {
        if (this.f903f == -1 && !isInEditMode()) {
            setVisibility(this.f905h);
        }
        View findViewById = constraintLayout.findViewById(this.f903f);
        this.f904g = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.C0151b) findViewById.getLayoutParams()).f733a0 = true;
            this.f904g.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f904g;
    }

    public int getEmptyVisibility() {
        return this.f905h;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((height / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i) {
        View findViewById;
        if (this.f903f == i) {
            return;
        }
        View view = this.f904g;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.C0151b) this.f904g.getLayoutParams()).f733a0 = false;
            this.f904g = null;
        }
        this.f903f = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f905h = i;
    }
}
