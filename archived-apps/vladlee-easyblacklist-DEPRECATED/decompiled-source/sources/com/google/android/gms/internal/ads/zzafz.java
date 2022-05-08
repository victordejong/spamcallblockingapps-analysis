package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafz.class */
public final class zzafz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzafz> CREATOR = new zzagc();

    /* renamed from: a */
    private final String f10902a;

    /* renamed from: b */
    private final String[] f10903b;

    /* renamed from: c */
    private final String[] f10904c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafz(String str, String[] strArr, String[] strArr2) {
        this.f10902a = str;
        this.f10903b = strArr;
        this.f10904c = strArr2;
    }

    public static zzafz zzh(zzq<?> zzqVar) {
        Map<String, String> headers = zzqVar.getHeaders();
        int size = headers.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        return new zzafz(zzqVar.getUrl(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10902a, false);
        SafeParcelWriter.writeStringArray(parcel, 2, this.f10903b, false);
        SafeParcelWriter.writeStringArray(parcel, 3, this.f10904c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
