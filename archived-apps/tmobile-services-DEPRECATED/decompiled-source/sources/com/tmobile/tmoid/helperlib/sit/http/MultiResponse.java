package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/MultiResponse.class */
public class MultiResponse extends BaseResponse {
    public static final Parcelable.Creator<MultiResponse> CREATOR = new Parcelable.Creator<MultiResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.http.MultiResponse.1
        /* renamed from: a */
        public MultiResponse createFromParcel(Parcel parcel) {
            return new MultiResponse(parcel);
        }

        /* renamed from: b */
        public MultiResponse[] newArray(int i) {
            return new MultiResponse[i];
        }
    };

    /* renamed from: f */
    private ArrayList<String> f14831f;

    /* renamed from: g */
    private Iterator<String> f14832g;

    public MultiResponse() {
        this.f14831f = null;
        this.f14832g = null;
    }

    public MultiResponse(Parcel parcel) {
        this.f14831f = null;
        this.f14832g = null;
        this.f14831f = parcel.createStringArrayList();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.BaseResponse
    /* renamed from: a */
    public String mo4885a() {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = this.f14831f.iterator();
        while (it.hasNext()) {
            try {
                jSONArray.put(new JSONObject(it.next()));
            } catch (JSONException e) {
            }
        }
        return jSONArray.length() == this.f14831f.size() ? jSONArray.toString() : null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public <T> T m4884b(Class<T> cls) {
        String next;
        if (this.f14832g == null) {
            this.f14832g = this.f14831f.iterator();
        }
        return (!this.f14832g.hasNext() || (next = this.f14832g.next()) == null) ? null : (T) new Gson().m8426i(next, cls);
    }

    /* renamed from: c */
    public void mo4881c(ArrayList<String> arrayList) {
        this.f14831f = arrayList;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.BaseResponse
    public String toString() {
        return mo4885a();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.f14831f);
    }
}
