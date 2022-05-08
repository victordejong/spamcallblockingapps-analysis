package gogolook.callgogolook2.view.widget;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.view.SizedTextView;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/WSpinner.class */
public class WSpinner extends RelativeLayout {

    /* renamed from: a */
    public RelativeLayout f13283a;

    /* renamed from: b */
    public TextView f13284b;

    /* renamed from: c */
    public Dialog f13285c;

    /* renamed from: d */
    public RelativeLayout f13286d;

    /* renamed from: e */
    public ListView f13287e;

    /* renamed from: f */
    public FrameLayout f13288f;

    /* renamed from: i */
    public int f13291i;

    /* renamed from: j */
    public int f13292j;

    /* renamed from: l */
    public Context f13294l;

    /* renamed from: m */
    public AbstractC5326f f13295m;

    /* renamed from: g */
    public boolean f13289g = false;

    /* renamed from: h */
    public int f13290h = 155;

    /* renamed from: k */
    public boolean f13293k = false;

    /* renamed from: gogolook.callgogolook2.view.widget.WSpinner$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/WSpinner$a.class */
    public class View$OnClickListenerC5321a implements View.OnClickListener {
        public View$OnClickListenerC5321a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Rect rect = new Rect();
            if (WSpinner.this.f13283a.getParent() == null || !(WSpinner.this.f13283a.getParent() instanceof View)) {
                WSpinner.this.f13283a.getGlobalVisibleRect(rect);
            } else {
                ((View) WSpinner.this.f13283a.getParent()).getGlobalVisibleRect(rect);
            }
            if (WSpinner.this.f13293k) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((Activity) WSpinner.this.getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                int a = C14217x3.m2201a(4.0f);
                WSpinner wSpinner = WSpinner.this;
                wSpinner.m25688a((displayMetrics.widthPixels - wSpinner.f13290h) - a, (rect.top - C14217x3.m2122n()) + (a * 2));
                return;
            }
            int a2 = C14217x3.m2201a(4.0f);
            WSpinner.this.m25688a(rect.left + a2, (rect.top - C14217x3.m2122n()) + (a2 * 2));
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.WSpinner$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/WSpinner$b.class */
    public class View$OnClickListenerC5322b implements View.OnClickListener {
        public View$OnClickListenerC5322b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WSpinner.this.m25680b();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.WSpinner$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/WSpinner$c.class */
    public class C5323c implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemClickListener f13298a;

        public C5323c(AdapterView.OnItemClickListener onItemClickListener) {
            this.f13298a = onItemClickListener;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            WSpinner.this.f13284b.setText(WSpinner.this.f13287e.getItemAtPosition(i).toString());
            AdapterView.OnItemClickListener onItemClickListener = this.f13298a;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i, j);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.WSpinner$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/WSpinner$d.class */
    public class RunnableC5324d implements Runnable {
        public RunnableC5324d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WSpinner.this.f13285c.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.WSpinner$e  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/WSpinner$e.class */
    public class animationInterpolatorC5325e implements Interpolator {
        public animationInterpolatorC5325e(WSpinner wSpinner) {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return f;
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.WSpinner$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/WSpinner$f.class */
    public interface AbstractC5326f {
        /* renamed from: a */
        void mo5148a();
    }

    public WSpinner(Context context) {
        super(context);
        m25687a(context);
    }

    public WSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25687a(context);
    }

    public WSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25687a(context);
    }

    /* renamed from: a */
    public final Animation m25690a() {
        animationInterpolatorC5325e eVar = new animationInterpolatorC5325e(this);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.0f, 0.0f, 1.0f, 1, 0.5f, 1, 0.0f);
        scaleAnimation.setDuration(150L);
        scaleAnimation.setInterpolator(eVar);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(150L);
        alphaAnimation.setInterpolator(eVar);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setDuration(150L);
        animationSet.setInterpolator(eVar);
        return animationSet;
    }

    /* renamed from: a */
    public void m25689a(int i) {
        this.f13284b.setText(i);
    }

    /* renamed from: a */
    public final void m25688a(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f13288f.getLayoutParams();
        layoutParams.width = this.f13290h;
        layoutParams.leftMargin = i;
        layoutParams.topMargin = i2;
        m25674d();
    }

