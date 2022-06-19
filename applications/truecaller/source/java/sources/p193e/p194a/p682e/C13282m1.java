package p193e.p194a.p682e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p417k.C8502h;
/* renamed from: e.a.e.m1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/m1.class */
public class C13282m1 extends RecyclerView.AbstractC0328n implements RecyclerView.AbstractC0337s {

    /* renamed from: a */
    public final float f38598a;

    /* renamed from: b */
    public final Drawable f38599b;

    /* renamed from: d */
    public final Drawable f38601d;

    /* renamed from: e */
    public final Paint f38602e;

    /* renamed from: f */
    public final Drawable f38603f;

    /* renamed from: g */
    public final AbstractC13284b f38604g;

    /* renamed from: h */
    public Drawable f38605h;

    /* renamed from: i */
    public boolean f38606i;

    /* renamed from: j */
    public float f38607j;

    /* renamed from: k */
    public float f38608k;

    /* renamed from: l */
    public View f38609l;

    /* renamed from: o */
    public boolean f38612o;

    /* renamed from: c */
    public final Map<Object, Drawable> f38600c = new HashMap();

    /* renamed from: m */
    public int f38610m = -1;

    /* renamed from: n */
    public EnumC13285c f38611n = EnumC13285c.IDLE;

    /* renamed from: e.a.e.m1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/m1$a.class */
    public class C13283a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ RecyclerView f38613a;

