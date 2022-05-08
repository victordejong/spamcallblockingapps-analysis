package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.model.C2035j;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.model.x */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/x.class */
public abstract class AbstractC2053x {
    /* renamed from: a */
    public static AbstractC2053x m35785a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        return new C2035j(str, "gaid", IJSExecutor.JS_FUNCTION_GROUP, str2, str3, str4);
    }

    /* renamed from: a */
    public static TypeAdapter<AbstractC2053x> m35786a(Gson gson) {
        return new C2035j.C2036a(gson);
    }

    @Nullable
    /* renamed from: a */
    public abstract String mo35787a();

    @NonNull
    /* renamed from: b */
    public abstract String mo35784b();

    @NonNull
    /* renamed from: c */
    public abstract String mo35783c();

    @Nullable
    /* renamed from: d */
    public abstract String mo35782d();

    @NonNull
    /* renamed from: e */
    public JSONObject m35781e() throws JSONException {
        return new JSONObject(C1974i.m35912U().m35889t().m30988a(this));
    }

    @Nullable
    /* renamed from: f */
    public abstract String mo35780f();

    @Nullable
    /* renamed from: g */
    public abstract String mo35779g();
}
