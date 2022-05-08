package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractC3055ez;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import com.flurry.sdk.C3310ir;
import java.io.File;
import java.util.Collections;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.fa */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fa.class */
public class C3058fa extends AbstractC3055ez {

    /* renamed from: e */
    public static final String f4834e = C3058fa.class.getSimpleName();

    /* renamed from: g */
    public Bitmap f4841g;

    /* renamed from: h */
    public FrameLayout f4842h;

    /* renamed from: i */
    public ImageButton f4843i;

    /* renamed from: j */
    public Button f4844j;

    /* renamed from: k */
    public ImageView f4845k;

    /* renamed from: l */
    public Context f4846l;

    /* renamed from: m */
    public RelativeLayout f4847m;

    /* renamed from: n */
    public ProgressBar f4848n;

    /* renamed from: o */
    public AbstractC3518x f4849o;

    /* renamed from: p */
    public String f4850p;

    /* renamed from: q */
    public C3310ir f4851q;

    /* renamed from: r */
    public String f4852r;

    /* renamed from: s */
    public String f4853s;

    /* renamed from: f */
    public boolean f4840f = false;

    /* renamed from: u */
    public boolean f4854u = false;

    /* renamed from: v */
    public boolean f4855v = false;

    /* renamed from: w */
    public boolean f4856w = false;

    /* renamed from: x */
    public boolean f4857x = false;

    /* renamed from: y */
    public boolean f4858y = false;

    /* renamed from: z */
    public boolean f4859z = false;

    /* renamed from: A */
    public boolean f4835A = false;

    /* renamed from: B */
    public boolean f4836B = false;

    /* renamed from: C */
    public Boolean f4837C = false;

    /* renamed from: D */
    public Boolean f4838D = false;

    /* renamed from: E */
    public Boolean f4839E = false;

    public C3058fa(Context context, AbstractC3518x xVar) {
        super(context, xVar, null);
        new AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a(this) { // from class: com.flurry.sdk.fa.1
            @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
            /* renamed from: a */
            public final void mo32972a() {
            }

            @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
            /* renamed from: b */
            public final void mo32971b() {
            }

            @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
            /* renamed from: c */
            public final void mo32970c() {
            }
        };
        if (((AbstractC3066fc) this).f4874c == null) {
            ((AbstractC3066fc) this).f4874c = new C3088fj(context, AbstractC3055ez.EnumC3056a.INSTREAM, xVar.mo32279k().f4111b.m33504b(), xVar.mo32283d(), true);
            ((AbstractC3066fc) this).f4874c.f4969a = this;
        }
        this.f4851q = C3310ir.m32715a();
        this.f4849o = xVar;
        this.f4846l = context;
        getServerParamInfo();
        m33201I();
        this.f4852r = m33192d("clickToCall");
        if (this.f4852r == null) {
            this.f4852r = m33192d("callToAction");
        }
        C3156ge geVar = new C3156ge();
        geVar.m32962e();
        this.f4841g = geVar.f5165d;
        initLayout();
    }

    /* renamed from: a */
    public static Boolean m33198a(Map<String, String> map, String str) {
        if (map == null || !map.containsKey(str)) {
            return false;
        }
        return Boolean.valueOf(map.get(str));
    }

    /* renamed from: G */
    public final void m33203G() {
        C3076ff e = getAdController().m33525e();
        e.f4899g = true;
        e.f4893a = Integer.MIN_VALUE;
        getAdController().m33536a(e);
        this.f4857x = true;
        this.f4859z = true;
        boolean z = this.f4859z;
        C3076ff e2 = getAdController().m33525e();
        e2.f4906n = z;
        getAdController().m33536a(e2);
        this.f4847m.setVisibility(0);
        this.f4842h.setVisibility(0);
        mo33175r();
        ((AbstractC3066fc) this).f4874c.f4972d.setVisibility(8);
        this.f4845k.setVisibility(8);
        this.f4842h.setClickable(false);
        this.f4844j.setClickable(true);
        m33202H();
        requestLayout();
    }

