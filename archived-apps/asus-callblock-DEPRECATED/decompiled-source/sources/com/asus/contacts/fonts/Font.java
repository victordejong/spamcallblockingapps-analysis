package com.asus.contacts.fonts;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.contacts.activities.ContactDetailCallogActivity;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/Font.class */
public class Font implements Parcelable, Comparable<Font> {
    public static final Parcelable.Creator<Font> CREATOR = new Parcelable.Creator<Font>() { // from class: com.asus.contacts.fonts.Font.1
        private static Font a(Parcel parcel) {
            Font font;
            try {
                font = new Font(parcel);
            } catch (JSONException e) {
                font = null;
            }
            return font;
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Font createFromParcel(Parcel parcel) {
            return a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Font[] newArray(int i) {
            return new Font[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    String f2630a;

    /* renamed from: b  reason: collision with root package name */
    String f2631b;
    String c;
    String d;
    boolean e;
    private int f;

    public Font(Parcel parcel) {
        this(parcel.readString());
    }

    public Font(String str) {
        JSONObject jSONObject = new JSONObject(str);
        this.f2630a = jSONObject.getString("pkg");
        this.f2631b = jSONObject.getString("file");
        this.c = jSONObject.getString(ContactDetailCallogActivity.EXTRA_NAME);
        this.e = jSONObject.getBoolean("read");
        this.f = jSONObject.getInt("rank");
        this.d = jSONObject.getString("label");
    }

    public Font(String str, String str2, String str3, String str4, boolean z, int i) {
        this.f2630a = str;
        this.f2631b = str2;
        this.c = str3;
        this.e = z;
        this.f = i;
        this.d = str4;
    }

    private JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pkg", this.f2630a);
            jSONObject.put("file", this.f2631b);
            jSONObject.put(ContactDetailCallogActivity.EXTRA_NAME, this.c);
            jSONObject.put("read", this.e);
            jSONObject.put("rank", this.f);
            jSONObject.put("label", this.d);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Font font) {
        return Integer.compare(this.f, font.f);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return a().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(toString());
    }
}
