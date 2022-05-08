package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new zae();

    /* renamed from: a */
    private final int f6663a;

    /* renamed from: b */
    private final Uri f6664b;

    /* renamed from: c */
    private final int f6665c;

    /* renamed from: d */
    private final int f6666d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebImage(int i, Uri uri, int i2, int i3) {
        this.f6663a = i;
        this.f6664b = uri;
        this.f6665c = i2;
        this.f6666d = i3;
    }

    public WebImage(Uri uri) {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int i2) {
        this(1, uri, i, i2);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }

    public WebImage(JSONObject jSONObject) {
        this(m5731a(jSONObject), jSONObject.optInt("width", 0), jSONObject.optInt("height", 0));
    }

    /* renamed from: a */
    private static Uri m5731a(JSONObject jSONObject) {
        Uri parse;
        if (jSONObject.has(ImagesContract.URL)) {
            try {
                parse = Uri.parse(jSONObject.getString(ImagesContract.URL));
            } catch (JSONException e) {
            }
            return parse;
        }
        parse = null;
        return parse;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return Objects.equal(this.f6664b, webImage.f6664b) && this.f6665c == webImage.f6665c && this.f6666d == webImage.f6666d;
    }

    public final int getHeight() {
        return this.f6666d;
    }

    public final Uri getUrl() {
        return this.f6664b;
    }

    public final int getWidth() {
        return this.f6665c;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f6664b, Integer.valueOf(this.f6665c), Integer.valueOf(this.f6666d));
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ImagesContract.URL, this.f6664b.toString());
            jSONObject.put("width", this.f6665c);
            jSONObject.put("height", this.f6666d);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f6665c), Integer.valueOf(this.f6666d), this.f6664b.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6663a);
        SafeParcelWriter.writeParcelable(parcel, 2, getUrl(), i, false);
        SafeParcelWriter.writeInt(parcel, 3, getWidth());
        SafeParcelWriter.writeInt(parcel, 4, getHeight());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
