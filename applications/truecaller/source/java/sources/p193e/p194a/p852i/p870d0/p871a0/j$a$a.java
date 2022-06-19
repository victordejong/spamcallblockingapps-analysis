package p193e.p194a.p852i.p870d0.p871a0;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import java.util.Objects;
/* renamed from: e.a.i.d0.a0.j$a$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/a0/j$a$a.class */
public final class j$a$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f43046a;

    /* renamed from: b */
    public final /* synthetic */ AdOptionsView f43047b;

    /* renamed from: e.a.i.d0.a0.j$a$a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/i/d0/a0/j$a$a$a.class */
    public static final class RunnableC15105a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ FrameLayout.LayoutParams f43049b;

        public RunnableC15105a(FrameLayout.LayoutParams layoutParams) {
            j$a$a.this = r4;
            this.f43049b = layoutParams;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f43049b.leftMargin = ((ViewGroup) j$a$a.this.f43046a).getWidth() - j$a$a.this.f43047b.getWidth();
            j$a$a.this.f43047b.setLayoutParams(this.f43049b);
        }
    }

    public j$a$a(View view, AdOptionsView adOptionsView) {
        this.f43046a = view;
        this.f43047b = adOptionsView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        View view = this.f43046a;
        Objects.requireNonNull(view, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) view).addView(this.f43047b);
        this.f43047b.post(new RunnableC15105a(layoutParams));
    }
}
