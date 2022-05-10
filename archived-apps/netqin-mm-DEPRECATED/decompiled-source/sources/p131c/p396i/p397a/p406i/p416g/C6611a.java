package p131c.p396i.p397a.p406i.p416g;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
/* renamed from: c.i.a.i.g.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/g/a.class */
public class C6611a {

    /* renamed from: a */
    public Pair<Integer, Integer> f20423a;

    /* renamed from: b */
    public ImageView f20424b;

    /* renamed from: c */
    public View.OnLayoutChangeListener f20425c = new View$OnLayoutChangeListenerC6612a();

    /* renamed from: c.i.a.i.g.a$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/g/a$a.class */
    public class View$OnLayoutChangeListenerC6612a implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC6612a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            C6611a.this.f20424b.getLayoutParams().width = i3 - i;
            C6611a.this.m20371b();
        }
    }

    /* renamed from: c.i.a.i.g.a$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/g/a$b.class */
    public class RunnableC6613b implements Runnable {
        public RunnableC6613b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C6611a.this.f20424b.removeOnLayoutChangeListener(C6611a.this.f20425c);
            C6611a.this.f20424b.requestLayout();
        }
    }

    public C6611a(ImageView imageView) {
        this.f20424b = imageView;
        m20376a();
    }

    /* renamed from: a */
    public final void m20376a() {
        this.f20424b.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f20424b.addOnLayoutChangeListener(this.f20425c);
    }

    /* renamed from: a */
    public void m20375a(int i) {
        this.f20424b.setImageResource(i);
        Drawable drawable = this.f20424b.getDrawable();
        this.f20423a = new Pair<>(Integer.valueOf(drawable.getIntrinsicWidth()), Integer.valueOf(drawable.getIntrinsicHeight()));
        m20371b();
    }

    /* renamed from: a */
    public void m20374a(Bitmap bitmap) {
        this.f20424b.setImageBitmap(bitmap);
        this.f20423a = new Pair<>(Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
        m20371b();
    }

    /* renamed from: a */
    public void m20373a(Drawable drawable) {
        this.f20424b.setImageDrawable(drawable);
        this.f20423a = new Pair<>(Integer.valueOf(drawable.getIntrinsicWidth()), Integer.valueOf(drawable.getIntrinsicHeight()));
        m20371b();
    }

    /* renamed from: b */
    public final void m20371b() {
        Pair<Integer, Integer> pair;
        int i = this.f20424b.getLayoutParams().width;
        if (i > 0 && (pair = this.f20423a) != null) {
            int intValue = ((Integer) pair.first).intValue();
            int intValue2 = ((Integer) this.f20423a.second).intValue();
            if (intValue > 0 && intValue2 > 0) {
                this.f20424b.getLayoutParams().height = (i * intValue2) / intValue;
                this.f20424b.post(new RunnableC6613b());
            }
        }
    }
}
