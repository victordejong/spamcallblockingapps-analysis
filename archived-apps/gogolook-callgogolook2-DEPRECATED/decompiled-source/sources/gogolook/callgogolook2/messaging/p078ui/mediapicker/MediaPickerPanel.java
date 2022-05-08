package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.LinearLayout;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.messaging.p078ui.PagingAwareViewPager;
import p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.MediaPickerPanel */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/MediaPickerPanel.class */
public class MediaPickerPanel extends ViewGroup {

    /* renamed from: a */
    public LinearLayout f11873a;

    /* renamed from: b */
    public boolean f11874b;

    /* renamed from: c */
    public PagingAwareViewPager f11875c;

    /* renamed from: d */
    public boolean f11876d;

    /* renamed from: e */
    public boolean f11877e;

    /* renamed from: f */
    public int f11878f;

    /* renamed from: h */
    public FragmentC12048l f11880h;

    /* renamed from: k */
    public View$OnTouchListenerC4837e f11883k;

    /* renamed from: g */
    public final Handler f11879g = new Handler();

    /* renamed from: i */
    public final int f11881i = getResources().getDimensionPixelSize(R$dimen.media_picker_default_chooser_height);

    /* renamed from: j */
    public final int f11882j = getResources().getDimensionPixelSize(R$dimen.action_bar_height);

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.MediaPickerPanel$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/MediaPickerPanel$a.class */
    public class View$OnLayoutChangeListenerC4833a implements View.OnLayoutChangeListener {

        /* renamed from: a */
        public boolean f11884a = C12212s0.m6787b();

