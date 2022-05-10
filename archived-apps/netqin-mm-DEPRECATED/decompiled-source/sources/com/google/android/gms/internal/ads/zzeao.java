package com.google.android.gms.internal.ads;

import com.android.volley.Request;
import com.google.android.gms.internal.ads.zzefj;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import p131c.p161d.p170b.p224d.p252g.p253a.t20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeao.class */
public final class zzeao<P> {

    /* renamed from: d */
    public static final Charset f27973d = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: a */
    public ConcurrentMap<String, List<zzean<P>>> f27974a = new ConcurrentHashMap();

    /* renamed from: b */
    public zzean<P> f27975b;

    /* renamed from: c */
    public final Class<P> f27976c;

    public zzeao(Class<P> cls) {
        this.f27976c = cls;
    }

    /* renamed from: a */
    public static <P> zzeao<P> m12934a(Class<P> cls) {
        return new zzeao<>(cls);
    }

    /* renamed from: a */
    public final zzean<P> m12933a(P p, zzefj.zzb zzbVar) throws GeneralSecurityException {
        byte[] bArr;
        if (zzbVar.m12666m() == zzefc.ENABLED) {
            int i = t20.f15342a[zzbVar.m12665n().ordinal()];
            if (i == 1 || i == 2) {
                bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(zzbVar.m12662q()).array();
            } else if (i == 3) {
                bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(zzbVar.m12662q()).array();
            } else if (i == 4) {
                bArr = zzdzx.f27959a;
            } else {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            zzean<P> zzeanVar = new zzean<>(p, bArr, zzbVar.m12666m(), zzbVar.m12665n(), zzbVar.m12662q());
            ArrayList arrayList = new ArrayList();
            arrayList.add(zzeanVar);
            String str = new String(zzeanVar.m12937d(), f27973d);
            List<zzean<P>> put = this.f27974a.put(str, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(zzeanVar);
                this.f27974a.put(str, Collections.unmodifiableList(arrayList2));
            }
            return zzeanVar;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }

    /* renamed from: a */
    public final Class<P> m12936a() {
        return this.f27976c;
    }

    /* renamed from: a */
    public final void m12935a(zzean<P> zzeanVar) {
        if (zzeanVar == null) {
            throw new IllegalArgumentException("the primary entry must be non-null");
        } else if (zzeanVar.m12939b() == zzefc.ENABLED) {
            List<zzean<P>> list = this.f27974a.get(new String(zzeanVar.m12937d(), f27973d));
            if (list == null) {
                list = Collections.emptyList();
            }
            if (!list.isEmpty()) {
                this.f27975b = zzeanVar;
                return;
            }
            throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
        } else {
            throw new IllegalArgumentException("the primary entry has to be ENABLED");
        }
    }

    /* renamed from: b */
    public final zzean<P> m12932b() {
        return this.f27975b;
    }
}
