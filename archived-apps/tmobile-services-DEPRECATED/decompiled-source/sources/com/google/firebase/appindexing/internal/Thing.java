package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.appindexing.Indexable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/Thing.class */
public final class Thing extends AbstractSafeParcelable implements ReflectedParcelable, Indexable {
    public static final Parcelable.Creator<Thing> CREATOR = new zzae();
    @SafeParcelable.Field
    private final String type;
    @SafeParcelable.Field
    private final Bundle zzay;
    @SafeParcelable.Field
    private final zza zzer;
    @SafeParcelable.Field
    private final int zzfv;
    @SafeParcelable.Field
    private final String zzfw;

    @SafeParcelable.Class
    @SafeParcelable.Reserved
    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/Thing$zza.class */
    public static final class zza extends AbstractSafeParcelable implements Indexable.Metadata {
        public static final Parcelable.Creator<zza> CREATOR = new zzw();
        @SafeParcelable.Field
        private final int score;
        @SafeParcelable.Field
        private final Bundle zzay;
        @SafeParcelable.Field
        private final boolean zzeo;
        @SafeParcelable.Field
        private final String zzep;

        @SafeParcelable.Constructor
        public zza(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) Bundle bundle) {
            this.zzeo = z;
            this.score = i;
            this.zzep = str;
            this.zzay = bundle == null ? new Bundle() : bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return Objects.m14537a(Boolean.valueOf(this.zzeo), Boolean.valueOf(zzaVar.zzeo)) && Objects.m14537a(Integer.valueOf(this.score), Integer.valueOf(zzaVar.score)) && Objects.m14537a(this.zzep, zzaVar.zzep) && Thing.zza(this.zzay, zzaVar.zzay);
        }

        public final int hashCode() {
            return Objects.m14536b(Boolean.valueOf(this.zzeo), Integer.valueOf(this.score), this.zzep, Integer.valueOf(Thing.zzb(this.zzay)));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("worksOffline: ");
            sb.append(this.zzeo);
            sb.append(", score: ");
            sb.append(this.score);
            if (!this.zzep.isEmpty()) {
                sb.append(", accountEmail: ");
                sb.append(this.zzep);
            }
            Bundle bundle = this.zzay;
            if (bundle != null && !bundle.isEmpty()) {
                sb.append(", Properties { ");
                Thing.zza(this.zzay, sb);
                sb.append("}");
            }
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int a = SafeParcelWriter.m14463a(parcel);
            SafeParcelWriter.m14461c(parcel, 1, this.zzeo);
            SafeParcelWriter.m14453k(parcel, 2, this.score);
            SafeParcelWriter.m14447q(parcel, 3, this.zzep, false);
            SafeParcelWriter.m14459e(parcel, 4, this.zzay, false);
            SafeParcelWriter.m14462b(parcel, a);
        }

