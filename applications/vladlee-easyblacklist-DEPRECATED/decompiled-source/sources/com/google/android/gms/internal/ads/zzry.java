package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzry.class */
public final class zzry extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzry> CREATOR = new zzsb();

    /* renamed from: a */
    private final long f15445a;

    /* renamed from: b */
    private final String f15446b;

    /* renamed from: c */
    private final String f15447c;

    /* renamed from: d */
    private final String f15448d;

    /* renamed from: e */
    private final Bundle f15449e;
    public final String url;
    public final boolean zzbro;
    public long zzbrp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzry(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2) {
        this.url = str;
        this.f15445a = j;
        String str5 = "";
        this.f15446b = str2 == null ? "" : str2;
        this.f15447c = str3 == null ? "" : str3;
        this.f15448d = str4 != null ? str4 : str5;
        this.f15449e = bundle == null ? new Bundle() : bundle;
        this.zzbro = z;
        this.zzbrp = j2;
    }

    public static zzry zzby(String str) {
        return zzd(Uri.parse(str));
    }

    public static zzry zzd(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(62);
                sb.append("Expected 2 path parts for namespace and id, found :");
                sb.append(size);
                zzavs.zzez(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter(ImagesContract.URL);
            boolean equals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long parseLong = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            zzq.zzks();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzry(queryParameter, parseLong, host, str, str2, bundle, equals, 0L);
        } catch (NullPointerException | NumberFormatException e) {
            zzavs.zzd("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.url, false);
        SafeParcelWriter.writeLong(parcel, 3, this.f15445a);
        SafeParcelWriter.writeString(parcel, 4, this.f15446b, false);
        SafeParcelWriter.writeString(parcel, 5, this.f15447c, false);
        SafeParcelWriter.writeString(parcel, 6, this.f15448d, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.f15449e, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzbro);
        SafeParcelWriter.writeLong(parcel, 9, this.zzbrp);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
