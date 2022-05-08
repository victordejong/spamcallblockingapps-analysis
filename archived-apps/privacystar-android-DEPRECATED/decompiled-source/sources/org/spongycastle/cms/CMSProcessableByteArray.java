package org.spongycastle.cms;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cms.CMSObjectIdentifiers;
import org.spongycastle.util.Arrays;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSProcessableByteArray.class */
public class CMSProcessableByteArray implements CMSTypedData, CMSReadable {
    private final byte[] bytes;
    private final ASN1ObjectIdentifier type;

    public CMSProcessableByteArray(ASN1ObjectIdentifier aSN1ObjectIdentifier, byte[] bArr) {
        this.type = aSN1ObjectIdentifier;
        this.bytes = bArr;
    }

    public CMSProcessableByteArray(byte[] bArr) {
        this(new ASN1ObjectIdentifier(CMSObjectIdentifiers.data.getId()), bArr);
    }

    @Override // org.spongycastle.cms.CMSProcessable
    public Object getContent() {
        return Arrays.clone(this.bytes);
    }

    @Override // org.spongycastle.cms.CMSTypedData
    public ASN1ObjectIdentifier getContentType() {
        return this.type;
    }

    @Override // org.spongycastle.cms.CMSReadable
    public InputStream getInputStream() {
        return new ByteArrayInputStream(this.bytes);
    }

    @Override // org.spongycastle.cms.CMSProcessable
    public void write(OutputStream outputStream) throws IOException, CMSException {
        outputStream.write(this.bytes);
    }
}
