package com.hiya.stingray.p000ui.local.dialer;

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
import com.hiya.stingray.util.C0146e0;
import java.util.HashMap;
import kotlin.c0.j;
import kotlin.r;
import kotlin.w.b.l;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.dialer.DialerButton */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/DialerButton.class */
public final class DialerButton extends FrameLayout {

    /* renamed from: f */
    private l<? super DialerButton, r> f1f;

    /* renamed from: g */
    private l<? super DialerButton, r> f2g;

    /* renamed from: h */
    private String f3h = new String();

    /* renamed from: i */
    private String f4i;

    /* renamed from: j */
    private String f5j;

    /* renamed from: k */
    private Drawable f6k;

    /* renamed from: l */
    private Integer f7l;

    /* renamed from: m */
    private HashMap f8m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.ui.local.dialer.DialerButton$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/DialerButton$a.class */
    public static final class View$OnLongClickListenerC0000a implements View.OnLongClickListener {
        View$OnLongClickListenerC0000a() {
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
        if (this.f6k != null) {
            int i = o.H1;
            ((ImageView) m1404a(i)).setImageDrawable(this.f6k);
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
            textView.setText(this.f3h);
            TextView textView2 = (TextView) m1404a(o.T1);
            k.c(textView2, "lettersView");
            textView2.setText(this.f5j);
        }
        TextView textView3 = (TextView) m1404a(o.a0);
        Integer num = this.f7l;
        if (num != null) {
            textView3.setTextColor(num.intValue());
            setOnLongClickListener(new View$OnLongClickListenerC0000a());
            String str2 = this.f5j;
            if (str2 == null || str2.length() == 0) {
                z = true;
            }
            if (!z) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f3h);
                sb.append(", ");
                String str3 = this.f5j;
                if (str3 != null) {
                    sb.append(new j("(.)").d(str3, "$1 "));
                    str = sb.toString();
                } else {
                    k.o();
                    throw null;
                }
            } else {
                str = this.f3h;
            }
            setContentDescription(str);
            return;
        }
        k.o();
        throw null;
    }

    /* renamed from: c */
    private final void m1402c(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, p.a);
        String string = obtainStyledAttributes.getString(0);
        if (string == null) {
            string = this.f3h;
        }
        this.f3h = string;
        this.f4i = obtainStyledAttributes.getString(4);
        this.f5j = obtainStyledAttributes.getString(3);
        Context context = getContext();
        k.c(context, "context");
        this.f7l = Integer.valueOf(obtainStyledAttributes.getColor(1, C0146e0.m952g(context, 2131099723)));
        if (obtainStyledAttributes.hasValue(2)) {
            this.f6k = getContext().getDrawable(obtainStyledAttributes.getResourceId(2, 0));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public View m1404a(int i) {
        if (this.f8m == null) {
            this.f8m = new HashMap();
        }
        View view = (View) this.f8m.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f8m.put(Integer.valueOf(i), view2);
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
        return this.f3h;
    }

    public final l<DialerButton, r> getClick() {
        return this.f1f;
    }

    public final Integer getDigitColor() {
        return this.f7l;
    }

    public final Drawable getImage() {
        return this.f6k;
    }

    public final String getLetters() {
        return this.f5j;
    }

    public final l<DialerButton, r> getLongPress() {
        return this.f2g;
    }

    public final String getSecondaryCharacter() {
        return this.f4i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null && motionEvent.getAction() == 0) {
            l<? super DialerButton, r> lVar = this.f1f;
            if (lVar != null) {
                r rVar = (r) lVar.invoke(this);
            }
            performClick();
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setCharacter(String str) {
        k.g(str, "<set-?>");
        this.f3h = str;
    }

    public final void setClick(l<? super DialerButton, r> lVar) {
        this.f1f = lVar;
    }

    public final void setDigitColor(Integer num) {
        this.f7l = num;
    }

    public final void setImage(Drawable drawable) {
        this.f6k = drawable;
    }

    public final void setLetters(String str) {
        this.f5j = str;
    }

    public final void setLongPress(l<? super DialerButton, r> lVar) {
        this.f2g = lVar;
    }

    public final void setSecondaryCharacter(String str) {
        this.f4i = str;
    }
}
