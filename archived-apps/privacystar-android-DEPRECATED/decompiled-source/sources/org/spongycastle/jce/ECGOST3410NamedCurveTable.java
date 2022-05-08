package org.spongycastle.jce;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/ECGOST3410NamedCurveTable.class */
public class ECGOST3410NamedCurveTable {
    public static Enumeration getNames() {
        return ECGOST3410NamedCurves.getNames();
    }

    public static ECNamedCurveParameterSpec getParameterSpec(String str) {
        ECDomainParameters byName = ECGOST3410NamedCurves.getByName(str);
        ECDomainParameters eCDomainParameters = byName;
        if (byName == null) {
            try {
                eCDomainParameters = ECGOST3410NamedCurves.getByOID(new ASN1ObjectIdentifier(str));
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
        if (eCDomainParameters == null) {
            return null;
        }
        return new ECNamedCurveParameterSpec(str, eCDomainParameters.getCurve(), eCDomainParameters.getG(), eCDomainParameters.getN(), eCDomainParameters.getH(), eCDomainParameters.getSeed());
    }
}
