package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.flurry.sdk.AbstractC3093fk;
import java.util.List;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.fh */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fh.class */
public class C3082fh extends AbstractC3093fk {

    /* renamed from: c */
    public static final int f4926c = C3442ky.m32483b(50);

    /* renamed from: d */
    public static final int f4927d = C3442ky.m32483b(15);

    /* renamed from: e */
    public static String f4928e = "#7F8B8B8B";

    /* renamed from: f */
    public static String f4929f = "Sponsored";

    /* renamed from: B */
    public int f4930B;

    /* renamed from: E */
    public boolean f4933E;

    /* renamed from: H */
    public List<C2921cr> f4936H;

    /* renamed from: I */
    public boolean f4937I;

    /* renamed from: J */
    public boolean f4938J;

    /* renamed from: g */
    public LinearLayout f4940g;

    /* renamed from: h */
    public AbstractC3093fk.AbstractC3094a f4941h;

    /* renamed from: i */
    public Bitmap f4942i;

    /* renamed from: j */
    public Bitmap f4943j;

    /* renamed from: k */
    public Bitmap f4944k;

    /* renamed from: l */
    public Bitmap f4945l;

    /* renamed from: m */
    public ImageButton f4946m;

    /* renamed from: n */
    public ImageButton f4947n;

    /* renamed from: o */
    public ImageButton f4948o;

    /* renamed from: p */
    public ImageButton f4949p;

    /* renamed from: q */
    public Context f4950q;

    /* renamed from: r */
    public LinearLayout f4951r;

    /* renamed from: s */
    public LinearLayout f4952s;

    /* renamed from: t */
    public LinearLayout f4953t;

    /* renamed from: u */
    public RelativeLayout f4954u;

    /* renamed from: v */
    public TextView f4955v;

    /* renamed from: w */
    public TextView f4956w;

    /* renamed from: x */
    public TextView f4957x;

    /* renamed from: y */
    public ImageView f4958y;

    /* renamed from: a */
    public FrameLayout.LayoutParams f4939a = new FrameLayout.LayoutParams(-1, -1);

    /* renamed from: C */
    public float f4931C = 15.0f;

    /* renamed from: D */
    public float f4932D = 17.5f;

    /* renamed from: F */
    public String f4934F = m33147a("headline");

    /* renamed from: G */
    public String f4935G = m33147a("source");

    public C3082fh(Context context, AbstractC3093fk.AbstractC3094a aVar, List<C2921cr> list, int i, boolean z) {
        super(context);
        this.f4930B = -1;
        this.f4933E = false;
        this.f4950q = context;
        this.f4941h = aVar;
        this.f4936H = list;
        this.f4930B = i;
        this.f4933E = z;
        this.f4937I = C3006dt.m33324a(context);
        C3156ge geVar = new C3156ge();
        geVar.m32962e();
        this.f4942i = geVar.f5167f;
        this.f4943j = geVar.f5168g;
        this.f4944k = geVar.f5169h;
        this.f4945l = geVar.f5170i;
    }