        public final Bundle zze() {
            return this.zzay;
        }
    }

    @SafeParcelable.Constructor
    public Thing(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) Bundle bundle, @SafeParcelable.Param(id = 2) zza zzaVar, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2) {
        this.zzfv = i;
        this.zzay = bundle;
        this.zzer = zzaVar;
        this.zzfw = str;
        this.type = str2;
        bundle.setClassLoader(Thing.class.getClassLoader());
    }

    public Thing(@NonNull Bundle bundle, @NonNull zza zzaVar, String str, @NonNull String str2) {
        this.zzfv = 10;
        this.zzay = bundle;
        this.zzer = zzaVar;
        this.zzfw = str;
        this.type = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(@NonNull Bundle bundle, @NonNull StringBuilder sb) {
        try {
            Set<String> keySet = bundle.keySet();
            String[] strArr = (String[]) keySet.toArray(new String[keySet.size()]);
            Arrays.sort(strArr, zzac.zzfy);
            for (String str : strArr) {
                sb.append("{ key: '");
                sb.append(str);
                sb.append("' value: ");
                Object obj = bundle.get(str);
                if (obj == null) {
                    sb.append("<null>");
                } else if (obj.getClass().isArray()) {
                    sb.append("[ ");
                    for (int i = 0; i < Array.getLength(obj); i++) {
                        sb.append("'");
                        sb.append(Array.get(obj, i));
                        sb.append("' ");
                    }
                    sb.append("]");
                } else {
                    sb.append(obj.toString());
                }
                sb.append(" } ");
            }
        } catch (RuntimeException e) {
            sb.append("<error>");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zza(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !zza((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null && !(obj2 == null && bundle2.containsKey(str))) {
                return false;
            }
            if (obj instanceof boolean[]) {
                if (!(obj2 instanceof boolean[]) || !Arrays.equals((boolean[]) obj, (boolean[]) obj2)) {
                    return false;
                }
            } else if (obj instanceof long[]) {
                if (!(obj2 instanceof long[]) || !Arrays.equals((long[]) obj, (long[]) obj2)) {
                    return false;
                }
            } else if (obj instanceof double[]) {
                if (!(obj2 instanceof double[]) || !Arrays.equals((double[]) obj, (double[]) obj2)) {
                    return false;
                }
            } else if (obj instanceof byte[]) {
                if (!(obj2 instanceof byte[]) || !Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                    return false;
                }
            } else if ((obj instanceof Object[]) && (!(obj2 instanceof Object[]) || !Arrays.equals((Object[]) obj, (Object[]) obj2))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzb(Bundle bundle) {
        ArrayList arrayList = new ArrayList(bundle.keySet());
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Object obj2 = bundle.get((String) obj);
            if (obj2 instanceof boolean[]) {
                arrayList2.add(Integer.valueOf(Arrays.hashCode((boolean[]) obj2)));
            } else if (obj2 instanceof long[]) {
                arrayList2.add(Integer.valueOf(Arrays.hashCode((long[]) obj2)));
            } else if (obj2 instanceof double[]) {
                arrayList2.add(Integer.valueOf(Arrays.hashCode((double[]) obj2)));
            } else if (obj2 instanceof byte[]) {
                arrayList2.add(Integer.valueOf(Arrays.hashCode((byte[]) obj2)));
            } else if (obj2 instanceof Object[]) {
                arrayList2.add(Integer.valueOf(Arrays.hashCode((Object[]) obj2)));
            } else {
                arrayList2.add(Integer.valueOf(Objects.m14536b(obj2)));
            }
        }
        return Objects.m14536b(arrayList2.toArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int zzb(String str, String str2) {
        if (str == null) {
            return str2 == null ? 0 : -1;
        }
        if (str2 == null) {
            return 1;
        }
        return str.compareTo(str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Thing)) {
            return false;
        }
        Thing thing = (Thing) obj;
        return Objects.m14537a(Integer.valueOf(this.zzfv), Integer.valueOf(thing.zzfv)) && Objects.m14537a(this.zzfw, thing.zzfw) && Objects.m14537a(this.type, thing.type) && Objects.m14537a(this.zzer, thing.zzer) && zza(this.zzay, thing.zzay);
    }

    public final int hashCode() {
        return Objects.m14536b(Integer.valueOf(this.zzfv), this.zzfw, this.type, Integer.valueOf(this.zzer.hashCode()), Integer.valueOf(zzb(this.zzay)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.type.equals("Thing") ? "Indexable" : this.type);
        sb.append(" { { id: ");
        if (this.zzfw == null) {
            sb.append("<null>");
        } else {
            sb.append("'");
            sb.append(this.zzfw);
            sb.append("'");
        }
        sb.append(" } Properties { ");
        zza(this.zzay, sb);
        sb.append("} ");
        sb.append("Metadata { ");
        sb.append(this.zzer.toString());
        sb.append(" } ");
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14459e(parcel, 1, this.zzay, false);
        SafeParcelWriter.m14448p(parcel, 2, this.zzer, i, false);
        SafeParcelWriter.m14447q(parcel, 3, this.zzfw, false);
        SafeParcelWriter.m14447q(parcel, 4, this.type, false);
        SafeParcelWriter.m14453k(parcel, 1000, this.zzfv);
        SafeParcelWriter.m14462b(parcel, a);
    }

    public final zza zzac() {
        return this.zzer;
    }
}
