package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.nb;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.a3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/a3.class */
public final class C1001a3<P> {

    /* renamed from: a */
    private final ConcurrentMap<C1274z2, List<C1260y2<P>>> f3650a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Class<P> f3651b;

    private C1001a3(Class<P> cls) {
        this.f3651b = cls;
    }

    /* renamed from: b */
    public static <P> C1001a3<P> m3034b(Class<P> cls) {
        return new C1001a3<>(cls);
    }

    /* renamed from: a */
    public final List<C1260y2<P>> m3035a(byte[] bArr) {
        List<C1260y2<P>> list = this.f3650a.get(new C1274z2(bArr, null));
        return list != null ? list : Collections.emptyList();
    }

    /* renamed from: c */
    public final void m3033c(C1260y2<P> c1260y2) {
        if (c1260y2.m2320b() == ia.zzb) {
            if (m3035a(c1260y2.m2318d()).isEmpty()) {
                throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
            }
            return;
        }
        throw new IllegalArgumentException("the primary entry has to be ENABLED");
    }

    /* renamed from: d */
    public final C1260y2<P> m3032d(P p, sa saVar) throws GeneralSecurityException {
        byte[] bArr;
        if (saVar.A() == ia.zzb) {
            nb nbVar = nb.zza;
            int ordinal = saVar.C().ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        bArr = C1052f2.f3701a;
                    } else if (ordinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                }
                bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(saVar.B()).array();
            } else {
                bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(saVar.B()).array();
            }
            C1260y2<P> c1260y2 = new C1260y2<>(p, bArr, saVar.A(), saVar.C(), saVar.B());
            ArrayList arrayList = new ArrayList();
            arrayList.add(c1260y2);
            C1274z2 c1274z2 = new C1274z2(c1260y2.m2318d(), null);
            List<C1260y2<P>> put = this.f3650a.put(c1274z2, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(c1260y2);
                this.f3650a.put(c1274z2, Collections.unmodifiableList(arrayList2));
            }
            return c1260y2;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }

    /* renamed from: e */
    public final Class<P> m3031e() {
        return this.f3651b;
    }
}
