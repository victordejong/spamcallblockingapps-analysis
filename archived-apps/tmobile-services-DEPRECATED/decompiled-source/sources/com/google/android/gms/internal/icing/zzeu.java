package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzeu.class */
public final class zzeu implements zzfx {

    /* renamed from: b */
    private static final zzfe f8024b = new zzex();

    /* renamed from: a */
    private final zzfe f8025a;

    public zzeu() {
        this(new zzew(zzdy.m13810a(), m13778c()));
    }

    private zzeu(zzfe zzfeVar) {
        zzeb.m13802e(zzfeVar, "messageInfoFactory");
        this.f8025a = zzfeVar;
    }

    /* renamed from: b */
    private static boolean m13779b(zzff zzffVar) {
        return zzffVar.mo13619a() == zzdx.zze.f8006i;
    }

    /* renamed from: c */
    private static zzfe m13778c() {
        try {
            return (zzfe) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f8024b;
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfx
    /* renamed from: a */
    public final <T> zzfu<T> mo13643a(Class<T> cls) {
        zzfw.m13693E(cls);
        zzff c = this.f8025a.mo13758c(cls);
        return c.mo13618b() ? zzdx.class.isAssignableFrom(cls) ? zzfk.m13744a(zzfw.m13646x(), zzdp.m13864b(), c.mo13617c()) : zzfk.m13744a(zzfw.m13653q(), zzdp.m13863c(), c.mo13617c()) : zzdx.class.isAssignableFrom(cls) ? m13779b(c) ? zzfl.m13735i(cls, c, zzfo.m13715b(), zzer.m13784d(), zzfw.m13646x(), zzdp.m13864b(), zzfc.m13766b()) : zzfl.m13735i(cls, c, zzfo.m13715b(), zzer.m13784d(), zzfw.m13646x(), null, zzfc.m13766b()) : m13779b(c) ? zzfl.m13735i(cls, c, zzfo.m13716a(), zzer.m13785c(), zzfw.m13653q(), zzdp.m13863c(), zzfc.m13767a()) : zzfl.m13735i(cls, c, zzfo.m13716a(), zzer.m13785c(), zzfw.m13652r(), null, zzfc.m13767a());
    }
}