    /* renamed from: a */
    public final void m25687a(Context context) {
        this.f13294l = context;
        this.f13290h = C14217x3.m2201a(155.0f);
        this.f13283a = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        this.f13283a.setLayoutParams(layoutParams);
        addView(this.f13283a);
        this.f13284b = new SizedTextView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        this.f13284b.setLayoutParams(layoutParams2);
        this.f13284b.setTextColor(-16777216);
        this.f13283a.addView(this.f13284b);
        this.f13291i = C14217x3.m2201a(8.0f);
        this.f13292j = C14217x3.m2201a(8.0f);
        m25677c();
        m25690a();
        setOnClickListener(new View$OnClickListenerC5321a());
        setBackgroundResource(R$drawable.spinner_selector);
    }

    /* renamed from: a */
    public void m25686a(AdapterView.OnItemClickListener onItemClickListener) {
        this.f13287e.setOnItemClickListener(new C5323c(onItemClickListener));
    }

    /* renamed from: a */
    public void m25685a(BaseAdapter baseAdapter) {
        this.f13287e.setAdapter((ListAdapter) baseAdapter);
    }

    /* renamed from: a */
    public void m25684a(AbstractC5326f fVar) {
        this.f13295m = fVar;
    }

    /* renamed from: a */
    public void m25681a(boolean z) {
        this.f13293k = z;
    }

    /* renamed from: b */
    public void m25680b() {
        this.f13287e.postDelayed(new RunnableC5324d(), 150L);
    }

    /* renamed from: b */
    public void m25679b(int i) {
        this.f13292j = C14217x3.m2201a(i);
        this.f13287e.setPadding(0, this.f13291i, 0, this.f13292j);
    }

    /* renamed from: c */
    public final void m25677c() {
        this.f13285c = new Dialog(this.f13294l, 16973840);
        this.f13286d = new RelativeLayout(getContext());
        this.f13286d.setPadding(0, 0, 0, C14217x3.m2201a(75.0f));
        this.f13286d.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.f13286d.setOnClickListener(new View$OnClickListenerC5322b());
        this.f13287e = new ListView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        this.f13287e.setPadding(0, this.f13291i, 0, this.f13292j);
        this.f13287e.setLayoutParams(layoutParams);
        this.f13287e.setCacheColorHint(0);
        this.f13287e.setSelector(R$drawable.rect_transparent);
        this.f13287e.setDivider(null);
        this.f13288f = new FrameLayout(getContext());
        this.f13288f.addView(this.f13287e);
        this.f13288f.setBackgroundResource(R$drawable.layer_menu_bg);
        this.f13286d.addView(this.f13288f);
        this.f13285c.setContentView(this.f13286d);
        this.f13285c.getWindow().setBackgroundDrawable(new ColorDrawable(335544320));
    }

    /* renamed from: c */
    public void m25676c(int i) {
        this.f13291i = C14217x3.m2201a(i);
        this.f13287e.setPadding(0, this.f13291i, 0, this.f13292j);
    }

    /* renamed from: d */
    public final void m25674d() {
        this.f13287e.setVisibility(0);
        this.f13285c.show();
        C14123p4.m2430b(this.f13294l, this.f13285c.getWindow());
        AbstractC5326f fVar = this.f13295m;
        if (fVar != null) {
            fVar.mo5148a();
        }
    }

    /* renamed from: d */
    public void m25673d(int i) {
        this.f13290h = C14217x3.m2201a(i);
    }

    /* renamed from: e */
    public void m25671e(int i) {
        this.f13290h = i;
    }

    /* renamed from: f */
    public void m25669f(int i) {
        this.f13284b.setText(this.f13287e.getItemAtPosition(i).toString());
    }

    /* renamed from: g */
    public void m25667g(int i) {
        if (!this.f13289g) {
            this.f13289g = true;
            this.f13283a.removeAllViews();
            View inflate = RelativeLayout.inflate(getContext(), i, null);
            this.f13283a.addView(inflate);
            this.f13284b = (TextView) inflate.findViewById(16908308);
        }
    }
}