    /* renamed from: a */
    public final String m33147a(String str) {
        List<C2921cr> list = this.f4936H;
        if (list == null) {
            return null;
        }
        for (C2921cr crVar : list) {
            if (crVar.f4515a.equals(str)) {
                return crVar.f4517c;
            }
        }
        return null;
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33111a() {
        ImageButton imageButton = this.f4946m;
        if (imageButton != null) {
            imageButton.setVisibility(0);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33110a(float f, float f2) {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33109a(int i) {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: b */
    public final void mo33108b() {
        ImageButton imageButton = this.f4946m;
        if (imageButton != null) {
            imageButton.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: b */
    public final void mo33107b(int i) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        ViewGroup viewGroup5;
        if (this.f4950q != null) {
            LinearLayout linearLayout = this.f4940g;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
                ViewGroup viewGroup6 = (ViewGroup) this.f4940g.getParent();
                if (viewGroup6 != null) {
                    viewGroup6.removeView(this.f4940g);
                }
            }
            this.f4940g = new LinearLayout(this.f4950q);
            this.f4940g.setOrientation(1);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            this.f4940g.setBackgroundColor(Color.parseColor(f4928e));
            this.f4940g.setLayoutParams(layoutParams);
            LinearLayout linearLayout2 = this.f4940g;
            int i2 = f4927d;
            linearLayout2.setPadding(i2, i2, i2, i2);
            LinearLayout linearLayout3 = this.f4940g;
            RelativeLayout relativeLayout = this.f4954u;
            if (!(relativeLayout == null || (viewGroup5 = (ViewGroup) relativeLayout.getParent()) == null)) {
                viewGroup5.removeView(this.f4954u);
            }
            this.f4954u = new RelativeLayout(this.f4950q);
            RelativeLayout relativeLayout2 = this.f4954u;
            ImageButton imageButton = this.f4949p;
            if (!(imageButton == null || (viewGroup4 = (ViewGroup) imageButton.getParent()) == null)) {
                viewGroup4.removeView(this.f4949p);
            }
            if (this.f4949p == null) {
                m33145m();
            }
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(7);
            this.f4949p.setVisibility(0);
            relativeLayout2.addView(this.f4949p, layoutParams2);
            RelativeLayout relativeLayout3 = this.f4954u;
            ImageButton imageButton2 = this.f4948o;
            if (!(imageButton2 == null || (viewGroup3 = (ViewGroup) imageButton2.getParent()) == null)) {
                viewGroup3.removeView(this.f4948o);
            }
            if (this.f4948o == null) {
                m33146l();
            }
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(7);
            this.f4948o.setVisibility(0);
            relativeLayout3.addView(this.f4948o, layoutParams3);
            RelativeLayout relativeLayout4 = this.f4954u;
            ImageButton imageButton3 = this.f4946m;
            if (!(imageButton3 == null || (viewGroup2 = (ViewGroup) imageButton3.getParent()) == null)) {
                viewGroup2.removeView(this.f4946m);
            }
            if (this.f4946m == null) {
                m33144n();
            }
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(14);
            layoutParams4.addRule(1, this.f4948o.getId());
            this.f4946m.setVisibility(0);
            relativeLayout4.addView(this.f4946m, layoutParams4);
            RelativeLayout relativeLayout5 = this.f4954u;
            ImageButton imageButton4 = this.f4947n;
            if (!(imageButton4 == null || (viewGroup = (ViewGroup) imageButton4.getParent()) == null)) {
                viewGroup.removeView(this.f4947n);
            }
            if (this.f4947n == null) {
                m33143o();
            }
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(14);
            layoutParams5.addRule(1, this.f4948o.getId());
            this.f4947n.setVisibility(0);
            relativeLayout5.addView(this.f4947n, layoutParams5);
            if (this.f4933E) {
                this.f4948o.setVisibility(0);
                this.f4949p.setVisibility(8);
            } else {
                this.f4948o.setVisibility(8);
                this.f4949p.setVisibility(0);
            }
            linearLayout3.addView(this.f4954u, new LinearLayout.LayoutParams(-1, -2));
            if (i == 2) {
                LinearLayout linearLayout4 = this.f4940g;
                this.f4953t = new LinearLayout(this.f4950q);
                this.f4953t.setOrientation(0);
                this.f4952s = new LinearLayout(this.f4950q);
                this.f4952s.setOrientation(1);
                this.f4952s.setBackgroundColor(0);
                this.f4955v = new TextView(this.f4950q);
                this.f4955v.setPadding(0, 10, 0, 0);
                this.f4955v.setText(this.f4934F);
                this.f4955v.setTextSize(this.f4932D);
                this.f4955v.setTypeface(null, 1);
                this.f4955v.setTextColor(-1);
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
                this.f4952s.addView(this.f4955v, layoutParams6);
                this.f4957x = new TextView(this.f4950q);
                this.f4957x.setPadding(0, 10, 0, 0);
                this.f4957x.setText(this.f4935G);
                this.f4957x.setTextColor(-1);
                this.f4957x.setTextSize(this.f4931C);
                this.f4952s.addView(this.f4957x, layoutParams6);
                LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2, 1.0f);
                layoutParams7.gravity = 3;
                layoutParams7.setMargins(0, 0, 0, 0);
                this.f4953t.addView(this.f4952s, layoutParams7);
                this.f4951r = new LinearLayout(this.f4950q);
                this.f4951r.setOrientation(0);
                this.f4951r.setBackgroundColor(0);
                this.f4958y = new ImageView(this.f4950q);
                this.f4958y.setPadding(0, 0, 0, 0);
                String a = m33147a("secHqBrandingLogo");
                if (a != null) {
                    C2900c.m33452a(this.f4958y, this.f4930B, a);
                }
                LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(80, 80);
                layoutParams8.setMargins(0, 10, 10, 10);
                this.f4951r.addView(this.f4958y, layoutParams8);
                this.f4956w = new TextView(this.f4950q);
                this.f4956w.setPadding(0, 10, 0, 0);
                this.f4956w.setText(f4929f);
                this.f4956w.setTextSize(this.f4931C);
                this.f4956w.setTextColor(-1);
                this.f4951r.addView(this.f4956w, new LinearLayout.LayoutParams(-2, -2));
                LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams9.gravity = 5;
                this.f4953t.addView(this.f4951r, layoutParams9);
                linearLayout4.addView(this.f4953t, new LinearLayout.LayoutParams(-1, -1));
                m33142p();
            } else {
                LinearLayout linearLayout5 = this.f4940g;
                this.f4951r = new LinearLayout(this.f4950q);
                this.f4951r.setOrientation(0);
                this.f4951r.setBackgroundColor(0);
                this.f4958y = new ImageView(this.f4950q);
                this.f4958y.setPadding(0, 0, 0, 0);
                String a2 = m33147a("secHqBrandingLogo");
                if (a2 != null) {
                    C2900c.m33452a(this.f4958y, this.f4930B, a2);
                }
                LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(80, 80);
                layoutParams10.setMargins(0, 10, 10, 10);
                this.f4951r.addView(this.f4958y, layoutParams10);
                this.f4956w = new TextView(this.f4950q);
                this.f4956w.setPadding(0, 10, 0, 0);
                this.f4956w.setText(f4929f);
                this.f4956w.setTextSize(this.f4931C);
                this.f4956w.setTextColor(-1);
                this.f4951r.addView(this.f4956w, new LinearLayout.LayoutParams(-2, -2));
                LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams11.setMargins(0, 15, 0, 0);
                linearLayout5.addView(this.f4951r, layoutParams11);
                this.f4952s = new LinearLayout(this.f4950q);
                this.f4952s.setOrientation(1);
                this.f4952s.setBackgroundColor(0);
                this.f4955v = new TextView(this.f4950q);
                this.f4955v.setPadding(0, 10, 0, 0);
                this.f4955v.setText(this.f4934F);
                this.f4955v.setTextSize(this.f4932D);
                this.f4955v.setTypeface(null, 1);
                this.f4955v.setTextColor(-1);
                LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-2, -2);
                this.f4952s.addView(this.f4955v, layoutParams12);
                this.f4957x = new TextView(this.f4950q);
                this.f4957x.setPadding(0, 10, 0, 0);
                this.f4957x.setText(this.f4935G);
                this.f4957x.setTextColor(-1);
                this.f4957x.setTextSize(this.f4931C);
                this.f4952s.addView(this.f4957x, layoutParams12);
                LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams13.setMargins(0, 0, 0, 0);
                linearLayout5.addView(this.f4952s, layoutParams13);
                m33142p();
            }
            addView(this.f4940g, this.f4939a);
            requestLayout();
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: c */
    public final void mo33106c() {
        ImageButton imageButton = this.f4947n;
        if (imageButton != null) {
            imageButton.setVisibility(0);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: d */
    public final void mo33105d() {
        ImageButton imageButton = this.f4947n;
        if (imageButton != null) {
            imageButton.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: e */
    public final void mo33104e() {
        ImageButton imageButton = this.f4948o;
        if (imageButton != null) {
            imageButton.setVisibility(0);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: f */
    public final void mo33103f() {
        ImageButton imageButton = this.f4948o;
        if (imageButton != null) {
            imageButton.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: g */
    public final void mo33102g() {
        ImageButton imageButton = this.f4949p;
        if (imageButton != null) {
            imageButton.setVisibility(0);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: h */
    public final void mo33101h() {
        ImageButton imageButton = this.f4949p;
        if (imageButton != null) {
            imageButton.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: i */
    public final void mo33100i() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: j */
    public final void mo33099j() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: k */
    public final void mo33098k() {
    }

    /* renamed from: l */
    public final void m33146l() {
        this.f4948o = new ImageButton(this.f4950q);
        this.f4948o.setPadding(0, 0, 0, 0);
        this.f4948o.setBackgroundColor(0);
        this.f4948o.setImageBitmap(this.f4944k);
        this.f4948o.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fh.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3082fh.this.f4941h.mo33094t();
                C3082fh.this.f4933E = false;
            }
        });
    }

    /* renamed from: m */
    public final void m33145m() {
        this.f4949p = new ImageButton(this.f4950q);
        this.f4949p.setBackgroundColor(0);
        this.f4949p.setImageBitmap(this.f4945l);
        this.f4949p.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fh.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3082fh.this.f4941h.mo33095r();
                C3082fh.this.f4933E = true;
            }
        });
    }

    /* renamed from: n */
    public final void m33144n() {
        this.f4946m = new ImageButton(this.f4950q);
        this.f4946m.setBackgroundColor(0);
        this.f4946m.setImageBitmap(this.f4942i);
        this.f4946m.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fh.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3082fh.this.f4941h.mo33097o();
            }
        });
    }

    /* renamed from: o */
    public final void m33143o() {
        this.f4947n = new ImageButton(this.f4950q);
        this.f4947n.setBackgroundColor(0);
        this.f4947n.setImageBitmap(this.f4943j);
        this.f4947n.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fh.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3082fh.this.f4941h.mo33096q();
            }
        });
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* renamed from: p */
    public final void m33142p() {
        if (this.f4937I) {
            ImageButton imageButton = this.f4948o;
            int i = f4926c;
            imageButton.setPadding(0, i, i, 0);
            ImageButton imageButton2 = this.f4949p;
            int i2 = f4926c;
            imageButton2.setPadding(0, i2, i2, 0);
            ImageButton imageButton3 = this.f4946m;
            int i3 = f4926c;
            imageButton3.setPadding(i3, i3, i3, 0);
            ImageButton imageButton4 = this.f4947n;
            int i4 = f4926c;
            imageButton4.setPadding(i4, i4, i4, 0);
            return;
        }
        this.f4948o.setPadding(0, 0, 0, 0);
        this.f4949p.setPadding(0, 0, 0, 0);
        this.f4946m.setPadding(0, 0, 0, 0);
        this.f4947n.setPadding(0, 0, 0, 0);
    }

    /* renamed from: q */
    public final int m33141q() {
        return getResources().getConfiguration().orientation;
    }

    @Override // android.widget.MediaController
    public final void setAnchorView(View view) {
        super.setAnchorView(view);
        removeAllViews();
        if (this.f4938J) {
            mo33107b(m33141q());
        } else if (this.f4950q != null) {
            m33145m();
            m33146l();
            m33144n();
            m33143o();
            mo33107b(m33141q());
            this.f4938J = true;
        }
        LinearLayout linearLayout = this.f4940g;
        if (linearLayout != null) {
            ((ViewGroup) linearLayout.getParent()).removeView(linearLayout);
        }
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // android.widget.MediaController
    public void show() {
        super.show();
    }

    @Override // android.widget.MediaController
    public void show(int i) {
        super.show(i);
    }
}
