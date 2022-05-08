package com.google.android.gms.internal.icing;

import com.privacystar.core.data.sqlite.p008db.messages.MessagesContract;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzec.class */
public final class zzec {
    private static final zzec zzkr = new zzec();
    private final zzeg zzks;
    private final ConcurrentMap<Class<?>, zzef<?>> zzkt = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.icing.zzeg] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzec() {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r2 = r1
            r2.<init>()
            r0.zzkt = r1
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0013:
            r0 = r7
            if (r0 > 0) goto L_0x0034
            r0 = 1
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = r0
            r2 = 0
            java.lang.String r3 = "com.google.protobuf.AndroidProto3SchemaFactory"
            r1[r2] = r3
            r1 = 0
            r0 = r0[r1]
            com.google.android.gms.internal.icing.zzeg r0 = zzk(r0)
            r8 = r0
            r0 = r8
            r6 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0034
            int r7 = r7 + 1
            r0 = r8
            r6 = r0
            goto L_0x0013
        L_0x0034:
            r0 = r6
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0042
            com.google.android.gms.internal.icing.zzdh r0 = new com.google.android.gms.internal.icing.zzdh
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x0042:
            r0 = r5
            r1 = r8
            r0.zzks = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzec.<init>():void");
    }

    public static zzec zzbz() {
        return zzkr;
    }

    private static zzeg zzk(String str) {
        try {
            return (zzeg) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    public final <T> zzef<T> zze(Class<T> cls) {
        zzcm.zza(cls, MessagesContract.MessagesEntry.COLUMN_MESSAGE_TYPE);
        zzef<?> zzefVar = this.zzkt.get(cls);
        zzef<T> zzefVar2 = (zzef<T>) zzefVar;
        if (zzefVar == null) {
            zzefVar2 = this.zzks.zzd(cls);
            zzcm.zza(cls, MessagesContract.MessagesEntry.COLUMN_MESSAGE_TYPE);
            zzcm.zza(zzefVar2, "schema");
            zzef<?> putIfAbsent = this.zzkt.putIfAbsent(cls, zzefVar2);
            if (putIfAbsent != null) {
                zzefVar2 = (zzef<T>) putIfAbsent;
            }
        }
        return zzefVar2;
    }

    public final <T> zzef<T> zzl(T t) {
        return zze(t.getClass());
    }
}
