package com.nimbusds.jose.p012m;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.f;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Signature;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
/* renamed from: com.nimbusds.jose.m.c */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/m/c.class */
class C0194c {
    /* renamed from: a */
    protected static Signature m793a(f fVar, Provider provider) throws JOSEException {
        String str;
        PSSParameterSpec pSSParameterSpec = null;
        if (fVar.equals(f.h)) {
            str = "SHA256withRSA";
        } else if (fVar.equals(f.i)) {
            str = "SHA384withRSA";
        } else if (fVar.equals(f.j)) {
            str = "SHA512withRSA";
        } else if (fVar.equals(f.k)) {
            pSSParameterSpec = new PSSParameterSpec("SHA256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1);
            str = "SHA256withRSAandMGF1";
        } else if (fVar.equals(f.l)) {
            pSSParameterSpec = new PSSParameterSpec("SHA384", "MGF1", MGF1ParameterSpec.SHA384, 48, 1);
            str = "SHA384withRSAandMGF1";
        } else if (fVar.equals(f.m)) {
            pSSParameterSpec = new PSSParameterSpec("SHA512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1);
            str = "SHA512withRSAandMGF1";
        } else {
            throw new JOSEException(C0193a.m794b(fVar, d.c));
        }
        try {
            Signature instance = provider != null ? Signature.getInstance(str, provider) : Signature.getInstance(str);
            if (pSSParameterSpec != null) {
                try {
                    instance.setParameter(pSSParameterSpec);
                } catch (InvalidAlgorithmParameterException e) {
                    throw new JOSEException("Invalid RSASSA-PSS salt length parameter: " + e.getMessage(), e);
                }
            }
            return instance;
        } catch (NoSuchAlgorithmException e2) {
            throw new JOSEException("Unsupported RSASSA algorithm: " + e2.getMessage(), e2);
        }
    }
}
