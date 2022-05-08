package com.mixpanel.android.mpmetrics;

import android.os.Parcel;
import android.os.Parcelable;
import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.util.JSONUtils;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/TakeoverInAppNotification.class */
public class TakeoverInAppNotification extends InAppNotification {
    public static final Parcelable.Creator<TakeoverInAppNotification> CREATOR = new Parcelable.Creator<TakeoverInAppNotification>() { // from class: com.mixpanel.android.mpmetrics.TakeoverInAppNotification.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TakeoverInAppNotification createFromParcel(Parcel parcel) {
            return new TakeoverInAppNotification(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TakeoverInAppNotification[] newArray(int i) {
            return new TakeoverInAppNotification[i];
        }
    };
    private final ArrayList<InAppButton> mButtons;
    private final int mCloseButtonColor;
    private final boolean mShouldFadeImage;
    private final String mTitle;
    private final int mTitleColor;

    public TakeoverInAppNotification(Parcel parcel) {
        super(parcel);
        this.mButtons = parcel.createTypedArrayList(InAppButton.CREATOR);
        this.mCloseButtonColor = parcel.readInt();
        this.mTitle = parcel.readString();
        this.mTitleColor = parcel.readInt();
        this.mShouldFadeImage = parcel.readByte() != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TakeoverInAppNotification(JSONObject jSONObject) throws BadDecideObjectException {
        super(jSONObject);
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(InformationDialog.BUTTONS_KEY);
            this.mButtons = new ArrayList<>();
            for (int i = 0; i < jSONArray.length(); i++) {
                this.mButtons.add(new InAppButton((JSONObject) jSONArray.get(i)));
            }
            this.mCloseButtonColor = jSONObject.getInt("close_color");
            this.mTitle = JSONUtils.optionalStringKey(jSONObject, "title");
            this.mTitleColor = jSONObject.optInt("title_color");
            this.mShouldFadeImage = getExtras().getBoolean("image_fade");
        } catch (JSONException e) {
            throw new BadDecideObjectException("Notification JSON was unexpected or bad", e);
        }
    }

    public InAppButton getButton(int i) {
        return this.mButtons.size() > i ? this.mButtons.get(i) : null;
    }

    public int getCloseColor() {
        return this.mCloseButtonColor;
    }

    public int getNumButtons() {
        return this.mButtons.size();
    }

    public String getTitle() {
        return this.mTitle;
    }

    public int getTitleColor() {
        return this.mTitleColor;
    }

    @Override // com.mixpanel.android.mpmetrics.InAppNotification
    public InAppNotification.Type getType() {
        return InAppNotification.Type.TAKEOVER;
    }

    public boolean hasTitle() {
        return this.mTitle != null;
    }

    public boolean setShouldShowShadow() {
        return this.mShouldFadeImage;
    }

    @Override // com.mixpanel.android.mpmetrics.InAppNotification, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.mButtons);
        parcel.writeInt(this.mCloseButtonColor);
        parcel.writeString(this.mTitle);
        parcel.writeInt(this.mTitleColor);
        parcel.writeByte(this.mShouldFadeImage ? (byte) 1 : (byte) 0);
    }
}
