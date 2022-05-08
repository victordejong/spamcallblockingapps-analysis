package org.spongycastle.asn1;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/DERSequenceParser.class */
public class DERSequenceParser implements ASN1SequenceParser {
    private ASN1StreamParser _parser;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERSequenceParser(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() throws IOException {
        return new DERSequence(this._parser.readVector());
    }

    @Override // org.spongycastle.asn1.ASN1SequenceParser
    public ASN1Encodable readObject() throws IOException {
        return this._parser.readObject();
    }

    @Override // org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
