package org.spongycastle.tsp.cms;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.asn1.BEROctetString;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.cms.CMSObjectIdentifiers;
import org.spongycastle.asn1.cms.ContentInfo;
import org.spongycastle.asn1.cms.Evidence;
import org.spongycastle.asn1.cms.TimeStampAndCRL;
import org.spongycastle.asn1.cms.TimeStampTokenEvidence;
import org.spongycastle.asn1.cms.TimeStampedData;
import org.spongycastle.cms.CMSException;
import org.spongycastle.tsp.TimeStampToken;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/tsp/cms/CMSTimeStampedDataGenerator.class */
public class CMSTimeStampedDataGenerator extends CMSTimeStampedGenerator {
    public CMSTimeStampedData generate(TimeStampToken timeStampToken) throws CMSException {
        return generate(timeStampToken, (InputStream) null);
    }

    public CMSTimeStampedData generate(TimeStampToken timeStampToken, InputStream inputStream) throws CMSException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (inputStream != null) {
            try {
                Streams.pipeAll(inputStream, byteArrayOutputStream);
            } catch (IOException e) {
                throw new CMSException("exception encapsulating content: " + e.getMessage(), e);
            }
        }
        DERIA5String dERIA5String = null;
        BEROctetString bEROctetString = byteArrayOutputStream.size() != 0 ? new BEROctetString(byteArrayOutputStream.toByteArray()) : null;
        TimeStampAndCRL timeStampAndCRL = new TimeStampAndCRL(timeStampToken.toCMSSignedData().toASN1Structure());
        if (this.dataUri != null) {
            dERIA5String = new DERIA5String(this.dataUri.toString());
        }
        return new CMSTimeStampedData(new ContentInfo(CMSObjectIdentifiers.timestampedData, new TimeStampedData(dERIA5String, this.metaData, bEROctetString, new Evidence(new TimeStampTokenEvidence(timeStampAndCRL)))));
    }

    public CMSTimeStampedData generate(TimeStampToken timeStampToken, byte[] bArr) throws CMSException {
        return generate(timeStampToken, new ByteArrayInputStream(bArr));
    }
}
