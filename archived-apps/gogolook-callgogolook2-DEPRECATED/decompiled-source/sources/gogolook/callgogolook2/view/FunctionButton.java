package gogolook.callgogolook2.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$styleable;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/FunctionButton.class */
public class FunctionButton extends LinearLayout {

    /* renamed from: a */
    public ImageButton f13057a;

    /* renamed from: b */
    public ImageView f13058b;

    /* renamed from: c */
    public TextView f13059c;

    public FunctionButton(Context context) {
        super(context);
        m25923a(context, null, 0, 0);
    }

    public FunctionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25923a(context, attributeSet, 0, 0);
    }

    public FunctionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25923a(context, attributeSet, i, 0);
    }

    public FunctionButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m25923a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    public final void m25923a(Context context, AttributeSet attributeSet, int i, int i2) {
        LayoutInflater.from(context).inflate(R$layout.btn_function, this);
        this.f13057a = (ImageButton) findViewById(R$id.action_fab);
        this.f13058b = (ImageView) findViewById(R$id.iv_selectable_indicator);
        this.f13059c = (TextView) findViewById(R$id.action_desc);
        this.f13057a.setClickable(false);
        this.f13057a.setFocusable(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.FunctionButton, i, i2);
        try {
            try {
                this.f13059c.setText(obtainStyledAttributes.getString(1));
                int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                if (resourceId != 0) {
                    this.f13057a.setImageDrawable(context.getDrawable(resourceId));
                }
            } catch (Resources.NotFoundException e) {
                C14080m2.m2612a((Throwable) e);
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public void m25922a(Drawable drawable) {
        this.f13057a.setImageDrawable(drawable);
    }

    /* renamed from: a */
    public void m25921a(CharSequence charSequence) {
        this.f13059c.setText(charSequence);
    }

    /* renamed from: a */
    public void m25920a(boolean z) {
        this.f13058b.setVisibility(z ? 0 : 8);
    }
}
