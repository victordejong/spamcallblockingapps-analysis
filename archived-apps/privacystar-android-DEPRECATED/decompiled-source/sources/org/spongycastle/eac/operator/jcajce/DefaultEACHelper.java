package org.spongycastle.eac.operator.jcajce;

import java.security.NoSuchAlgorithmException;
import java.security.Signature;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/eac/operator/jcajce/DefaultEACHelper.class */
class DefaultEACHelper extends EACHelper {
    @Override // org.spongycastle.eac.operator.jcajce.EACHelper
    protected Signature createSignature(String str) throws NoSuchAlgorithmException {
        return Signature.getInstance(str);
    }
}
