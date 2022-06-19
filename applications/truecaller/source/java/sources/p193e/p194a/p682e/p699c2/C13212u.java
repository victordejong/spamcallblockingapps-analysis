package p193e.p194a.p682e.p699c2;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.common.tag.TagView;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p372b0.p426p.C8551c;
/* renamed from: e.a.e.c2.u */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/u.class */
public class C13212u extends RelativeLayout {

    /* renamed from: a */
    public int f38361a;

    /* renamed from: b */
    public final TagView f38362b;

    public C13212u(Context context, boolean z) {
        super(context, null, 0);
        this.f38361a = 0;
        if (!z) {
            RelativeLayout.inflate(getContext(), getLayout(), this);
        } else {
            LayoutInflater.from(new ContextThemeWrapper(getContext(), 2131952483)).inflate(getLayout(), this);
        }
        setClickable(true);
        this.f38362b = (TagView) findViewById(2131366209);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, C2752R.styleable.CallerButtonBase);
        boolean z2 = false;
        for (int i = 0; i < obtainStyledAttributes.getIndexCount(); i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 12) {
                setHeadingText(obtainStyledAttributes.getString(index));
            } else if (index == 9) {
                setDetailsText(obtainStyledAttributes.getString(index));
            } else if (index == 11) {
                setFooterText(obtainStyledAttributes.getString(index));
            } else if (index == 3) {
                setLeftImage(obtainStyledAttributes.getResourceId(index, 0));
            } else if (index == 4) {
                setRightImage(obtainStyledAttributes.getResourceId(index, 0));
            } else if (index == 5) {
                setRightImageSecondary(obtainStyledAttributes.getResourceId(index, 0));
            } else if (index == 13) {
                setHeadingTextStyle(obtainStyledAttributes.getResourceId(index, C2752R.style.TextStyleCallerHeading));
            } else if (index == 10) {
                setDetailsTextStyle(obtainStyledAttributes.getResourceId(index, C2752R.style.TextStyleCallerDetails));
            } else if (index == 8) {
                setSingleLine(obtainStyledAttributes.getBoolean(index, false));
            } else if (index == 6) {
                setShowFullDivider(obtainStyledAttributes.getBoolean(index, true));
            } else if (index == 7) {
                setShowPartialDivider(obtainStyledAttributes.getBoolean(index, true));
            } else if (index == 2) {
                setButtonHeight(obtainStyledAttributes.getDimensionPixelSize(index, (int) getResources().getDimension(C2752R.dimen.caller_detail_button_height)));
            } else if (index == 1) {
                int color = obtainStyledAttributes.getColor(index, 0);
                this.f38361a = color;
                setImageTint(color);
            } else if (index == 0) {
                Drawable drawable = obtainStyledAttributes.getDrawable(index);
                int i2 = C19045j0.f53198b;
                setBackground(drawable);
                z2 = true;
            }
        }
        obtainStyledAttributes.recycle();
        if (!z2) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(new int[]{2130969811});
            setBackgroundResource(obtainStyledAttributes2.getResourceId(0, 0));
            obtainStyledAttributes2.recycle();
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: e.a.e.c2.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C13212u.this.callOnClick();
            }
        };
        getRightImage().setOnClickListener(onClickListener);
        getRightImageSecondary().setOnClickListener(onClickListener);
    }

    /* renamed from: a */
    public final void m21994a(int i, Drawable drawable) {
        int i2;
        if (drawable != null && (i2 = this.f38361a) != 0) {
            drawable.setTint(i2);
        }
        int i3 = C19045j0.f53198b;
        ImageView imageView = (ImageView) findViewById(i);
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        C19045j0.m14194v(imageView, drawable != null, true);
    }

    /* renamed from: b */
    public final void m21993b(ImageView imageView, int i) {
        Drawable drawable;
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return;
        }
        drawable.setTint(i);
    }

    public TextView getDetailsTextView() {
        return (TextView) findViewById(C2752R.C2754id.buttonTextDetails);
    }

    public ImageView getExtraRightButton() {
        return (ImageView) findViewById(C2752R.C2754id.buttonImageRightExtra);
    }

    public TextView getFooterTextView() {
        return (TextView) findViewById(C2752R.C2754id.buttonTextFooter);
    }

    public TextView getHeadingTextView() {
        return (TextView) findViewById(C2752R.C2754id.buttonTextHeading);
    }

    public int getLayout() {
        return C2752R.layout.caller_button;
    }

    public ImageView getLeftImage() {
        return (ImageView) findViewById(C2752R.C2754id.buttonImageLeft);
    }

    public ImageView getRightImage() {
        return (ImageView) findViewById(C2752R.C2754id.buttonImageRight);
    }

    public ImageView getRightImageSecondary() {
        return (ImageView) findViewById(C2752R.C2754id.buttonImageRightSecondary);
    }

    public void setButtonHeight(int i) {
        getLayoutParams().height = i;
        findViewById(C2752R.C2754id.textContainer).getLayoutParams().height = i;
    }

    public void setDetailsText(CharSequence charSequence) {
        C19045j0.m14196t(getDetailsTextView(), charSequence);
    }

    public void setDetailsTextStyle(int i) {
        getDetailsTextView().setTextAppearance(getContext(), i);
    }

    public void setFooterText(CharSequence charSequence) {
        C19045j0.m14196t(getFooterTextView(), charSequence);
    }

    public void setHeadingMaxLines(int i) {
        getHeadingTextView().setMaxLines(i);
    }

    public void setHeadingText(CharSequence charSequence) {
        C19045j0.m14196t(getHeadingTextView(), charSequence);
    }

    public void setHeadingTextStyle(int i) {
        getHeadingTextView().setTextAppearance(getContext(), i);
    }

    public void setImageTint(int i) {
        this.f38361a = i;
        m21993b(getRightImage(), i);
        m21993b(getRightImageSecondary(), i);
        m21993b(getLeftImage(), i);
        m21993b(getExtraRightButton(), i);
    }

    public void setLeftImage(int i) {
        Resources resources = getResources();
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        m21994a(C2752R.C2754id.buttonImageLeft, resources.getDrawable(i, null));
    }

    public void setLeftImage(Drawable drawable) {
        m21994a(C2752R.C2754id.buttonImageLeft, drawable);
    }

    public void setMaxLines(int i) {
        getHeadingTextView().setMaxLines(i);
    }

    public void setRightImage(int i) {
        Resources resources = getResources();
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        m21994a(C2752R.C2754id.buttonImageRight, resources.getDrawable(i, null));
        findViewById(C2752R.C2754id.buttonImageRight).setVisibility(i != 0 ? 0 : 8);
    }

    public void setRightImageSecondary(int i) {
        Resources resources = getResources();
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        m21994a(C2752R.C2754id.buttonImageRightSecondary, resources.getDrawable(i, null));
        findViewById(C2752R.C2754id.buttonImageRightSecondary).setVisibility(i != 0 ? 0 : 8);
    }

    public void setRightImageTint(int i) {
        m21993b(getRightImage(), i);
    }

    public void setShowButtonDividers(boolean z) {
        ((LinearLayout) findViewById(C2752R.C2754id.rightButtonContainer)).setShowDividers(z ? 3 : 0);
    }

    public void setShowFullDivider(boolean z) {
        View findViewById = findViewById(2131363364);
        if (!z) {
            findViewById.setVisibility(8);
            return;
        }
        ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).leftMargin = 0;
        findViewById.setVisibility(0);
    }

    public void setShowPartialDivider(boolean z) {
        View findViewById = findViewById(2131363364);
        if (!z) {
            findViewById.setVisibility(8);
            return;
        }
        ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).leftMargin = getResources().getDimensionPixelSize(C2752R.dimen.list_item_common_text_margin_left);
        findViewById.setVisibility(0);
    }

    public void setSingleLine(boolean z) {
        int i = z ? 8 : 0;
        getDetailsTextView().setVisibility(i);
        getFooterTextView().setVisibility(i);
        getHeadingTextView().setMaxLines(z ? 1 : 2);
    }

    public void setTag(C8551c c8551c) {
        C19045j0.m14194v(this.f38362b, c8551c != null, true);
        if (c8551c != null) {
            this.f38362b.setTag(c8551c);
        }
    }
}
