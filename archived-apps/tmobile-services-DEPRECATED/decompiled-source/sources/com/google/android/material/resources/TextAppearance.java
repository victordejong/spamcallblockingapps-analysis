package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.C1027R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/resources/TextAppearance.class */
public class TextAppearance {

    /* renamed from: a */
    public final float f10985a;
    @Nullable

    /* renamed from: b */
    public final ColorStateList f10986b;
    @Nullable

    /* renamed from: c */
    public final ColorStateList f10987c;
    @Nullable

    /* renamed from: d */
    public final ColorStateList f10988d;

    /* renamed from: e */
    public final int f10989e;

    /* renamed from: f */
    public final int f10990f;
    @Nullable

    /* renamed from: g */
    public final String f10991g;
    @Nullable

    /* renamed from: h */
    public final ColorStateList f10992h;

    /* renamed from: i */
    public final float f10993i;

    /* renamed from: j */
    public final float f10994j;

    /* renamed from: k */
    public final float f10995k;
    @FontRes

    /* renamed from: l */
    private final int f10996l;

    /* renamed from: m */
    private boolean f10997m = false;

    /* renamed from: n */
    private Typeface f10998n;

    public TextAppearance(@NonNull Context context, @StyleRes int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C1027R.styleable.TextAppearance);
        this.f10985a = obtainStyledAttributes.getDimension(C1027R.styleable.TextAppearance_android_textSize, 0.0f);
        this.f10986b = MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.TextAppearance_android_textColor);
        this.f10987c = MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.TextAppearance_android_textColorHint);
        this.f10988d = MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.TextAppearance_android_textColorLink);
        this.f10989e = obtainStyledAttributes.getInt(C1027R.styleable.TextAppearance_android_textStyle, 0);
        this.f10990f = obtainStyledAttributes.getInt(C1027R.styleable.TextAppearance_android_typeface, 1);
        int e = MaterialResources.m9390e(obtainStyledAttributes, C1027R.styleable.TextAppearance_fontFamily, C1027R.styleable.TextAppearance_android_fontFamily);
        this.f10996l = obtainStyledAttributes.getResourceId(e, 0);
        this.f10991g = obtainStyledAttributes.getString(e);
        obtainStyledAttributes.getBoolean(C1027R.styleable.TextAppearance_textAllCaps, false);
        this.f10992h = MaterialResources.m9394a(context, obtainStyledAttributes, C1027R.styleable.TextAppearance_android_shadowColor);
        this.f10993i = obtainStyledAttributes.getFloat(C1027R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f10994j = obtainStyledAttributes.getFloat(C1027R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f10995k = obtainStyledAttributes.getFloat(C1027R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: d */
    private void m9385d() {
        String str;
        if (this.f10998n == null && (str = this.f10991g) != null) {
            this.f10998n = Typeface.create(str, this.f10989e);
        }
        if (this.f10998n == null) {
            int i = this.f10990f;
            if (i == 1) {
                this.f10998n = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f10998n = Typeface.SERIF;
            } else if (i != 3) {
                this.f10998n = Typeface.DEFAULT;
            } else {
                this.f10998n = Typeface.MONOSPACE;
            }
            this.f10998n = Typeface.create(this.f10998n, this.f10989e);
        }
    }

    /* renamed from: e */
    public Typeface m9384e() {
        m9385d();
        return this.f10998n;
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: f */
    public Typeface m9383f(@NonNull Context context) {
        if (this.f10997m) {
            return this.f10998n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface b = ResourcesCompat.m19612b(context, this.f10996l);
                this.f10998n = b;
                if (b != null) {
                    this.f10998n = Typeface.create(b, this.f10989e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            } catch (Exception e2) {
                Log.d("TextAppearance", "Error loading font " + this.f10991g, e2);
            }
        }
        m9385d();
        this.f10997m = true;
        return this.f10998n;
    }

    /* renamed from: g */
    public void m9382g(@NonNull Context context, @NonNull final TextPaint textPaint, @NonNull final TextAppearanceFontCallback textAppearanceFontCallback) {
        m9378k(textPaint, m9384e());
        m9381h(context, new TextAppearanceFontCallback() { // from class: com.google.android.material.resources.TextAppearance.2
            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            /* renamed from: a */
            public void mo9374a(int i) {
                textAppearanceFontCallback.mo9374a(i);
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            /* renamed from: b */
            public void mo9373b(@NonNull Typeface typeface, boolean z) {
                TextAppearance.this.m9378k(textPaint, typeface);
                textAppearanceFontCallback.mo9373b(typeface, z);
            }
        });
    }

    /* renamed from: h */
    public void m9381h(@NonNull Context context, @NonNull final TextAppearanceFontCallback textAppearanceFontCallback) {
        if (TextAppearanceConfig.m9375a()) {
            m9383f(context);
        } else {
            m9385d();
        }
        if (this.f10996l == 0) {
            this.f10997m = true;
        }
        if (this.f10997m) {
            textAppearanceFontCallback.mo9373b(this.f10998n, true);
            return;
        }
        try {
            ResourcesCompat.m19610d(context, this.f10996l, new ResourcesCompat.FontCallback() { // from class: com.google.android.material.resources.TextAppearance.1
                @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                /* renamed from: c */
                public void mo9377c(int i) {
                    TextAppearance.this.f10997m = true;
                    textAppearanceFontCallback.mo9374a(i);
                }

                @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                /* renamed from: d */
                public void mo9376d(@NonNull Typeface typeface) {
                    TextAppearance textAppearance = TextAppearance.this;
                    textAppearance.f10998n = Typeface.create(typeface, textAppearance.f10989e);
                    TextAppearance.this.f10997m = true;
                    textAppearanceFontCallback.mo9373b(TextAppearance.this.f10998n, false);
                }
            }, null);
        } catch (Resources.NotFoundException e) {
            this.f10997m = true;
            textAppearanceFontCallback.mo9374a(1);
        } catch (Exception e2) {
            Log.d("TextAppearance", "Error loading font " + this.f10991g, e2);
            this.f10997m = true;
            textAppearanceFontCallback.mo9374a(-3);
        }
    }

    /* renamed from: i */
    public void m9380i(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        m9379j(context, textPaint, textAppearanceFontCallback);
        ColorStateList colorStateList = this.f10986b;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.f10995k;
        float f2 = this.f10993i;
        float f3 = this.f10994j;
        ColorStateList colorStateList2 = this.f10992h;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    /* renamed from: j */
    public void m9379j(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull TextAppearanceFontCallback textAppearanceFontCallback) {
        if (TextAppearanceConfig.m9375a()) {
            m9378k(textPaint, m9383f(context));
        } else {
            m9382g(context, textPaint, textAppearanceFontCallback);
        }
    }

    /* renamed from: k */
    public void m9378k(@NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f10989e;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f10985a);
    }
}
