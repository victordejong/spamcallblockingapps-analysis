package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/CramerShoupPublicKeyParameters.class */
public class CramerShoupPublicKeyParameters extends CramerShoupKeyParameters {

    /* renamed from: c */
    private BigInteger f1390c;

    /* renamed from: d */
    private BigInteger f1391d;

    /* renamed from: h */
    private BigInteger f1392h;

    public CramerShoupPublicKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, cramerShoupParameters);
        this.f1390c = bigInteger;
        this.f1391d = bigInteger2;
        this.f1392h = bigInteger3;
    }

    @Override // org.spongycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPublicKeyParameters)) {
            return false;
        }
        CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) obj;
        boolean z = false;
        if (cramerShoupPublicKeyParameters.getC().equals(this.f1390c)) {
            z = false;
            if (cramerShoupPublicKeyParameters.getD().equals(this.f1391d)) {
                z = false;
                if (cramerShoupPublicKeyParameters.getH().equals(this.f1392h)) {
                    z = false;
                    if (super.equals(obj)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public BigInteger getC() {
        return this.f1390c;
    }

    public BigInteger getD() {
        return this.f1391d;
    }

    public BigInteger getH() {
        return this.f1392h;
    }

    @Override // org.spongycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return ((this.f1390c.hashCode() ^ this.f1391d.hashCode()) ^ this.f1392h.hashCode()) ^ super.hashCode();
    }
}
