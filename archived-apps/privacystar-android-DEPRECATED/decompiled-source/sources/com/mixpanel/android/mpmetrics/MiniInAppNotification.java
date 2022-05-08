package com.mixpanel.android.mpmetrics;

import android.os.Parcel;
import android.os.Parcelable;
import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.util.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MiniInAppNotification.class */
public class MiniInAppNotification extends InAppNotification {
    public static final Parcelable.Creator<MiniInAppNotification> CREATOR = new Parcelable.Creator<MiniInAppNotification>() { // from class: com.mixpanel.android.mpmetrics.MiniInAppNotification.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MiniInAppNotification createFromParcel(Parcel parcel) {
            return new MiniInAppNotification(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MiniInAppNotification[] newArray(int i) {
            return new MiniInAppNotification[i];
        }
    };
    private final int mBorderColor;
    private final String mCtaUrl;
    private final int mImageTintColor;

    public MiniInAppNotification(Parcel parcel) {
        super(parcel);
        this.mCtaUrl = parcel.readString();
        this.mImageTintColor = parcel.readInt();
        this.mBorderColor = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MiniInAppNotification(JSONObject jSONObject) throws BadDecideObjectException {
        super(jSONObject);
        try {
            this.mCtaUrl = JSONUtils.optionalStringKey(jSONObject, "cta_url");
            this.mImageTintColor = jSONObject.getInt("image_tint_color");
            this.mBorderColor = jSONObject.getInt("border_color");
        } catch (JSONException e) {
            throw new BadDecideObjectException("Notification JSON was unexpected or bad", e);
        }
    }

    public int getBorderColor() {
        return this.mBorderColor;
    }

    public String getCtaUrl() {
        return this.mCtaUrl;
    }

    public int getImageTintColor() {
        return this.mImageTintColor;
    }

    @Override // com.mixpanel.android.mpmetrics.InAppNotification
    public InAppNotification.Type getType() {
        return InAppNotification.Type.MINI;
    }

    @Override // com.mixpanel.android.mpmetrics.InAppNotification, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.mCtaUrl);
        parcel.writeInt(this.mImageTintColor);
        parcel.writeInt(this.mBorderColor);
    }
}
