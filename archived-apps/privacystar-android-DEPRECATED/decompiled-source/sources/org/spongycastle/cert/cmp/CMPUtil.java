package org.spongycastle.cert.cmp;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.DEROutputStream;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/cmp/CMPUtil.class */
class CMPUtil {
    CMPUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void derEncodeToStream(ASN1Encodable aSN1Encodable, OutputStream outputStream) {
        DEROutputStream dEROutputStream = new DEROutputStream(outputStream);
        try {
            dEROutputStream.writeObject(aSN1Encodable);
            dEROutputStream.close();
        } catch (IOException e) {
            throw new CMPRuntimeException("unable to DER encode object: " + e.getMessage(), e);
        }
    }
}
