package com.criteo.publisher.p032y.p033b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.p032y.p033b.C2169b;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.y.b.c */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/y/b/c.class */
public abstract class AbstractC2171c {
    @VisibleForTesting
    /* renamed from: a */
    public static AbstractC2171c m35534a(@NonNull String str, @Nullable Boolean bool, @NonNull Integer num) {
        return new C2169b(str, bool, num);
    }

    /* renamed from: a */
    public static TypeAdapter<AbstractC2171c> m35535a(Gson gson) {
        return new C2169b.C2170a(gson);
    }

    /* renamed from: a */
    public abstract String mo35536a();

    @Nullable
    /* renamed from: b */
    public abstract Boolean mo35533b();

    @NonNull
    /* renamed from: c */
    public JSONObject m35532c() throws JSONException {
        return new JSONObject(C1974i.m35912U().m35889t().m30988a(this));
    }

    /* renamed from: d */
    public abstract Integer mo35531d();
}