    /* renamed from: H */
    public final void m33202H() {
        ProgressBar progressBar = this.f4848n;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    /* renamed from: I */
    public final void m33201I() {
        if (!this.f4851q.f5616b) {
            return;
        }
        if (this.f4837C.booleanValue() && this.f4851q.m32713b() == C3310ir.EnumC3311a.f5620c) {
            this.f4840f = true;
            setAutoPlay(true);
        } else if (!this.f4838D.booleanValue() || this.f4851q.m32713b() != C3310ir.EnumC3311a.f5621d) {
            this.f4840f = false;
            setAutoPlay(false);
        } else {
            this.f4840f = true;
            setAutoPlay(true);
        }
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: a */
    public final void mo33200a(AbstractC3055ez.EnumC3056a aVar) {
        if (aVar.equals(AbstractC3055ez.EnumC3056a.FULLSCREEN)) {
            m33172A();
            this.f4855v = true;
            if (((AbstractC3066fc) this).f4874c.m33126p() != Integer.MIN_VALUE) {
                ((AbstractC3066fc) this).f4874c.m33126p();
            }
            C3016ec.m33289a(this.f4846l, this.f4849o, this.f4850p, false);
        } else if (aVar.equals(AbstractC3055ez.EnumC3056a.INSTREAM)) {
            this.f4854u = true;
            this.f4855v = false;
            ((AbstractC3066fc) this).f4874c.m33134d();
            ((AbstractC3066fc) this).f4874c.f4974f = false;
            C3076ff e = getAdController().m33525e();
            if (!e.f4899g) {
                mo33166a(e.f4893a);
                return;
            }
            if (((AbstractC3066fc) this).f4874c.f4970b.isPlaying() || ((AbstractC3066fc) this).f4874c.f4970b.m33075e()) {
                ((AbstractC3066fc) this).f4874c.f4970b.suspend();
            }
            m33176m();
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33122a(String str) {
        m33201I();
        m33202H();
        if (this.f4840f) {
            this.f4845k.setVisibility(8);
        }
        requestLayout();
        C3088fj fjVar = ((AbstractC3066fc) this).f4874c;
        if (fjVar != null) {
            fjVar.f4975g = this.f4839E.booleanValue();
        }
        int i = getAdController().m33525e().f4893a;
        if (((AbstractC3066fc) this).f4874c != null && this.f4840f && !this.f4859z) {
            if (!(this.f4856w || this.f4835A)) {
                mo33166a(i);
            }
        }
        if ((this.f4856w || this.f4835A) && (!this.f4857x || !m33206t())) {
            if (((AbstractC3066fc) this).f4874c != null) {
                m33176m();
                this.f4856w = false;
                this.f4835A = false;
            }
        } else if (this.f4854u && !m33206t()) {
            this.f4854u = false;
            if (!((AbstractC3066fc) this).f4874c.f4970b.isPlaying()) {
                mo33166a(i);
                if (this.f4845k.getVisibility() == 0) {
                    this.f4845k.setVisibility(8);
                }
            }
        } else if (this.f4858y && ((AbstractC3066fc) this).f4874c.f4970b.isPlaying()) {
            m33172A();
        } else if (this.f4836B) {
            mo33166a(i);
            this.f4836B = false;
        } else if (this.f4859z) {
            if (((AbstractC3066fc) this).f4874c.f4970b.isPlaying()) {
                ((AbstractC3066fc) this).f4874c.f4970b.m33071g();
            }
            if (this.f4847m.getVisibility() != 0) {
                m33203G();
            }
            this.f4857x = true;
        } else if (((AbstractC3066fc) this).f4874c.f4973e == 8 && !this.f4857x && !this.f4854u && !this.f4856w) {
            if (!this.f4840f) {
                int videoPosition = getVideoPosition();
                m33172A();
                mo33166a(videoPosition);
                m33172A();
                this.f4845k.setVisibility(8);
                ((AbstractC3066fc) this).f4874c.f4972d.setVisibility(0);
                this.f4842h.setVisibility(0);
                m33194d();
            } else {
                mo33175r();
            }
            ((AbstractC3066fc) this).f4874c.f4973e = -1;
            requestLayout();
        }
        AbstractC3518x xVar = this.f4849o;
        if (xVar instanceof C2772aa) {
            final C2772aa aaVar = (C2772aa) xVar;
            if (aaVar.f3890p != null) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.aa.10
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        if (aaVar.f3890p.mo33188f()) {
                            C3109fr.m33055a().m33054a(new C2784a(aaVar, (byte) 0), aaVar.f3898y);
                            C3109fr.m33055a().m33054a(new C2786c(aaVar, (byte) 0), aaVar.f3899z);
                            return;
                        }
                        C3109fr.m33055a().m33054a(new C2785b(aaVar, (byte) 0), aaVar.f3885A);
                    }
                });
            }
        }
        if (getAdController().m33532b() != null && getAdController().m33535a(EnumC2874bi.EV_RENDERED.f4289an)) {
            m33165a(EnumC2874bi.EV_RENDERED, Collections.emptyMap());
            getAdController().m33530b(EnumC2874bi.EV_RENDERED.f4289an);
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33121a(String str, float f, float f2) {
        super.mo33121a(str, f, f2);
        this.f4857x = false;
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33120a(String str, int i, int i2) {
        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.fa.3
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                C3088fj fjVar = ((AbstractC3066fc) C3058fa.this).f4874c;
                if (fjVar != null) {
                    fjVar.m33130g();
                }
                C3058fa.this.m33203G();
            }
        });
        setOrientation(4);
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: b */
    public final void mo33119b() {
        super.mo33119b();
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: b */
    public final void mo33118b(String str) {
        String str2 = f4834e;
        C3356jq.m32615a(3, str2, "Video Completed: " + str);
        C3076ff e = getAdController().m33525e();
        if (!e.f4899g) {
            Map<String, String> b = mo33162b(-1);
            b.put("doNotRemoveAssets", "true");
            m33165a(EnumC2874bi.EV_VIDEO_COMPLETED, b);
            String str3 = f4834e;
            C3356jq.m32615a(5, str3, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
        }
        if (this.f4839E.booleanValue()) {
            e.f4899g = true;
            this.f4844j.setVisibility(8);
            return;
        }
        e.f4899g = true;
        e.f4893a = Integer.MIN_VALUE;
        getAdController().m33536a(e);
        this.f4857x = true;
        m33204w();
        C3088fj fjVar = ((AbstractC3066fc) this).f4874c;
        if (fjVar != null) {
            fjVar.m33130g();
        }
        m33203G();
    }

    /* renamed from: c */
    public final void m33196c(int i) {
        C3096fl flVar = ((AbstractC3066fc) this).f4874c.f4970b;
        if (flVar != null) {
            flVar.m33089a(i);
        }
    }

    /* renamed from: d */
    public final String m33192d(String str) {
        AbstractC3518x xVar = this.f4849o;
        if (xVar == null) {
            return null;
        }
        for (C2921cr crVar : xVar.mo32279k().f4111b.m33504b()) {
            if (crVar.f4515a.equals(str)) {
                return crVar.f4517c;
            }
        }
        return null;
    }

    /* renamed from: d */
    public final void m33194d() {
        m33202H();
        this.f4843i.setVisibility(0);
    }

    /* renamed from: e */
    public final Map<String, String> m33189e(String str) {
        AbstractC3518x xVar = this.f4849o;
        if (xVar == null) {
            return null;
        }
        for (C2921cr crVar : xVar.mo32279k().f4111b.m33504b()) {
            if (crVar.f4515a.equals(str)) {
                return crVar.f4521g;
            }
        }
        return null;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: e */
    public final boolean mo33191e() {
        return this.f4855v;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: f */
    public final boolean mo33188f() {
        return this.f4840f;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: g */
    public final boolean mo33186g() {
        return this.f4839E.booleanValue();
    }

    public final void getServerParamInfo() {
        Map<String, String> e = m33189e("videoUrl");
        Map<String, String> map = e;
        if (e == null) {
            map = m33189e("vastAd");
        }
        if (map != null) {
            this.f4837C = m33198a(map, "autoplayWifi");
            this.f4838D = m33198a(map, "autoplayCell");
            this.f4839E = m33198a(map, "autoloop");
        }
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    public String getVideoUrl() {
        return this.f4850p;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: h */
    public final void mo33184h() {
        this.f4855v = false;
        this.f4856w = true;
        C3088fj fjVar = ((AbstractC3066fc) this).f4874c;
        fjVar.f4973e = -1;
        if (fjVar != null) {
            if (fjVar.f4970b.isPlaying()) {
                ((AbstractC3066fc) this).f4874c.f4970b.m33071g();
            }
            m33176m();
            this.f4856w = false;
            this.f4835A = false;
        }
        this.f4849o.mo32279k().m33529b(true);
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: i */
    public final void mo33182i() {
        if (!this.f4855v) {
            ((AbstractC3066fc) this).f4874c.f4971c.show();
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void initLayout() {
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.f4842h = new FrameLayout(this.f4846l);
        this.f4842h.addView(((AbstractC3066fc) this).f4874c.f4972d, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1, 17);
        this.f4845k = new ImageView(this.f4846l);
        this.f4845k.setOnClickListener(null);
        this.f4845k.setOnTouchListener(null);
        this.f4853s = m33192d("secHqImage");
        if (this.f4853s == null || !m33205v()) {
            C2806af afVar = C3484p.m32358a().f6006h;
            File d = C2806af.m33634d(getAdObject(), "previewImageFromVideo");
            if (d != null && d.exists()) {
                this.f4845k.setImageBitmap(BitmapFactory.decodeFile(d.getAbsolutePath()));
            }
        } else {
            C2900c.m33452a(this.f4845k, this.f4849o.mo32283d(), this.f4853s);
        }
        this.f4842h.addView(this.f4845k, layoutParams3);
        FrameLayout frameLayout = this.f4842h;
        this.f4843i = new ImageButton(this.f4846l);
        this.f4843i.setPadding(0, 0, 0, 0);
        this.f4843i.setBackgroundColor(0);
        this.f4843i.setImageBitmap(this.f4841g);
        this.f4843i.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fa.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ((AbstractC3066fc) C3058fa.this).f4874c.f4972d.setVisibility(0);
                C3058fa.this.f4842h.setVisibility(0);
                C3058fa.this.f4847m.setVisibility(4);
                C3058fa.this.f4845k.setVisibility(8);
                C3058fa.this.mo33175r();
                C3058fa.this.requestLayout();
                if (C3058fa.this.getVideoPosition() > 0 || C3058fa.this.f4858y) {
                    C3058fa faVar = C3058fa.this;
                    faVar.m33196c(faVar.getVideoPosition());
                    C3058fa.this.f4858y = false;
                    return;
                }
                C3058fa.this.f4836B = true;
                C3058fa.this.mo33119b();
            }
        });
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2, 17);
        m33194d();
        frameLayout.addView(this.f4843i, layoutParams4);
        FrameLayout frameLayout2 = this.f4842h;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, C3442ky.m32483b(200), 17);
        this.f4847m = new RelativeLayout(this.f4846l);
        this.f4847m.setBackgroundColor(0);
        String str = this.f4853s;
        final RelativeLayout relativeLayout = this.f4847m;
        if (str == null || !m33205v()) {
            C2806af afVar2 = C3484p.m32358a().f6006h;
            File d2 = C2806af.m33634d(getAdObject(), "previewImageFromVideo");
            if (d2 != null && d2.exists()) {
                final Bitmap decodeFile = BitmapFactory.decodeFile(d2.getAbsolutePath());
                C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.fa.6
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        if (Build.VERSION.SDK_INT < 16) {
                            relativeLayout.setBackgroundDrawable(new BitmapDrawable(decodeFile));
                        } else {
                            relativeLayout.setBackground(new BitmapDrawable(decodeFile));
                        }
                    }
                });
            }
        } else {
            C2900c.m33452a(relativeLayout, this.f4849o.mo32283d(), str);
        }
        this.f4847m.setVisibility(8);
        RelativeLayout relativeLayout2 = this.f4847m;
        this.f4844j = new Button(this.f4846l);
        this.f4844j.setText(this.f4852r);
        this.f4844j.setTextColor(-1);
        this.f4844j.setBackgroundColor(0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Integer.MIN_VALUE);
        gradientDrawable.setCornerRadius(20.0f);
        gradientDrawable.setStroke(3, -1);
        if (Build.VERSION.SDK_INT < 16) {
            this.f4844j.setBackgroundDrawable(gradientDrawable);
        } else {
            this.f4844j.setBackground(gradientDrawable);
        }
        this.f4844j.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fa.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3058fa.this.f4835A = true;
                C3058fa.this.mo33113y();
                C3058fa.this.f4849o.mo32279k().m33529b(true);
            }
        });
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.setMargins(0, 0, 0, 0);
        layoutParams6.addRule(13);
        this.f4844j.setVisibility(0);
        relativeLayout2.addView(this.f4844j, layoutParams6);
        frameLayout2.addView(this.f4847m, layoutParams5);
        this.f4848n = new ProgressBar(getContext());
        ProgressBar progressBar = this.f4848n;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
        if (this.f4840f && !m33206t()) {
            ((AbstractC3066fc) this).f4874c.f4972d.setVisibility(0);
            this.f4842h.setVisibility(0);
            this.f4845k.setVisibility(0);
            mo33175r();
            this.f4847m.setVisibility(8);
        } else if (m33206t()) {
            m33176m();
        } else if (!this.f4840f && getVideoPosition() == 0 && !this.f4857x && !m33206t()) {
            ((AbstractC3066fc) this).f4874c.f4972d.setVisibility(8);
            this.f4845k.setVisibility(0);
            m33194d();
            this.f4842h.setVisibility(0);
            this.f4847m.setVisibility(8);
        } else if (!this.f4840f && getVideoPosition() > 0 && !this.f4857x) {
            if (this.f4843i.getVisibility() != 0) {
                this.f4845k.setVisibility(8);
                ((AbstractC3066fc) this).f4874c.f4972d.setVisibility(0);
                m33194d();
                this.f4842h.setVisibility(0);
            }
            this.f4858y = true;
        } else if (this.f4840f || getVideoPosition() < 0 || this.f4857x) {
            this.f4847m.setVisibility(8);
            ((AbstractC3066fc) this).f4874c.f4972d.setVisibility(8);
            m33194d();
            this.f4845k.setVisibility(0);
            this.f4842h.setVisibility(0);
        } else {
            m33203G();
        }
        addView(this.f4842h, layoutParams);
        addView(this.f4848n, layoutParams2);
        requestLayout();
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: j */
    public final boolean mo33180j() {
        return this.f4859z;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: k */
    public final void mo33178k() {
        if (!this.f4840f && !this.f4859z) {
            C3331jb.m32681a().m32678a(new Runnable() { // from class: com.flurry.sdk.fa.2
                @Override // java.lang.Runnable
                public final void run() {
                    C3058fa.this.m33194d();
                    C3058fa.this.requestLayout();
                }
            });
        }
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: l */
    public final boolean mo33177l() {
        return this.f4854u;
    }

    /* renamed from: m */
    public final void m33176m() {
        this.f4857x = true;
        m33203G();
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: n */
    public final void mo33115n() {
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: o */
    public final void mo33114o() {
    }

    @Override // com.flurry.sdk.AbstractC3066fc, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f4855v) {
            super.onConfigurationChanged(configuration);
            if (configuration.orientation == 2) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(9);
                setLayoutParams(layoutParams);
                requestLayout();
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: r */
    public final void mo33175r() {
        this.f4843i.setVisibility(8);
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: s */
    public final void mo33174s() {
        this.f4854u = true;
    }

    public void setFullScreenModeActive(boolean z) {
        this.f4855v = z;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    public void setVideoUrl(String str) {
        this.f4850p = str;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: u */
    public final boolean mo33173u() {
        return this.f4843i.getVisibility() == 0;
    }
}
