package com.bumptech.glide.g.a;

import android.graphics.drawable.Drawable;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.bumptech.glide.g.a.f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a.class */
public final class a<T extends Drawable> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final g<T> f3422a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3423b;
    private b<T> c;
    private b<T> d;

    /* renamed from: com.bumptech.glide.g.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/a$a.class */
    private static final class C0093a implements f.a {

        /* renamed from: a  reason: collision with root package name */
        private final int f3424a = 300;

        C0093a() {
        }

        @Override // com.bumptech.glide.g.a.f.a
        public final Animation a() {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(this.f3424a);
            return alphaAnimation;
        }
    }

    public a() {
        this((byte) 0);
    }

    private a(byte b2) {
        this(new g(new C0093a()));
    }

    private a(g<T> gVar) {
        this.f3422a = gVar;
        this.f3423b = 300;
    }

    @Override // com.bumptech.glide.g.a.d
    public final c<T> a(boolean z, boolean z2) {
        c<T> cVar;
        if (z) {
            cVar = e.b();
        } else if (z2) {
            if (this.c == null) {
                this.c = new b<>(this.f3422a.a(false, true), this.f3423b);
            }
            cVar = this.c;
        } else {
            if (this.d == null) {
                this.d = new b<>(this.f3422a.a(false, false), this.f3423b);
            }
            cVar = this.d;
        }
        return cVar;
    }
}
