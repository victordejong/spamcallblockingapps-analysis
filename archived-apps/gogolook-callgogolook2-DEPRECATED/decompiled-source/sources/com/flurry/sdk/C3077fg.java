package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import androidx.media2.exoplayer.external.extractor.p007ts.H262Reader;
import com.flurry.sdk.AbstractC3093fk;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.fg */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fg.class */
public class C3077fg extends AbstractC3093fk {

    /* renamed from: b */
    public static final String f4909b = C3077fg.class.getSimpleName();

    /* renamed from: c */
    public static final int f4910c = C3442ky.m32483b(16);

    /* renamed from: d */
    public static final int f4911d = C3442ky.m32483b(0);

    /* renamed from: e */
    public static final int f4912e = C3442ky.m32483b(5);

    /* renamed from: f */
    public static final int f4913f = C3442ky.m32483b(35);

    /* renamed from: a */
    public ImageButton f4914a;

    /* renamed from: g */
    public RelativeLayout f4915g;

    /* renamed from: h */
    public AbstractC3093fk.AbstractC3095b f4916h;

    /* renamed from: i */
    public ImageButton f4917i;

    /* renamed from: j */
    public ImageButton f4918j;

    /* renamed from: k */
    public C3172gm f4919k;

    /* renamed from: l */
    public int f4920l = 0;

    /* renamed from: m */
    public int f4921m = 0;

