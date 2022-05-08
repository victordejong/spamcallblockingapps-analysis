package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/ECBasisType.class */
public class ECBasisType {
    public static final short ec_basis_pentanomial = 2;
    public static final short ec_basis_trinomial = 1;

    public static boolean isValid(short s) {
        boolean z = true;
        if (s < 1 || s > 2) {
            z = false;
        }
        return z;
    }
}
