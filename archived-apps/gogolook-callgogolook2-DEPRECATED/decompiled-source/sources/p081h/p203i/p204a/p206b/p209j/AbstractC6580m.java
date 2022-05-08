package p081h.p203i.p204a.p206b.p209j;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import p081h.p203i.p204a.p206b.EnumC6495d;
import p081h.p203i.p204a.p206b.p209j.C6562c;
/* renamed from: h.i.a.b.j.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/m.class */
public abstract class AbstractC6580m {

    /* renamed from: h.i.a.b.j.m$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/m$a.class */
    public static abstract class AbstractC6581a {
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* renamed from: a */
        public abstract AbstractC6581a mo22290a(EnumC6495d dVar);

        /* renamed from: a */
        public abstract AbstractC6581a mo22289a(String str);

        /* renamed from: a */
        public abstract AbstractC6581a mo22288a(@Nullable byte[] bArr);

        /* renamed from: a */
        public abstract AbstractC6580m mo22291a();
    }

    /* renamed from: d */
    public static AbstractC6581a m22292d() {
        C6562c.C6564b bVar = new C6562c.C6564b();
        bVar.mo22290a(EnumC6495d.DEFAULT);
        return bVar;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: a */
    public AbstractC6580m m22295a(EnumC6495d dVar) {
        AbstractC6581a d = m22292d();
        d.mo22289a(mo22296a());
        d.mo22290a(dVar);
        d.mo22288a(mo22294b());
        return d.mo22291a();
    }

    /* renamed from: a */
    public abstract String mo22296a();

    @Nullable
    /* renamed from: b */
    public abstract byte[] mo22294b();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: c */
    public abstract EnumC6495d mo22293c();

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", mo22296a(), mo22293c(), mo22294b() == null ? "" : Base64.encodeToString(mo22294b(), 2));
    }
}
