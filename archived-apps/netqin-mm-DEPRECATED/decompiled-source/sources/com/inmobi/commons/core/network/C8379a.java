package com.inmobi.commons.core.network;

import com.inmobi.commons.core.network.NetworkError;
/* renamed from: com.inmobi.commons.core.network.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/a.class */
public final class C8379a {

    /* renamed from: a */
    public static final String f32591a = "a";

    /* renamed from: b */
    public C8383c f32592b;

    /* renamed from: c */
    public AbstractC8381a f32593c;

    /* renamed from: com.inmobi.commons.core.network.a$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/a$a.class */
    public interface AbstractC8381a {
        /* renamed from: a */
        void mo5500a(C8384d dVar);

        /* renamed from: b */
        void mo5499b(C8384d dVar);
    }

    public C8379a(C8383c cVar, AbstractC8381a aVar) {
        this.f32592b = cVar;
        this.f32593c = aVar;
    }

    /* renamed from: a */
    public final void m5752a() {
        new Thread(new Runnable() { // from class: com.inmobi.commons.core.network.a.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C8384d a = new C8382b(C8379a.this.f32592b).mo5727a();
                    if (a.m5733a()) {
                        C8379a.this.f32593c.mo5499b(a);
                    } else {
                        C8379a.this.f32593c.mo5500a(a);
                    }
                } catch (Exception e) {
                    String unused = C8379a.f32591a;
                    new StringBuilder("Network request failed with unexpected error: ").append(e.getMessage());
                    NetworkError networkError = new NetworkError(NetworkError.ErrorCode.UNKNOWN_ERROR, "Network request failed with unknown error");
                    C8384d dVar = new C8384d();
                    dVar.f32624b = networkError;
                    C8379a.this.f32593c.mo5499b(dVar);
                }
            }
        }).start();
    }
}