        public C13283a(RecyclerView recyclerView) {
            C13282m1.this = r4;
            this.f38613a = recyclerView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            C13282m1.this.m21957g(this.f38613a);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C13282m1.this.m21957g(this.f38613a);
        }
    }

    /* renamed from: e.a.e.m1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/m1$b.class */
    public interface AbstractC13284b {
        /* renamed from: a */
        void mo21956a(int i, boolean z, View view);

        /* renamed from: b */
        boolean mo21955b(int i, View view);

        /* renamed from: c */
        void mo21954c();
    }

    /* renamed from: e.a.e.m1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/m1$c.class */
    public enum EnumC13285c {
        IDLE,
        WAITING_FOR_SLOP,
        SWIPING,
        ANIMATING_BACK
    }

    public C13282m1(Context context, int i, Map<Object, Integer> map, int i2, int i3, AbstractC13284b abstractC13284b) {
        this.f38604g = abstractC13284b;
        this.f38598a = ViewConfiguration.get(context).getScaledTouchSlop() * 6.0f;
        Drawable m13535l0 = C19291g.m13535l0(context, i, 2130970002);
        this.f38599b = m13535l0;
        m13535l0.setBounds((-m13535l0.getIntrinsicWidth()) / 2, (-m13535l0.getIntrinsicHeight()) / 2, m13535l0.getIntrinsicWidth() / 2, m13535l0.getIntrinsicHeight() / 2);
        Drawable m13535l02 = C19291g.m13535l0(context, i2, 2130970002);
        this.f38601d = m13535l02;
        m13535l02.setBounds((-m13535l02.getIntrinsicWidth()) / 2, (-m13535l02.getIntrinsicHeight()) / 2, m13535l02.getIntrinsicWidth() / 2, m13535l02.getIntrinsicHeight() / 2);
        for (Map.Entry<Object, Integer> entry : map.entrySet()) {
            Drawable m13535l03 = C19291g.m13535l0(context, entry.getValue().intValue(), 2130970002);
            m13535l03.setBounds((-m13535l03.getIntrinsicWidth()) / 2, (-m13535l03.getIntrinsicHeight()) / 2, m13535l03.getIntrinsicWidth() / 2, m13535l03.getIntrinsicHeight() / 2);
            this.f38600c.put(entry.getKey(), m13535l03);
        }
        Paint paint = new Paint();
        this.f38602e = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(C19291g.m13612L(context, 2130970334));
        this.f38603f = C19291g.m13600P(context, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: a */
    public void mo3155a(RecyclerView recyclerView, MotionEvent motionEvent) {
        View m21959e = m21959e(recyclerView);
        if (this.f38611n == EnumC13285c.ANIMATING_BACK || this.f38610m == -1 || m21959e == null) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        float f = 1.0f;
        if (actionMasked == 1) {
            float rawX = (motionEvent.getRawX() - this.f38607j) * 0.5f;
            if (Math.abs(rawX / m21959e.getHeight()) <= 1.0f) {
                this.f38604g.mo21954c();
                m21960d(recyclerView, true);
                return;
            }
            int childAdapterPosition = recyclerView.getChildAdapterPosition(m21959e);
            if (childAdapterPosition == -1) {
                recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC13277l1(this, recyclerView, m21959e, rawX));
            } else {
                m21958f(childAdapterPosition, rawX, m21959e);
            }
            m21960d(recyclerView, false);
        } else if (actionMasked != 2) {
            if (actionMasked != 3) {
                return;
            }
            this.f38604g.mo21954c();
            m21960d(recyclerView, true);
        } else if (this.f38611n != EnumC13285c.SWIPING) {
        } else {
            float rawX2 = (motionEvent.getRawX() - this.f38607j) * 0.5f;
            if (Math.abs(rawX2) > 1.0f) {
                f = 1.0f - ((Math.abs(motionEvent.getRawX() - this.f38607j) / (m21959e.getWidth() - m21959e.getHeight())) / 2.0f);
            }
            m21959e.setTranslationX(rawX2 * f);
            recyclerView.invalidateItemDecorations();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: b */
    public boolean mo3154b(RecyclerView recyclerView, MotionEvent motionEvent) {
        EnumC13285c enumC13285c = EnumC13285c.IDLE;
        EnumC13285c enumC13285c2 = EnumC13285c.WAITING_FOR_SLOP;
        EnumC13285c enumC13285c3 = EnumC13285c.SWIPING;
        if (this.f38611n == EnumC13285c.ANIMATING_BACK) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            View findChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
            this.f38610m = recyclerView.getChildAdapterPosition(findChildViewUnder);
            if (!(findChildViewUnder instanceof ViewGroup) || ((ViewGroup) findChildViewUnder).getChildAt(0) == null) {
                return false;
            }
            this.f38611n = enumC13285c2;
            this.f38607j = motionEvent.getRawX();
            this.f38608k = motionEvent.getRawY();
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (this.f38611n == enumC13285c2) {
                    if (Math.abs(this.f38607j - motionEvent.getRawX()) > this.f38598a) {
                        View m21959e = m21959e(recyclerView);
                        int childAdapterPosition = recyclerView.getChildAdapterPosition(m21959e);
                        if (childAdapterPosition < 0 || !this.f38604g.mo21955b(childAdapterPosition, m21959e)) {
                            this.f38611n = enumC13285c;
                        } else {
                            this.f38612o = C8502h.m28437a();
                            this.f38611n = enumC13285c3;
                            if (m21959e != null && this.f38603f != null) {
                                this.f38605h = m21959e.getBackground();
                                m21959e.setBackground(this.f38603f);
                                this.f38606i = true;
                            }
                        }
                    } else if (Math.abs(this.f38608k - motionEvent.getRawY()) > this.f38598a) {
                        this.f38611n = enumC13285c;
                    }
                }
                return this.f38611n == enumC13285c3;
            } else if (actionMasked != 3) {
                return false;
            }
        }
        EnumC13285c enumC13285c4 = this.f38611n;
        if (enumC13285c4 == enumC13285c3) {
            return true;
        }
        if (enumC13285c4 != enumC13285c2) {
            return false;
        }
        this.f38611n = enumC13285c;
        this.f38610m = -1;
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: c */
    public void mo3153c(boolean z) {
    }

    /* renamed from: d */
    public final void m21960d(final RecyclerView recyclerView, boolean z) {
        if (this.f38610m == -1 || this.f38611n != EnumC13285c.SWIPING) {
            m21957g(recyclerView);
            return;
        }
        final View m21959e = m21959e(recyclerView);
        if (!z) {
            recyclerView.postDelayed(new Runnable() { // from class: e.a.e.q
                @Override // java.lang.Runnable
                public final void run() {
                    C13282m1 c13282m1 = C13282m1.this;
                    View view = m21959e;
                    RecyclerView recyclerView2 = recyclerView;
                    Objects.requireNonNull(c13282m1);
                    if (view != null) {
                        view.setTranslationX(0.0f);
                        recyclerView2.invalidateItemDecorations();
                    }
                    c13282m1.m21957g(recyclerView2);
                }
            }, 500L);
            return;
        }
        this.f38611n = EnumC13285c.ANIMATING_BACK;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m21959e.getTranslationX(), 0.0f);
        ofFloat.setDuration(200L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.r
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                View view = m21959e;
                RecyclerView recyclerView2 = recyclerView;
                view.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
                recyclerView2.invalidateItemDecorations();
            }
        });
        ofFloat.addListener(new C13283a(recyclerView));
        ofFloat.start();
    }

    /* renamed from: e */
    public final View m21959e(RecyclerView recyclerView) {
        RecyclerView.AbstractC0313c0 findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(this.f38610m);
        if (findViewHolderForAdapterPosition == null) {
            return null;
        }
        View view = findViewHolderForAdapterPosition.itemView;
        View view2 = this.f38609l;
        if (view2 == null) {
            this.f38609l = view;
        } else if (view2 != view) {
            ((ViewGroup) view2).getChildAt(0).setTranslationX(0.0f);
            this.f38609l = view;
            recyclerView.invalidateItemDecorations();
        }
        return view;
    }

    /* renamed from: f */
    public final void m21958f(int i, float f, View view) {
        this.f38604g.mo21956a(i, (f > 0.0f && !this.f38612o) || (f < 0.0f && this.f38612o), view);
    }

    /* renamed from: g */
    public final void m21957g(RecyclerView recyclerView) {
        View m21959e = m21959e(recyclerView);
        if (m21959e != null && this.f38606i) {
            m21959e.setBackground(this.f38605h);
            this.f38606i = false;
        }
        this.f38611n = EnumC13285c.IDLE;
        this.f38610m = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x010f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0110  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r8, androidx.recyclerview.widget.RecyclerView r9, androidx.recyclerview.widget.RecyclerView.C0347z r10) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.C13282m1.onDraw(android.graphics.Canvas, androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$z):void");
    }
}
