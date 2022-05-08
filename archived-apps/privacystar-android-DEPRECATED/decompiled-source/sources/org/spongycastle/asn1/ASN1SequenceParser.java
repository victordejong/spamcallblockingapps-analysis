package org.spongycastle.asn1;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/ASN1SequenceParser.class */
public interface ASN1SequenceParser extends ASN1Encodable, InMemoryRepresentable {
    ASN1Encodable readObject() throws IOException;
}
