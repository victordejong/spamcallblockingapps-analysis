package org.spongycastle.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/spec/UserKeyingMaterialSpec.class */
public class UserKeyingMaterialSpec implements AlgorithmParameterSpec {
    private final byte[] userKeyingMaterial;

    public UserKeyingMaterialSpec(byte[] bArr) {
        this.userKeyingMaterial = Arrays.clone(bArr);
    }

    public byte[] getUserKeyingMaterial() {
        return Arrays.clone(this.userKeyingMaterial);
    }
}
