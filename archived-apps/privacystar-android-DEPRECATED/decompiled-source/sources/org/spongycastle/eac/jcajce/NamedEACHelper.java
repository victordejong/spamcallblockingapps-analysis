package org.spongycastle.eac.jcajce;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/eac/jcajce/NamedEACHelper.class */
class NamedEACHelper implements EACHelper {
    private final String providerName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NamedEACHelper(String str) {
        this.providerName = str;
    }

    @Override // org.spongycastle.eac.jcajce.EACHelper
    public KeyFactory createKeyFactory(String str) throws NoSuchProviderException, NoSuchAlgorithmException {
        return KeyFactory.getInstance(str, this.providerName);
    }
}
