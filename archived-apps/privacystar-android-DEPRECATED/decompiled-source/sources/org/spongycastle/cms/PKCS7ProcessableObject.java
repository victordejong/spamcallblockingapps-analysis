package org.spongycastle.cms;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/PKCS7ProcessableObject.class */
public class PKCS7ProcessableObject implements CMSTypedData {
    private final ASN1Encodable structure;
    private final ASN1ObjectIdentifier type;

    public PKCS7ProcessableObject(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.type = aSN1ObjectIdentifier;
        this.structure = aSN1Encodable;
    }

    @Override // org.spongycastle.cms.CMSProcessable
    public Object getContent() {
        return this.structure;
    }

    @Override // org.spongycastle.cms.CMSTypedData
    public ASN1ObjectIdentifier getContentType() {
        return this.type;
    }

    @Override // org.spongycastle.cms.CMSProcessable
    public void write(OutputStream outputStream) throws IOException, CMSException {
        if (this.structure instanceof ASN1Sequence) {
            Iterator<ASN1Encodable> it = ASN1Sequence.getInstance(this.structure).iterator();
            while (it.hasNext()) {
                outputStream.write(it.next().toASN1Primitive().getEncoded(ASN1Encoding.DER));
            }
            return;
        }
        byte[] encoded = this.structure.toASN1Primitive().getEncoded(ASN1Encoding.DER);
        int i = 1;
        while ((encoded[i] & 255) > 127) {
            i++;
        }
        int i2 = i + 1;
        outputStream.write(encoded, i2, encoded.length - i2);
    }
}
