package com.hiya.stingray.p030ui.local.dialer;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hiya.stingray.o;
import com.hiya.stingray.p;
import com.hiya.stingray.util.C1808e0;
import java.util.HashMap;
import kotlin.c0.j;
import kotlin.r;
import kotlin.w.b.l;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.dialer.DialerButton */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/DialerButton.class */
public final class DialerButton extends FrameLayout {

    /* renamed from: f */
    private l<? super DialerButton, r> f4680f;

    /* renamed from: g */
    private l<? super DialerButton, r> f4681g;

    /* renamed from: h */
    private String f4682h = new String();

    /* renamed from: i */
    private String f4683i;

    /* renamed from: j */
    private String f4684j;

    /* renamed from: k */
    private Drawable f4685k;

    /* renamed from: l */
    private Integer f4686l;

    /* renamed from: m */
    private HashMap f4687m;

    /* renamed from: com.hiya.stingray.ui.local.dialer.DialerButton$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/DialerButton$a.class */
    public static final class View$OnLongClickListenerC1662a implements View.OnLongClickListener {
        View$OnLongClickListenerC1662a() {
            DialerButton.this = r4;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            boolean z;
            l<DialerButton, r> longPress = DialerButton.this.getLongPress();
            if (longPress != null) {
                longPress.invoke(DialerButton.this);
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialerButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        k.g(context, "context");
        k.g(attributeSet, "attrs");
        m1402c(attributeSet);
        m1403b();
    }

    /* renamed from: b */
    private final void m1403b() {
        String str;
        View.inflate(getContext(), 2131492969, this);
        boolean z = false;
        if (this.f4685k != null) {
            int i = o.H1;
            ((ImageView) m1404a(i)).setImageDrawable(this.f4685k);
            ImageView imageView = (ImageView) m1404a(i);
            k.c(imageView, "imageView");
            imageView.setVisibility(0);
            LinearLayout linearLayout = (LinearLayout) m1404a(o.q4);
            k.c(linearLayout, "textContainer");
            linearLayout.setVisibility(8);
        } else {
            ImageView imageView2 = (ImageView) m1404a(o.H1);
            k.c(imageView2, "imageView");
            imageView2.setVisibility(8);
            LinearLayout linearLayout2 = (LinearLayout) m1404a(o.q4);
            k.c(linearLayout2, "textContainer");
            linearLayout2.setVisibility(0);
            TextView textView = (TextView) m1404a(o.a0);
            k.c(textView, "characterView");
            textView.setText(this.f4682h);
            TextView textView2 = (TextView) m1404a(o.T1);
            k.c(textView2, "lettersView");
            textView2.setText(this.f4684j);
        }
        TextView textView3 = (TextView) m1404a(o.a0);
        Integer num = this.f4686l;
        if (num == null) {
            k.o();
            throw null;
        }
        textView3.setTextColor(num.intValue());
        setOnLongClickListener(new View$OnLongClickListenerC1662a());
        String str2 = this.f4684j;
        if (str2 == null || str2.length() == 0) {
            z = true;
        }
        if (!z) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f4682h);
            sb.append(", ");
            String str3 = this.f4684j;
            if (str3 == null) {
                k.o();
                throw null;
            } else {
                sb.append(new j("(.)").d(str3, "$1 "));
                str = sb.toString();
            }
        } else {
            str = this.f4682h;
        }
        setContentDescription(str);
    }

    /* renamed from: c */
    private final void m1402c(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, p.a);
        String string = obtainStyledAttributes.getString(0);
        if (string == null) {
            string = this.f4682h;
        }
        this.f4682h = string;
        this.f4683i = obtainStyledAttributes.getString(4);
        this.f4684j = obtainStyledAttributes.getString(3);
        Context context = getContext();
        k.c(context, "context");
        this.f4686l = Integer.valueOf(obtainStyledAttributes.getColor(1, C1808e0.m952g(context, 2131099723)));
        if (obtainStyledAttributes.hasValue(2)) {
            this.f4685k = getContext().getDrawable(obtainStyledAttributes.getResourceId(2, 0));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public View m1404a(int i) {
        if (this.f4687m == null) {
            this.f4687m = new HashMap();
        }
        View view = (View) this.f4687m.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f4687m.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        String name = Button.class.getName();
        k.c(name, "Button::class.java.name");
        return name;
    }

    public final String getCharacter() {
        return this.f4682h;
    }

    public final l<DialerButton, r> getClick() {
        return this.f4680f;
    }

    public final Integer getDigitColor() {
        return this.f4686l;
    }

    public final Drawable getImage() {
        return this.f4685k;
    }

    public final String getLetters() {
        return this.f4684j;
    }

    public final l<DialerButton, r> getLongPress() {
        return this.f4681g;
    }

    public final String getSecondaryCharacter() {
        return this.f4683i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null && motionEvent.getAction() == 0) {
            l<? super DialerButton, r> lVar = this.f4680f;
            if (lVar != null) {
                r rVar = (r) lVar.invoke(this);
            }
            performClick();
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setCharacter(String str) {
        k.g(str, "<set-?>");
        this.f4682h = str;
    }

    public final void setClick(l<? super DialerButton, r> lVar) {
        this.f4680f = lVar;
    }

    public final void setDigitColor(Integer num) {
        this.f4686l = num;
    }

    public final void setImage(Drawable drawable) {
        this.f4685k = drawable;
    }

    public final void setLetters(String str) {
        this.f4684j = str;
    }

    public final void setLongPress(l<? super DialerButton, r> lVar) {
        this.f4681g = lVar;
    }

    public final void setSecondaryCharacter(String str) {
        this.f4683i = str;
    }
}