    public C3077fg(Context context, AbstractC3093fk.AbstractC3095b bVar) {
        super(context);
        if (context != null) {
            this.f4916h = bVar;
            String str = f4909b;
            C3356jq.m32615a(3, str, "Update initLayout Video: " + context.toString());
            this.f4915g = new RelativeLayout(context);
            this.f4915g.setBackgroundColor(0);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.f4915g.setLayoutParams(layoutParams);
            C3156ge geVar = new C3156ge();
            geVar.m32962e();
            Bitmap bitmap = geVar.f5162a;
            this.f4914a = new ImageButton(context);
            this.f4914a.setPadding(0, 0, 0, 0);
            this.f4914a.setImageBitmap(bitmap);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-16777216);
            gradientDrawable.setShape(1);
            gradientDrawable.setAlpha(H262Reader.START_USER_DATA);
            if (Build.VERSION.SDK_INT >= 16) {
                this.f4914a.setBackground(gradientDrawable);
            } else {
                this.f4914a.setBackgroundDrawable(gradientDrawable);
            }
            this.f4914a.setVisibility(4);
            this.f4914a.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fg.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (C3077fg.this.f4916h != null) {
                        C3077fg.this.f4916h.mo33093l();
                    }
                }
            });
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(11);
            layoutParams2.addRule(10);
            int i = f4912e;
            layoutParams2.setMargins(i, i, i, i);
            this.f4915g.addView(this.f4914a, layoutParams2);
            int i2 = f4913f;
            this.f4919k = new C3172gm(context, i2, i2);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(12);
            layoutParams3.addRule(9);
            int i3 = f4911d;
            layoutParams3.setMargins(i3, i3, i3, i3);
            this.f4919k.f5209a.setVisibility(0);
            this.f4915g.addView(this.f4919k.f5209a, layoutParams3);
            Bitmap bitmap2 = geVar.f5164c;
            this.f4918j = new ImageButton(context);
            this.f4918j.setPadding(0, 0, 0, 0);
            this.f4918j.setBackgroundColor(0);
            this.f4918j.setImageBitmap(bitmap2);
            this.f4918j.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fg.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (C3077fg.this.f4916h != null) {
                        C3077fg.this.f4916h.mo33092m();
                    }
                }
            });
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(11);
            layoutParams4.addRule(12);
            int i4 = f4910c;
            layoutParams4.setMargins(i4, i4, i4, i4);
            this.f4918j.setVisibility(0);
            this.f4915g.addView(this.f4918j, layoutParams4);
            Bitmap bitmap3 = geVar.f5163b;
            this.f4917i = new ImageButton(context);
            this.f4917i.setPadding(0, 0, 0, 0);
            this.f4917i.setBackgroundColor(0);
            this.f4917i.setImageBitmap(bitmap3);
            this.f4917i.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fg.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (C3077fg.this.f4916h != null) {
                        C3077fg.this.f4917i.setVisibility(4);
                        C3077fg.this.f4916h.mo33091n();
                    }
                }
            });
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(13);
            int i5 = f4910c;
            layoutParams5.setMargins(i5, i5, i5, i5);
            this.f4917i.setVisibility(0);
            show(0);
            this.f4915g.addView(this.f4917i, layoutParams5);
            this.f4915g.setFocusableInTouchMode(true);
            this.f4915g.setOnKeyListener(new View.OnKeyListener() { // from class: com.flurry.sdk.fg.1
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
                    if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
                        return false;
                    }
                    if (C3077fg.this.f4916h == null || !C3077fg.this.f4914a.isShown()) {
                        return true;
                    }
                    C3077fg.this.f4916h.mo33093l();
                    return true;
                }
            });
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33111a() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33110a(float f, float f2) {
        final C3172gm gmVar = this.f4919k;
        if (gmVar == null) {
            C3356jq.m32615a(3, f4909b, "Cannot update timer. View is null.");
            return;
        }
        this.f4920l = ((int) f2) / 1000;
        final int i = (int) f;
        int i2 = i / 1000;
        final int i3 = i2 - this.f4920l;
        gmVar.f5210b = 360.0f / i2;
        C3331jb.m32681a().m32678a(new Runnable() { // from class: com.flurry.sdk.gm.3
            @Override // java.lang.Runnable
            public final void run() {
                C3172gm.m32939a(gmVar, i);
            }
        });
        final C3172gm gmVar2 = this.f4919k;
        if (gmVar2.f5209a != null) {
            C3331jb.m32681a().m32678a(new Runnable() { // from class: com.flurry.sdk.gm.1
                @Override // java.lang.Runnable
                public final void run() {
                    C3172gm.m32939a(gmVar2, i3);
                }
            });
            C3331jb.m32681a().m32678a(new Runnable() { // from class: com.flurry.sdk.gm.2
                @Override // java.lang.Runnable
                public final void run() {
                    gmVar2.f5209a.setText(String.valueOf(i3));
                }
            });
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33109a(int i) {
        if (this.f4921m != i) {
            String str = f4909b;
            C3356jq.m32615a(3, str, "Update UI with visible flag: \n CloseButton: " + (i & 1) + " \n Play Button: " + (i & 8) + " \n MoreInfo: " + (i & 4) + " \n Timer: " + (i & 2));
            this.f4921m = i;
            m33150c(i);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: b */
    public final void mo33108b() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: c */
    public final void mo33106c() {
    }

    /* renamed from: c */
    public final void m33150c(int i) {
        if (this.f4915g == null) {
            C3356jq.m32615a(5, f4909b, "Layout is null in updateControlVisibility.");
            return;
        }
        setCloseButtonVisibility(i);
        setTimerVisibility(i);
        setPlayButtonVisibility(i);
        setMoreInfoButtonVisibility(i);
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: d */
    public final void mo33105d() {
    }

    @Override // android.widget.MediaController, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        C3356jq.m32615a(5, f4909b, "Override dispatchKeyEvent");
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (keyCode == 79 || keyCode == 85 || keyCode == 62 || keyCode == 126 || keyCode == 86 || keyCode == 127) {
            return true;
        }
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || keyCode == 27) {
            show(0);
            return super.dispatchKeyEvent(keyEvent);
        } else if (keyEvent.getKeyCode() != 4 || !z) {
            show(0);
            return super.dispatchKeyEvent(keyEvent);
        } else {
            if (this.f4916h != null && this.f4914a.isShown()) {
                this.f4916h.mo33093l();
            }
            show(0);
            return true;
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: e */
    public final void mo33104e() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: f */
    public final void mo33103f() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: g */
    public final void mo33102g() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: h */
    public final void mo33101h() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: i */
    public final void mo33100i() {
        if (this.f4915g != null) {
            C3356jq.m32615a(5, f4909b, "Reset video view.");
            mo33109a(0);
            this.f4915g.removeAllViews();
            removeAllViews();
            this.f4915g = null;
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: j */
    public final void mo33099j() {
        if (this.f4915g == null) {
            C3356jq.m32615a(3, f4909b, "Layout is null in screenSizeChanged.");
        } else {
            m33150c(this.f4921m);
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: k */
    public final void mo33098k() {
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m33150c(this.f4921m);
    }

    @Override // android.widget.MediaController
    public final void setAnchorView(View view) {
        super.setAnchorView(view);
        if (this.f4915g == null) {
            C3356jq.m32615a(3, f4909b, "Layout is null in setAnchorView.");
            return;
        }
        removeAllViews();
        addView(this.f4915g);
    }

    public final void setCloseButtonVisibility(int i) {
        boolean z = true;
        if ((i & 1) <= 0) {
            z = false;
        }
        if (z) {
            this.f4914a.setVisibility(0);
        } else {
            this.f4914a.setVisibility(4);
        }
    }

    public final void setMoreInfoButtonVisibility(int i) {
        if ((i & 4) > 0) {
            this.f4918j.setVisibility(0);
        } else {
            this.f4918j.setVisibility(4);
        }
    }

    public final void setPlayButtonVisibility(int i) {
        if ((i & 8) > 0) {
            this.f4917i.setVisibility(0);
        } else {
            this.f4917i.setVisibility(4);
        }
    }

    public final void setTimerVisibility(int i) {
        if ((i & 2) > 0) {
            this.f4919k.f5209a.setVisibility(0);
        } else {
            this.f4919k.f5209a.setVisibility(4);
        }
    }

    @Override // android.widget.MediaController
    public void show() {
        super.show(0);
        C3356jq.m32615a(5, f4909b, "Show called.");
    }

    @Override // android.widget.MediaController
    public void show(int i) {
        C3356jq.m32615a(5, f4909b, "Override show(0).");
        super.show(0);
    }
}
