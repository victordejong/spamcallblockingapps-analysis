package com.android.contacts.widget;

import android.content.res.Resources;
import android.graphics.Color;
import android.os.Handler;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/e.class */
public abstract class e implements f, Runnable {
    private static final a[] c = new a[0];
    private boolean f;
    private boolean g;
    private long h;

    /* renamed from: a  reason: collision with root package name */
    private AccelerateInterpolator f2211a = new AccelerateInterpolator();

    /* renamed from: b  reason: collision with root package name */
    private DecelerateInterpolator f2212b = new DecelerateInterpolator();
    private final int i = 350;
    private Handler e = new Handler();
    private a d = new a((byte) 0);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/widget/e$a.class */
    private static final class a extends CharacterStyle {

        /* renamed from: a  reason: collision with root package name */
        int f2213a;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // android.text.style.CharacterStyle
        public final void updateDrawState(TextPaint textPaint) {
            int[] iArr = textPaint.drawableState;
            if (iArr != null) {
                int length = iArr.length;
                for (int i = 0; i < length; i++) {
                    if (iArr[i] != Resources.getSystem().getIdentifier("state_pressed", "attr", "android") && iArr[i] != Resources.getSystem().getIdentifier("state_selected", "attr", "android") && iArr[i] == Resources.getSystem().getIdentifier("state_focused", "attr", "android")) {
                        return;
                    }
                }
            }
            int color = textPaint.getColor();
            textPaint.setColor(Color.argb(this.f2213a, Color.red(color), Color.green(color), Color.blue(color)));
        }
    }

    public e() {
        this.d.f2213a = 255;
    }

    public abstract void a();

    public final void a(boolean z) {
        if (this.g != z) {
            this.g = z;
            long currentTimeMillis = System.currentTimeMillis();
            if (!this.f) {
                this.f = true;
                this.h = currentTimeMillis + this.i;
                b();
                this.e.post(this);
                return;
            }
            this.h = (this.i + currentTimeMillis) - (this.h - currentTimeMillis);
        }
    }

    public void b() {
    }

    public void c() {
    }

    @Override // java.lang.Runnable
    public void run() {
        long currentTimeMillis = this.h - System.currentTimeMillis();
        if (currentTimeMillis < 0) {
            this.d.f2213a = this.g ? 50 : 255;
            this.f = false;
            c();
            return;
        }
        float f = ((float) currentTimeMillis) / this.i;
        if (this.g) {
            this.d.f2213a = (int) ((this.f2212b.getInterpolation(f) * 205.0f) + 50.0f);
        } else {
            this.d.f2213a = (int) (((1.0f - this.f2211a.getInterpolation(f)) * 205.0f) + 50.0f);
        }
        a();
        this.e.postDelayed(this, 50L);
    }
}