        public View$OnLayoutChangeListenerC4833a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            boolean b = C12212s0.m6787b();
            if (this.f11884a != b) {
                this.f11884a = b;
                if (MediaPickerPanel.this.f11877e) {
                    MediaPickerPanel mediaPickerPanel = MediaPickerPanel.this;
                    mediaPickerPanel.m26971a(mediaPickerPanel.f11877e, false, MediaPickerPanel.this.f11875c.getCurrentItem(), true);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.MediaPickerPanel$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/MediaPickerPanel$b.class */
    public class RunnableC4834b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f11886a;

        public RunnableC4834b(boolean z) {
            this.f11886a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaPickerPanel mediaPickerPanel = MediaPickerPanel.this;
            mediaPickerPanel.m26980a(mediaPickerPanel.m26982a(), this.f11886a);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.MediaPickerPanel$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/MediaPickerPanel$c.class */
    public class C4835c extends Animation {

        /* renamed from: a */
        public final /* synthetic */ int f11888a;

        /* renamed from: b */
        public final /* synthetic */ int f11889b;

        public C4835c(int i, int i2) {
            this.f11888a = i;
            this.f11889b = i2;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            MediaPickerPanel.this.f11878f = (int) (this.f11888a + (this.f11889b * f));
            MediaPickerPanel.this.requestLayout();
        }

        @Override // android.view.animation.Animation
        public boolean willChangeBounds() {
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.MediaPickerPanel$d  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/MediaPickerPanel$d.class */
    public class animationAnimation$AnimationListenerC4836d implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC4836d() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (MediaPickerPanel.this.f11880h != null) {
                if (MediaPickerPanel.this.f11877e) {
                    MediaPickerPanel.this.f11880h.m7387L();
                } else {
                    MediaPickerPanel.this.f11880h.m7388K();
                }
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.MediaPickerPanel$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/MediaPickerPanel$e.class */
    public class View$OnTouchListenerC4837e implements View.OnTouchListener {

        /* renamed from: c */
        public final float f11894c;

        /* renamed from: d */
        public final float f11895d;

        /* renamed from: e */
        public final int f11896e;

        /* renamed from: f */
        public MotionEvent f11897f;

        /* renamed from: a */
        public int f11892a = -1;

        /* renamed from: b */
        public boolean f11893b = false;

        /* renamed from: g */
        public boolean f11898g = false;

        /* renamed from: h */
        public boolean f11899h = false;

        public View$OnTouchListenerC4837e() {
            Resources resources = MediaPickerPanel.this.getContext().getResources();
            ViewConfiguration viewConfiguration = ViewConfiguration.get(MediaPickerPanel.this.getContext());
            this.f11894c = resources.getDimensionPixelSize(R$dimen.mediapicker_fling_threshold);
            this.f11895d = resources.getDimensionPixelSize(R$dimen.mediapicker_big_fling_threshold);
            this.f11896e = viewConfiguration.getScaledTouchSlop();
        }

        /* renamed from: a */
        public final void m26959a() {
            this.f11897f = null;
            this.f11892a = -1;
            this.f11893b = false;
            this.f11898g = false;
            this.f11899h = false;
            MediaPickerPanel.this.m26962f();
        }

        /* renamed from: a */
        public boolean m26958a(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                MediaPickerPanel.this.f11883k.onTouch(MediaPickerPanel.this, motionEvent);
                this.f11899h = MediaPickerPanel.this.f11880h.m7364f();
                return false;
            } else if (actionMasked != 2) {
                return false;
            } else {
                if (MediaPickerPanel.this.f11880h.m7394E()) {
                    if (m26957b(motionEvent)) {
                        MediaPickerPanel.this.f11880h.m7385N();
                        MediaPickerPanel.this.f11875c.m27340a(true);
                        return false;
                    }
                    MediaPickerPanel.this.f11875c.m27340a(false);
                    return false;
                } else if (this.f11899h) {
                    return false;
                } else {
                    if ((!MediaPickerPanel.this.f11876d && this.f11893b) || this.f11898g) {
                        return true;
                    }
                    MediaPickerPanel.this.f11883k.onTouch(MediaPickerPanel.this, motionEvent);
                    return MediaPickerPanel.this.f11876d ? this.f11898g : this.f11893b;
                }
            }
        }

        /* renamed from: b */
        public final boolean m26957b(MotionEvent motionEvent) {
            long eventTime = motionEvent.getEventTime() - motionEvent.getDownTime();
            boolean z = false;
            if (this.f11897f != null) {
                z = false;
                if (eventTime != 0) {
                    if (eventTime > 500) {
                        z = false;
                    } else {
                        z = false;
                        if (Math.max(Math.abs(motionEvent.getRawX() - this.f11897f.getRawX()), Math.abs(motionEvent.getRawY() - this.f11897f.getRawY())) / (((float) eventTime) / 1000.0f) > this.f11894c) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00f6, code lost:
            if ((java.lang.Math.abs(r0) / java.lang.Math.abs(r0)) > 1.1f) goto L_0x00f9;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
            /*
                Method dump skipped, instructions count: 401
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.mediapicker.MediaPickerPanel.View$OnTouchListenerC4837e.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    public MediaPickerPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final int m26982a() {
        if (!this.f11876d) {
            return this.f11877e ? -2 : 0;
        }
        int i = getContext().getResources().getDisplayMetrics().heightPixels;
        int i2 = i;
        if (isAttachedToWindow()) {
            View findViewById = getRootView().findViewById(R$id.conversation_and_compose_container);
            i2 = i;
            if (findViewById != null) {
                i2 = i - C12212s0.m6792a(findViewById).top;
            }
        }
        int i3 = i2;
        if (this.f11880h.m7359x()) {
            i3 = i2 - this.f11882j;
        }
        return i3;
    }

    /* renamed from: a */
    public final void m26981a(int i) {
        this.f11875c.setVisibility(0);
        if (i >= 0 && i < this.f11880h.m7397B().getCount()) {
            this.f11875c.setAdapter(this.f11880h.m7397B());
            this.f11875c.setCurrentItem(i);
        }
        m26962f();
    }

    /* renamed from: a */
    public final void m26980a(int i, boolean z) {
        int i2 = this.f11878f;
        int i3 = i;
        if (i == -2) {
            i3 = m26968c();
        }
        clearAnimation();
        if (z) {
            C4835c cVar = new C4835c(i2, i3 - i2);
            cVar.setAnimationListener(new animationAnimation$AnimationListenerC4836d());
            cVar.setDuration(C12212s0.f27369a);
            cVar.setInterpolator(C12212s0.f27374f);
            startAnimation(cVar);
        } else {
            this.f11878f = i3;
        }
        requestLayout();
    }

    /* renamed from: a */
    public void m26975a(FragmentC12048l lVar) {
        this.f11880h = lVar;
    }

    /* renamed from: a */
    public void m26974a(boolean z) {
        this.f11874b = z;
    }

    /* renamed from: a */
    public void m26973a(boolean z, boolean z2) {
        if (z == this.f11876d || !this.f11880h.m7392G()) {
            return;
        }
        if (!m26964e() || z) {
            this.f11876d = z;
            m26980a(m26982a(), z2);
            this.f11880h.m7365e(this.f11876d);
            m26962f();
            return;
        }
        m26972a(false, true, -1);
    }

    /* renamed from: a */
    public void m26972a(boolean z, boolean z2, int i) {
        m26971a(z, z2, i, false);
    }

    /* renamed from: a */
    public final void m26971a(boolean z, boolean z2, int i, boolean z3) {
        if (z != this.f11877e || z3) {
            this.f11876d = false;
            this.f11877e = z;
            this.f11879g.post(new RunnableC4834b(z2));
            if (z) {
                m26981a(i);
                this.f11880h.m7360w();
            } else {
                this.f11880h.m7361v();
            }
            if (z && m26964e()) {
                m26973a(true, z2);
            }
        }
    }

    /* renamed from: b */
    public boolean m26970b() {
        return this.f11876d;
    }

    /* renamed from: c */
    public final int m26968c() {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Integer.MAX_VALUE, Integer.MIN_VALUE);
        measureChild(this.f11873a, makeMeasureSpec, makeMeasureSpec);
        return this.f11881i + this.f11873a.getMeasuredHeight();
    }

    /* renamed from: d */
    public void m26966d() {
        if (this.f11876d) {
            m26980a(m26982a(), true);
        }
    }

    /* renamed from: e */
    public final boolean m26964e() {
        return this.f11874b || C12212s0.m6787b();
    }

    /* renamed from: f */
    public final void m26962f() {
        this.f11875c.m27340a(!this.f11876d);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11873a = (LinearLayout) findViewById(R$id.mediapicker_tabstrip);
        this.f11875c = (PagingAwareViewPager) findViewById(R$id.mediapicker_view_pager);
        this.f11883k = new View$OnTouchListenerC4837e();
        setOnTouchListener(this.f11883k);
        this.f11875c.setOnTouchListener(this.f11883k);
        addOnLayoutChangeListener(new View$OnLayoutChangeListenerC4833a());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f11883k.m26958a(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int measuredHeight = this.f11875c.getMeasuredHeight() + i2;
        this.f11875c.layout(0, i2, i5, measuredHeight);
        LinearLayout linearLayout = this.f11873a;
        linearLayout.layout(0, measuredHeight, i5, linearLayout.getMeasuredHeight() + measuredHeight);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i2);
        int i4 = size;
        if (this.f11880h.m7359x()) {
            i4 = size - this.f11882j;
        }
        int min = Math.min(this.f11878f, i4);
        if (!this.f11877e || min != 0) {
            i3 = min;
            if (!this.f11877e) {
                i3 = min;
                if (min == 0) {
                    this.f11875c.setVisibility(8);
                    this.f11875c.setAdapter(null);
                    i3 = min;
                }
            }
        } else {
            i3 = 1;
        }
        measureChild(this.f11873a, i, i2);
        int measuredHeight = i3 - (m26964e() ? this.f11873a.getMeasuredHeight() : Math.min(this.f11873a.getMeasuredHeight(), i4 - i3));
        int i5 = measuredHeight;
        if (measuredHeight <= 1) {
            i5 = this.f11881i;
        }
        measureChild(this.f11875c, i, View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
        setMeasuredDimension(this.f11875c.getMeasuredWidth(), i3);
    }
}
