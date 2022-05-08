package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import com.criteo.publisher.model.p021z.C2070k;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.net.URI;
import java.net.URL;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.z.q */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/q.class */
public abstract class AbstractC2079q {
    /* renamed from: a */
    public static TypeAdapter<AbstractC2079q> m35729a(Gson gson) {
        return new C2070k.C2071a(gson);
    }

    @NonNull
    @AbstractC10120c("optoutClickUrl")
    /* renamed from: a */
    public abstract URI mo35730a();

    @NonNull
    @AbstractC10120c("optoutImageUrl")
    /* renamed from: b */
    public abstract URL mo35728b();

    @NonNull
    @AbstractC10120c("longLegalText")
    /* renamed from: c */
    public abstract String mo35727c();
}
