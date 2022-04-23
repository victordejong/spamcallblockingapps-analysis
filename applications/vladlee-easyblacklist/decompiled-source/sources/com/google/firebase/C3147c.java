package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
/* renamed from: com.google.firebase.c */
/* loaded from: classes-dex2jar.jar:com/google/firebase/c.class */
public final class C3147c {

    /* renamed from: a */
    private final String f18970a;

    /* renamed from: b */
    private final String f18971b;

    /* renamed from: c */
    private final String f18972c;

    /* renamed from: d */
    private final String f18973d;

    /* renamed from: e */
    private final String f18974e;

    /* renamed from: f */
    private final String f18975f;

    /* renamed from: g */
    private final String f18976g;

    private C3147c(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.f18971b = str;
        this.f18970a = str2;
        this.f18972c = str3;
        this.f18973d = str4;
        this.f18974e = str5;
        this.f18975f = str6;
        this.f18976g = str7;
    }

    /* renamed from: a */
    public static C3147c m641a(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new C3147c(string, stringResourceValueReader.getString("google_api_key"), stringResourceValueReader.getString("firebase_database_url"), stringResourceValueReader.getString("ga_trackingId"), stringResourceValueReader.getString("gcm_defaultSenderId"), stringResourceValueReader.getString("google_storage_bucket"), stringResourceValueReader.getString("project_id"));
    }

    /* renamed from: a */
    public final String m642a() {
        return this.f18971b;
    }

    /* renamed from: b */
    public final String m640b() {
        return this.f18974e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3147c)) {
            return false;
        }
        C3147c cVar = (C3147c) obj;
        return Objects.equal(this.f18971b, cVar.f18971b) && Objects.equal(this.f18970a, cVar.f18970a) && Objects.equal(this.f18972c, cVar.f18972c) && Objects.equal(this.f18973d, cVar.f18973d) && Objects.equal(this.f18974e, cVar.f18974e) && Objects.equal(this.f18975f, cVar.f18975f) && Objects.equal(this.f18976g, cVar.f18976g);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f18971b, this.f18970a, this.f18972c, this.f18973d, this.f18974e, this.f18975f, this.f18976g);
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("applicationId", this.f18971b).add("apiKey", this.f18970a).add("databaseUrl", this.f18972c).add("gcmSenderId", this.f18974e).add("storageBucket", this.f18975f).add("projectId", this.f18976g).toString();
    }
}
