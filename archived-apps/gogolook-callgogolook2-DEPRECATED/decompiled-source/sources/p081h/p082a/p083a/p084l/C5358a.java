package p081h.p082a.p083a.p084l;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
/* renamed from: h.a.a.l.a */
/* loaded from: classes-dex2jar.jar:h/a/a/l/a.class */
public class C5358a<T> {

    /* renamed from: i */
    public static final Interpolator f13375i = new LinearInterpolator();

    /* renamed from: a */
    public final C5341e f13376a;
    @Nullable

    /* renamed from: b */
    public final T f13377b;
    @Nullable

    /* renamed from: c */
    public final T f13378c;
    @Nullable

    /* renamed from: d */
    public final Interpolator f13379d;

    /* renamed from: e */
    public final float f13380e;
    @Nullable

    /* renamed from: f */
    public Float f13381f;

    /* renamed from: g */
    public float f13382g = Float.MIN_VALUE;

    /* renamed from: h */
    public float f13383h = Float.MIN_VALUE;

    /* renamed from: h.a.a.l.a$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/l/a$a.class */
    public static class C5359a {

        /* renamed from: a */
        public static SparseArrayCompat<WeakReference<Interpolator>> f13384a;

        /* renamed from: a */
        public static SparseArrayCompat<WeakReference<Interpolator>> m25563a() {
            if (f13384a == null) {
                f13384a = new SparseArrayCompat<>();
            }
            return f13384a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0130, code lost:
            if (r14 == null) goto L_0x0133;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static <T> p081h.p082a.p083a.p084l.C5358a<T> m25559a(org.json.JSONObject r9, p081h.p082a.p083a.C5341e r10, float r11, p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a<T> r12) {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p082a.p083a.p084l.C5358a.C5359a.m25559a(org.json.JSONObject, h.a.a.e, float, h.a.a.n.k.m$a):h.a.a.l.a");
        }

        @Nullable
        /* renamed from: a */
        public static WeakReference<Interpolator> m25562a(int i) {
            WeakReference<Interpolator> weakReference;
            synchronized (C5359a.class) {
                try {
                    weakReference = m25563a().get(i);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return weakReference;
        }

        /* renamed from: a */
        public static <T> List<C5358a<T>> m25560a(JSONArray jSONArray, C5341e eVar, float f, AbstractC5452m.AbstractC5453a<T> aVar) {
            int length = jSONArray.length();
            if (length == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < length; i++) {
                arrayList.add(m25559a(jSONArray.optJSONObject(i), eVar, f, aVar));
            }
            C5358a.m25567a(arrayList);
            return arrayList;
        }

        /* renamed from: a */
        public static void m25561a(int i, WeakReference<Interpolator> weakReference) {
            synchronized (C5359a.class) {
                try {
                    f13384a.put(i, weakReference);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public C5358a(C5341e eVar, @Nullable T t, @Nullable T t2, @Nullable Interpolator interpolator, float f, @Nullable Float f2) {
        this.f13376a = eVar;
        this.f13377b = t;
        this.f13378c = t2;
        this.f13379d = interpolator;
        this.f13380e = f;
        this.f13381f = f2;
    }

    /* renamed from: a */
    public static void m25567a(List<? extends C5358a<?>> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            i2++;
            ((C5358a) list.get(i2)).f13381f = Float.valueOf(((C5358a) list.get(i2)).f13380e);
        }
        C5358a aVar = (C5358a) list.get(i);
        if (aVar.f13377b == null) {
            list.remove(aVar);
        }
    }

    /* renamed from: a */
    public float m25569a() {
        if (this.f13383h == Float.MIN_VALUE) {
            if (this.f13381f == null) {
                this.f13383h = 1.0f;
            } else {
                this.f13383h = m25566b() + ((this.f13381f.floatValue() - this.f13380e) / this.f13376a.m25639e());
            }
        }
        return this.f13383h;
    }

    /* renamed from: a */
    public boolean m25568a(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        return f >= m25566b() && f <= m25569a();
    }

    /* renamed from: b */
    public float m25566b() {
        if (this.f13382g == Float.MIN_VALUE) {
            this.f13382g = (this.f13380e - ((float) this.f13376a.m25628n())) / this.f13376a.m25639e();
        }
        return this.f13382g;
    }

    /* renamed from: c */
    public boolean m25565c() {
        return this.f13379d == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f13377b + ", endValue=" + this.f13378c + ", startFrame=" + this.f13380e + ", endFrame=" + this.f13381f + ", interpolator=" + this.f13379d + '}';
    }
}
