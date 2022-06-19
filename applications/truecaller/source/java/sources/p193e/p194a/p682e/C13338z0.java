package p193e.p194a.p682e;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p417k.C8502h;
/* renamed from: e.a.e.z0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/z0.class */
public class C13338z0 extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final int f38750a;

    /* renamed from: b */
    public Drawable f38751b;

    /* renamed from: c */
    public final Paint f38752c;

    /* renamed from: d */
    public Paint f38753d;

    /* renamed from: e */
    public View f38754e;

    /* renamed from: f */
    public TextView f38755f;

    /* renamed from: g */
    public boolean f38756g;

    /* renamed from: e.a.e.z0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/z0$a.class */
    public interface AbstractC13339a {
        /* renamed from: B */
        boolean mo9976B();

        /* renamed from: F */
        String mo9975F();

        /* renamed from: Y3 */
        void mo9974Y3(boolean z);

        /* renamed from: n */
        void mo9973n(String str);
    }

    /* renamed from: e.a.e.z0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/z0$b.class */
    public interface AbstractC13340b extends AbstractC13339a {
        /* renamed from: A */
        int mo19752A();

        /* renamed from: H */
        int mo19751H();

        /* renamed from: v */
        int mo19750v();

        /* renamed from: x */
        int mo19749x();
    }

    /* renamed from: e.a.e.z0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/z0$c.class */
    public interface AbstractC13341c extends AbstractC13339a {
        /* renamed from: A */
        Drawable mo21901A();

        /* renamed from: H */
        Drawable mo21900H();

        /* renamed from: v */
        Drawable mo21899v();

        /* renamed from: x */
        Drawable mo21898x();
    }

    public C13338z0(Context context, int i, int i2) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C2752R.dimen.list_header_height);
        this.f38750a = dimensionPixelSize;
        this.f38751b = C19291g.m13600P(context, 16843284);
        Paint paint = new Paint();
        this.f38752c = paint;
        paint.setColor(i2);
        paint.setStyle(Paint.Style.FILL);
        View inflate = LayoutInflater.from(context).inflate(i, (ViewGroup) null);
        this.f38754e = inflate;
        inflate.setLayoutParams(new RecyclerView.C0334p(-1, dimensionPixelSize));
        View view = this.f38754e;
        boolean m28437a = C8502h.m28437a();
        AtomicInteger atomicInteger = C26614s.f74505a;
        view.setLayoutDirection(m28437a ? 1 : 0);
        this.f38755f = (TextView) this.f38754e.findViewById(C2752R.C2754id.header_text);
        Paint paint2 = new Paint();
        paint2.setColorFilter(new PorterDuffColorFilter(C19291g.m13612L(context, 16842808), PorterDuff.Mode.SRC_IN));
        this.f38755f.setLayerType(2, paint2);
    }

    /* renamed from: d */
    public final void m21903d(View view) {
        this.f38754e.measure(View.MeasureSpec.makeMeasureSpec(view.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f38750a, 1073741824));
    }

    /* renamed from: e */
    public void m21902e(int i) {
        Paint paint = new Paint(this.f38752c);
        this.f38753d = paint;
        paint.setColor(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        super.getItemOffsets(rect, view, recyclerView, c0347z);
        RecyclerView.AbstractC0313c0 childViewHolder = recyclerView.getChildViewHolder(view);
        if (!(childViewHolder instanceof AbstractC13339a)) {
            return;
        }
        rect.setEmpty();
        if (((AbstractC13339a) childViewHolder).mo9975F() == null) {
            return;
        }
        m21903d(recyclerView);
        rect.top = this.f38754e.getMeasuredHeight() + rect.top;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        super.onDraw(canvas, recyclerView, c0347z);
        m21903d(recyclerView);
        View view = this.f38754e;
        view.layout(0, 0, view.getMeasuredWidth(), this.f38754e.getMeasuredHeight());
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            View childAt = recyclerView.getChildAt(i);
            RecyclerView.AbstractC0313c0 childViewHolder = recyclerView.getChildViewHolder(childAt);
            if (childViewHolder instanceof AbstractC13339a) {
                canvas.save();
                AbstractC13339a abstractC13339a = (AbstractC13339a) childViewHolder;
                String mo9975F = abstractC13339a.mo9975F();
                canvas.drawRect(childAt.getTranslationX() + childAt.getLeft(), childAt.getTop(), childAt.getTranslationX() + childAt.getRight(), childAt.getBottom(), this.f38752c);
                if (abstractC13339a.mo9976B() || this.f38756g) {
                    this.f38751b.setBounds(childAt.getLeft(), childAt.getBottom(), childAt.getRight(), this.f38751b.getIntrinsicHeight() + childAt.getBottom());
                    this.f38751b.draw(canvas);
                }
                if (mo9975F != null) {
                    canvas.translate(0.0f, childAt.getTop() - this.f38750a);
                    float left = childAt.getLeft();
                    float right = childAt.getRight();
                    float f = this.f38750a;
                    Paint paint = this.f38753d;
                    if (paint == null) {
                        paint = this.f38752c;
                    }
                    canvas.drawRect(left, 0.0f, right, f, paint);
                    this.f38755f.setText(mo9975F);
                    if (childViewHolder instanceof AbstractC13341c) {
                        AbstractC13341c abstractC13341c = (AbstractC13341c) childViewHolder;
                        this.f38755f.setCompoundDrawablesRelativeWithIntrinsicBounds(abstractC13341c.mo21900H(), abstractC13341c.mo21899v(), abstractC13341c.mo21898x(), abstractC13341c.mo21901A());
                    }
                    if (childViewHolder instanceof AbstractC13340b) {
                        AbstractC13340b abstractC13340b = (AbstractC13340b) childViewHolder;
                        this.f38755f.setCompoundDrawablesRelativeWithIntrinsicBounds(abstractC13340b.mo19751H(), abstractC13340b.mo19750v(), abstractC13340b.mo19749x(), abstractC13340b.mo19752A());
                    }
                    this.f38755f.destroyDrawingCache();
                    this.f38754e.draw(canvas);
                }
                canvas.restore();
            }
        }
    }
}
