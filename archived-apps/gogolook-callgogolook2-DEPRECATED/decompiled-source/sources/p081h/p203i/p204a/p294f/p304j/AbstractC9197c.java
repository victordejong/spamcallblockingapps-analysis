package p081h.p203i.p204a.p294f.p304j;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p294f.p304j.C9195b;
import p081h.p203i.p204a.p294f.p309o.C9247a;
/* renamed from: h.i.a.f.j.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/j/c.class */
public interface AbstractC9197c extends C9195b.AbstractC9196a {

    /* renamed from: h.i.a.f.j.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/j/c$b.class */
    public static class C9199b implements TypeEvaluator<C9202e> {

        /* renamed from: b */
        public static final TypeEvaluator<C9202e> f21016b = new C9199b();

        /* renamed from: a */
        public final C9202e f21017a = new C9202e();

        /* renamed from: a */
        public C9202e evaluate(float f, C9202e eVar, C9202e eVar2) {
            this.f21017a.m15779a(C9247a.m15630b(eVar.f21020a, eVar2.f21020a, f), C9247a.m15630b(eVar.f21021b, eVar2.f21021b, f), C9247a.m15630b(eVar.f21022c, eVar2.f21022c, f));
            return this.f21017a;
        }
    }

    /* renamed from: h.i.a.f.j.c$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/j/c$c.class */
    public static class C9200c extends Property<AbstractC9197c, C9202e> {

        /* renamed from: a */
        public static final Property<AbstractC9197c, C9202e> f21018a = new C9200c("circularReveal");

        public C9200c(String str) {
            super(C9202e.class, str);
        }

        /* renamed from: a */
        public C9202e get(AbstractC9197c cVar) {
            return cVar.mo15792a();
        }

        /* renamed from: a */
        public void set(AbstractC9197c cVar, C9202e eVar) {
            cVar.mo15789a(eVar);
        }
    }

    /* renamed from: h.i.a.f.j.c$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/j/c$d.class */
    public static class C9201d extends Property<AbstractC9197c, Integer> {

        /* renamed from: a */
        public static final Property<AbstractC9197c, Integer> f21019a = new C9201d("circularRevealScrimColor");

        public C9201d(String str) {
            super(Integer.class, str);
        }

        /* renamed from: a */
        public Integer get(AbstractC9197c cVar) {
            return Integer.valueOf(cVar.mo15787c());
        }

        /* renamed from: a */
        public void set(AbstractC9197c cVar, Integer num) {
            cVar.mo15791a(num.intValue());
        }
    }

    /* renamed from: h.i.a.f.j.c$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/j/c$e.class */
    public static class C9202e {

        /* renamed from: a */
        public float f21020a;

        /* renamed from: b */
        public float f21021b;

        /* renamed from: c */
        public float f21022c;

        public C9202e() {
        }

        public C9202e(float f, float f2, float f3) {
            this.f21020a = f;
            this.f21021b = f2;
            this.f21022c = f3;
        }

        public C9202e(C9202e eVar) {
            this(eVar.f21020a, eVar.f21021b, eVar.f21022c);
        }

        /* renamed from: a */
        public void m15779a(float f, float f2, float f3) {
            this.f21020a = f;
            this.f21021b = f2;
            this.f21022c = f3;
        }

        /* renamed from: a */
        public void m15778a(C9202e eVar) {
            m15779a(eVar.f21020a, eVar.f21021b, eVar.f21022c);
        }

        /* renamed from: a */
        public boolean m15780a() {
            return this.f21022c == Float.MAX_VALUE;
        }
    }

    @Nullable
    /* renamed from: a */
    C9202e mo15792a();

    /* renamed from: a */
    void mo15791a(@ColorInt int i);

    /* renamed from: a */
    void mo15790a(@Nullable Drawable drawable);

    /* renamed from: a */
    void mo15789a(@Nullable C9202e eVar);

    /* renamed from: b */
    void mo15788b();

    @ColorInt
    /* renamed from: c */
    int mo15787c();

    /* renamed from: d */
    void mo15786d();
}
