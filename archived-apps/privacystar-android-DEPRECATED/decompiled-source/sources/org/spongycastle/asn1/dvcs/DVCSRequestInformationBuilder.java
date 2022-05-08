package org.spongycastle.asn1.dvcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.PolicyInformation;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder.class */
public class DVCSRequestInformationBuilder {
    private static final int DEFAULT_VERSION = 1;
    private static final int TAG_DATA_LOCATIONS = 3;
    private static final int TAG_DVCS = 2;
    private static final int TAG_EXTENSIONS = 4;
    private static final int TAG_REQUESTER = 0;
    private static final int TAG_REQUEST_POLICY = 1;
    private GeneralNames dataLocations;
    private GeneralNames dvcs;
    private Extensions extensions;
    private DVCSRequestInformation initialInfo;
    private BigInteger nonce;
    private PolicyInformation requestPolicy;
    private DVCSTime requestTime;
    private GeneralNames requester;
    private final ServiceType service;
    private int version;

    public DVCSRequestInformationBuilder(DVCSRequestInformation dVCSRequestInformation) {
        this.version = 1;
        this.initialInfo = dVCSRequestInformation;
        this.service = dVCSRequestInformation.getService();
        this.version = dVCSRequestInformation.getVersion();
        this.nonce = dVCSRequestInformation.getNonce();
        this.requestTime = dVCSRequestInformation.getRequestTime();
        this.requestPolicy = dVCSRequestInformation.getRequestPolicy();
        this.dvcs = dVCSRequestInformation.getDVCS();
        this.dataLocations = dVCSRequestInformation.getDataLocations();
    }

    public DVCSRequestInformationBuilder(ServiceType serviceType) {
        this.version = 1;
        this.service = serviceType;
    }

    public DVCSRequestInformation build() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.version != 1) {
            aSN1EncodableVector.add(new ASN1Integer(this.version));
        }
        aSN1EncodableVector.add(this.service);
        if (this.nonce != null) {
            aSN1EncodableVector.add(new ASN1Integer(this.nonce));
        }
        if (this.requestTime != null) {
            aSN1EncodableVector.add(this.requestTime);
        }
        int[] iArr = {0, 1, 2, 3, 4};
        GeneralNames generalNames = this.requester;
        PolicyInformation policyInformation = this.requestPolicy;
        GeneralNames generalNames2 = this.dvcs;
        GeneralNames generalNames3 = this.dataLocations;
        Extensions extensions = this.extensions;
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            ASN1Encodable aSN1Encodable = new ASN1Encodable[]{generalNames, policyInformation, generalNames2, generalNames3, extensions}[i];
            if (aSN1Encodable != null) {
                aSN1EncodableVector.add(new DERTaggedObject(false, i2, aSN1Encodable));
            }
        }
        return DVCSRequestInformation.getInstance(new DERSequence(aSN1EncodableVector));
    }

    public void setDVCS(GeneralName generalName) {
        setDVCS(new GeneralNames(generalName));
    }

    public void setDVCS(GeneralNames generalNames) {
        this.dvcs = generalNames;
    }

    public void setDataLocations(GeneralName generalName) {
        setDataLocations(new GeneralNames(generalName));
    }

    public void setDataLocations(GeneralNames generalNames) {
        this.dataLocations = generalNames;
    }

    public void setExtensions(Extensions extensions) {
        if (this.initialInfo != null) {
            throw new IllegalStateException("cannot change extensions in existing DVCSRequestInformation");
        }
        this.extensions = extensions;
    }

    public void setNonce(BigInteger bigInteger) {
        if (this.initialInfo != null) {
            if (this.initialInfo.getNonce() == null) {
                this.nonce = bigInteger;
            } else {
                byte[] byteArray = this.initialInfo.getNonce().toByteArray();
                byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(bigInteger);
                byte[] bArr = new byte[byteArray.length + asUnsignedByteArray.length];
                System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
                System.arraycopy(asUnsignedByteArray, 0, bArr, byteArray.length, asUnsignedByteArray.length);
                this.nonce = new BigInteger(bArr);
            }
        }
        this.nonce = bigInteger;
    }

    public void setRequestPolicy(PolicyInformation policyInformation) {
        if (this.initialInfo != null) {
            throw new IllegalStateException("cannot change request policy in existing DVCSRequestInformation");
        }
        this.requestPolicy = policyInformation;
    }

    public void setRequestTime(DVCSTime dVCSTime) {
        if (this.initialInfo != null) {
            throw new IllegalStateException("cannot change request time in existing DVCSRequestInformation");
        }
        this.requestTime = dVCSTime;
    }

    public void setRequester(GeneralName generalName) {
        setRequester(new GeneralNames(generalName));
    }

    public void setRequester(GeneralNames generalNames) {
        this.requester = generalNames;
    }

    public void setVersion(int i) {
        if (this.initialInfo != null) {
            throw new IllegalStateException("cannot change version in existing DVCSRequestInformation");
        }
        this.version = i;
    }
}
