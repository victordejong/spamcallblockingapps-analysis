package com.nimbusds.jose.p042m;

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
class C1856c {
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
        } else if (!fVar.equals(f.m)) {
            throw new JOSEException(C1855a.m794b(fVar, d.c));
        } else {
            pSSParameterSpec = new PSSParameterSpec("SHA512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1);
            str = "SHA512withRSAandMGF1";
        }
        try {
            Signature signature = provider != null ? Signature.getInstance(str, provider) : Signature.getInstance(str);
            if (pSSParameterSpec != null) {
                try {
                    signature.setParameter(pSSParameterSpec);
                } catch (InvalidAlgorithmParameterException e) {
                    throw new JOSEException("Invalid RSASSA-PSS salt length parameter: " + e.getMessage(), e);
                }
            }
            return signature;
        } catch (NoSuchAlgorithmException e2) {
            throw new JOSEException("Unsupported RSASSA algorithm: " + e2.getMessage(), e2);
        }
    }
}
