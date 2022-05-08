package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.appindexing.Indexable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Set;
@SafeParcelable.Class(creator = "ThingCreator")
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/Thing.class */
public final class Thing extends AbstractSafeParcelable implements ReflectedParcelable, Indexable {
    public static final Parcelable.Creator<Thing> CREATOR = new zzaa();
    @SafeParcelable.Field(getter = "getType", m344id = 4)
    private final String type;
    @SafeParcelable.Field(getter = "getPropertyBundle", m344id = 1)
    private final Bundle zzaw;
    @SafeParcelable.Field(getter = "getMetadata", m344id = 2)
    private final zza zzcf;
    @SafeParcelable.Field(getter = "getVersionCode", m344id = 1000)
    private final int zzdf;
    @SafeParcelable.Field(getter = "getUrl", m344id = 3)
    private final String zzdg;

    @SafeParcelable.Class(creator = "MetadataCreator")
    @SafeParcelable.Reserved({1000})
    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/Thing$zza.class */
    public static final class zza extends AbstractSafeParcelable implements Indexable.Metadata {
        public static final Parcelable.Creator<zza> CREATOR = new zzv();
        @SafeParcelable.Field(getter = "getScore", m344id = 2)
        private final int score;
        @SafeParcelable.Field(getter = "getPropertyBundle", m344id = 4)
        private final Bundle zzaw;
        @SafeParcelable.Field(getter = "getWorksOffline", m344id = 1)
        private final boolean zzcd;
        @SafeParcelable.Field(getter = "getAccountEmail", m344id = 3)
        private final String zzce;

        @SafeParcelable.Constructor
        public zza(@SafeParcelable.Param(m343id = 1) boolean z, @SafeParcelable.Param(m343id = 2) int i, @SafeParcelable.Param(m343id = 3) String str, @SafeParcelable.Param(m343id = 4) Bundle bundle) {
            this.zzcd = z;
            this.score = i;
            this.zzce = str;
            this.zzaw = bundle == null ? new Bundle() : bundle;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("worksOffline: ");
            sb.append(this.zzcd);
            sb.append(", score: ");
            sb.append(this.score);
            if (!this.zzce.isEmpty()) {
                sb.append(", accountEmail: ");
                sb.append(this.zzce);
            }
            if (this.zzaw != null && !this.zzaw.isEmpty()) {
                sb.append(", Properties { ");
                Thing.zza(this.zzaw, sb);
                sb.append("}");
            }
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, this.zzcd);
            SafeParcelWriter.writeInt(parcel, 2, this.score);
            SafeParcelWriter.writeString(parcel, 3, this.zzce, false);
            SafeParcelWriter.writeBundle(parcel, 4, this.zzaw, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }

        public final Bundle zzd() {
            return this.zzaw;
        }
    }

    @SafeParcelable.Constructor
    public Thing(@SafeParcelable.Param(m343id = 1000) int i, @SafeParcelable.Param(m343id = 1) Bundle bundle, @SafeParcelable.Param(m343id = 2) zza zzaVar, @SafeParcelable.Param(m343id = 3) String str, @SafeParcelable.Param(m343id = 4) String str2) {
        this.zzdf = i;
        this.zzaw = bundle;
        this.zzcf = zzaVar;
        this.zzdg = str;
        this.type = str2;
        this.zzaw.setClassLoader(getClass().getClassLoader());
    }

    public Thing(@NonNull Bundle bundle, @NonNull zza zzaVar, String str, @NonNull String str2) {
        this.zzdf = 10;
        this.zzaw = bundle;
        this.zzcf = zzaVar;
        this.zzdg = str;
        this.type = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(@NonNull Bundle bundle, @NonNull StringBuilder sb) {
        String obj;
        try {
            Set<String> keySet = bundle.keySet();
            String[] strArr = (String[]) keySet.toArray(new String[keySet.size()]);
            Arrays.sort(strArr, zzz.zzdh);
            for (String str : strArr) {
                sb.append("{ key: '");
                sb.append(str);
                sb.append("' value: ");
                Object obj2 = bundle.get(str);
                if (obj2 == null) {
                    obj = "<null>";
                } else if (obj2.getClass().isArray()) {
                    sb.append("[ ");
                    for (int i = 0; i < Array.getLength(obj2); i++) {
                        sb.append("'");
                        sb.append(Array.get(obj2, i));
                        sb.append("' ");
                    }
                    obj = "]";
                } else {
                    obj = obj2.toString();
                }
                sb.append(obj);
                sb.append(" } ");
            }
        } catch (RuntimeException e) {
            sb.append("<error>");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int zzc(String str, String str2) {
        if (str == null) {
            return str2 == null ? 0 : -1;
        }
        if (str2 == null) {
            return 1;
        }
        return str.compareTo(str2);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.type.equals("Thing") ? "Indexable" : this.type);
        sb.append(" { { id: ");
        if (this.zzdg == null) {
            str = "<null>";
        } else {
            sb.append("'");
            sb.append(this.zzdg);
            str = "'";
        }
        sb.append(str);
        sb.append(" } Properties { ");
        zza(this.zzaw, sb);
        sb.append("} ");
        sb.append("Metadata { ");
        sb.append(this.zzcf.toString());
        sb.append(" } ");
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.zzaw, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzcf, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzdg, false);
        SafeParcelWriter.writeString(parcel, 4, this.type, false);
        SafeParcelWriter.writeInt(parcel, 1000, this.zzdf);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zza zzk() {
        return this.zzcf;
    }
}
