package com.google.firebase.appindexing.builders;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appindexing.FirebaseAppIndexingInvalidArgumentException;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.Thing;
import com.google.firebase.appindexing.internal.zzu;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/IndexableBuilder.class */
public class IndexableBuilder<T extends IndexableBuilder<?>> {
    private final String type;
    private String url;
    private final Bundle zzaw = new Bundle();
    private Thing.zza zzcf;

    /* JADX INFO: Access modifiers changed from: protected */
    public IndexableBuilder(@NonNull String str) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotEmpty(str);
        this.type = str;
    }

    public static void zza(@NonNull Bundle bundle, @NonNull String str, @NonNull long... jArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(jArr);
        if (jArr.length > 0) {
            if (jArr.length >= 100) {
                zzu.zze("Input Array of elements is too big, cutting off.");
                jArr = Arrays.copyOf(jArr, 100);
            }
            bundle.putLongArray(str, jArr);
            return;
        }
        zzu.zze("Long array is empty and is ignored by put method.");
    }

    public static void zza(@NonNull Bundle bundle, @NonNull String str, @NonNull Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(indexableArr);
        Thing[] thingArr = new Thing[indexableArr.length];
        for (int i = 0; i < indexableArr.length; i++) {
            if (indexableArr[i] == null || (indexableArr[i] instanceof Thing)) {
                thingArr[i] = (Thing) indexableArr[i];
            } else {
                throw new FirebaseAppIndexingInvalidArgumentException("Invalid Indexable encountered. Use Indexable.Builder or convenience methods under Indexables to create the Indexable.");
            }
        }
        zza(bundle, str, thingArr);
    }

    private static void zza(@NonNull Bundle bundle, @NonNull String str, @NonNull Thing... thingArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(thingArr);
        if (thingArr.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < thingArr.length; i2++) {
                thingArr[i] = thingArr[i2];
                if (thingArr[i2] == null) {
                    StringBuilder sb = new StringBuilder(58);
                    sb.append("Thing at ");
                    sb.append(i2);
                    sb.append(" is null and is ignored by put method.");
                    zzu.zze(sb.toString());
                } else {
                    i++;
                }
            }
            if (i > 0) {
                bundle.putParcelableArray(str, (Parcelable[]) zza((Thing[]) Arrays.copyOfRange(thingArr, 0, i)));
                return;
            }
            return;
        }
        zzu.zze("Thing array is empty and is ignored by put method.");
    }

    public static void zza(@NonNull Bundle bundle, @NonNull String str, @NonNull String... strArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(strArr);
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        if (strArr2.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < Math.min(strArr2.length, 100); i2++) {
                strArr2[i] = strArr2[i2];
                if (strArr2[i2] == null) {
                    StringBuilder sb = new StringBuilder(59);
                    sb.append("String at ");
                    sb.append(i2);
                    sb.append(" is null and is ignored by put method.");
                    zzu.zze(sb.toString());
                } else {
                    if (strArr2[i].length() > 20000) {
                        StringBuilder sb2 = new StringBuilder(53);
                        sb2.append("String at ");
                        sb2.append(i2);
                        sb2.append(" is too long, truncating string.");
                        zzu.zze(sb2.toString());
                        String str2 = strArr2[i];
                        if (str2.length() > 20000) {
                            int i3 = 20000;
                            if (Character.isHighSurrogate(str2.charAt(19999))) {
                                i3 = 20000;
                                if (Character.isLowSurrogate(str2.charAt(Indexable.MAX_STRING_LENGTH))) {
                                    i3 = 19999;
                                }
                            }
                            str2 = str2.substring(0, i3);
                        }
                        strArr2[i] = str2;
                    }
                    i++;
                }
            }
            if (i > 0) {
                bundle.putStringArray(str, (String[]) zza((String[]) Arrays.copyOfRange(strArr2, 0, i)));
                return;
            }
            return;
        }
        zzu.zze("String array is empty and is ignored by put method.");
    }

    public static void zza(@NonNull Bundle bundle, @NonNull String str, @NonNull boolean... zArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zArr);
        if (zArr.length > 0) {
            if (zArr.length >= 100) {
                zzu.zze("Input Array of elements is too big, cutting off.");
                zArr = Arrays.copyOf(zArr, 100);
            }
            bundle.putBooleanArray(str, zArr);
            return;
        }
        zzu.zze("Boolean array is empty and is ignored by put method.");
    }

    private static <S> S[] zza(S[] sArr) {
        if (sArr.length < 100) {
            return sArr;
        }
        zzu.zze("Input Array of elements is too big, cutting off.");
        return (S[]) Arrays.copyOf(sArr, 100);
    }

    public final Indexable build() {
        return new Thing(new Bundle(this.zzaw), this.zzcf == null ? new Indexable.Metadata.Builder().zzi() : this.zzcf, this.url, this.type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T put(@NonNull String str, @NonNull long... jArr) {
        zza(this.zzaw, str, jArr);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T put(@NonNull String str, @NonNull Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
        zza(this.zzaw, str, indexableArr);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <S extends IndexableBuilder> T put(@NonNull String str, @NonNull S... sArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(sArr);
        if (sArr.length > 0) {
            Thing[] thingArr = new Thing[sArr.length];
            for (int i = 0; i < sArr.length; i++) {
                if (sArr[i] == null) {
                    StringBuilder sb = new StringBuilder(60);
                    sb.append("Builder at ");
                    sb.append(i);
                    sb.append(" is null and is ignored by put method.");
                    zzu.zze(sb.toString());
                } else {
                    thingArr[i] = (Thing) sArr[i].build();
                }
            }
            if (thingArr.length > 0) {
                zza(this.zzaw, str, thingArr);
                return this;
            }
        } else {
            zzu.zze("Builder array is empty and is ignored by put method.");
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T put(@NonNull String str, @NonNull String... strArr) {
        zza(this.zzaw, str, strArr);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T put(@NonNull String str, @NonNull boolean... zArr) {
        zza(this.zzaw, str, zArr);
        return this;
    }

    public final T setDescription(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return put(IABV3Helper.DESCRIPTION, str);
    }

    public final T setImage(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return put("image", str);
    }

    public final T setKeywords(@NonNull String... strArr) {
        return put("keywords", strArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T setMetadata(@NonNull Indexable.Metadata.Builder builder) {
        Preconditions.checkState(this.zzcf == null, "setMetadata may only be called once");
        Preconditions.checkNotNull(builder);
        this.zzcf = builder.zzi();
        return this;
    }

    public final T setName(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return put("name", str);
    }

    public final T setSameAs(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return put("sameAs", str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T setUrl(@NonNull String str) {
        Preconditions.checkNotNull(str);
        this.url = str;
        return this;
    }
}
