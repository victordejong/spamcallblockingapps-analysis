package com.flurry.sdk;

import com.flurry.sdk.C3368jz;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.jx */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jx.class */
public final class C3363jx<RequestObjectType, ResponseObjectType> extends C3368jz {

    /* renamed from: a */
    public AbstractC3365a<RequestObjectType, ResponseObjectType> f5751a;

    /* renamed from: b */
    public RequestObjectType f5752b;

    /* renamed from: c */
    public AbstractC3417kl<RequestObjectType> f5753c;

    /* renamed from: d */
    public AbstractC3417kl<ResponseObjectType> f5754d;

    /* renamed from: v */
    public ResponseObjectType f5755v;

    /* renamed from: com.flurry.sdk.jx$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jx$a.class */
    public interface AbstractC3365a<RequestObjectType, ResponseObjectType> {
        /* renamed from: a */
        void mo32321a(C3363jx<RequestObjectType, ResponseObjectType> jxVar, ResponseObjectType responseobjecttype);
    }

    /* renamed from: d */
    public static /* synthetic */ void m32588d(C3363jx jxVar) {
        if (jxVar.f5751a != null && !jxVar.m32575g()) {
            jxVar.f5751a.mo32321a(jxVar, jxVar.f5755v);
        }
    }

    @Override // com.flurry.sdk.C3368jz, com.flurry.sdk.AbstractRunnableC3447lc
    /* renamed from: a */
    public final void mo32300a() {
        this.f5771l = new C3368jz.AbstractC3373c() { // from class: com.flurry.sdk.jx.1
            @Override // com.flurry.sdk.C3368jz.AbstractC3373c
            /* renamed from: a */
            public final void mo32572a(C3368jz jzVar) {
                C3363jx.m32588d(C3363jx.this);
            }

            @Override // com.flurry.sdk.C3368jz.AbstractC3373c
            /* renamed from: a */
            public final void mo32571a(C3368jz jzVar, InputStream inputStream) throws Exception {
                if (jzVar.m32578d() && C3363jx.this.f5754d != null) {
                    C3363jx jxVar = C3363jx.this;
                    jxVar.f5755v = jxVar.f5754d.mo32526a(inputStream);
                }
            }

            @Override // com.flurry.sdk.C3368jz.AbstractC3373c
            /* renamed from: a */
            public final void mo32570a(OutputStream outputStream) throws Exception {
                if (C3363jx.this.f5752b != null && C3363jx.this.f5753c != null) {
                    C3363jx.this.f5753c.mo32525a(outputStream, C3363jx.this.f5752b);
                }
            }
        };
        super.mo32300a();
    }
}
