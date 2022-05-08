package p081h.p203i.p325c.p367v.p369r;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p325c.p367v.p369r.C9963b;
/* renamed from: h.i.c.v.r.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/r/f.class */
public abstract class AbstractC9971f {

    /* renamed from: h.i.c.v.r.f$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/r/f$a.class */
    public static abstract class AbstractC9972a {
        @NonNull
        /* renamed from: a */
        public abstract AbstractC9972a mo13792a(long j);

        @NonNull
        /* renamed from: a */
        public abstract AbstractC9972a mo13791a(@NonNull EnumC9973b bVar);

        @NonNull
        /* renamed from: a */
        public abstract AbstractC9972a mo13790a(@NonNull String str);

        @NonNull
        /* renamed from: a */
        public abstract AbstractC9971f mo13793a();
    }

    /* renamed from: h.i.c.v.r.f$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/r/f$b.class */
    public enum EnumC9973b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    @NonNull
    /* renamed from: d */
    public static AbstractC9972a m13794d() {
        C9963b.C9965b bVar = new C9963b.C9965b();
        bVar.mo13792a(0L);
        return bVar;
    }

    @Nullable
    /* renamed from: a */
    public abstract EnumC9973b mo13797a();

    @Nullable
    /* renamed from: b */
    public abstract String mo13796b();

    @NonNull
    /* renamed from: c */
    public abstract long mo13795c();
}
