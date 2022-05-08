package org.spongycastle.pqc.jcajce.provider.xmss;

import java.io.IOException;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.XMSSMTKeyParams;
import org.spongycastle.pqc.asn1.XMSSPublicKey;
import org.spongycastle.pqc.crypto.xmss.XMSSMTParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSMTPublicKeyParameters;
import org.spongycastle.pqc.jcajce.interfaces.XMSSMTKey;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/provider/xmss/BCXMSSMTPublicKey.class */
public class BCXMSSMTPublicKey implements PublicKey, XMSSMTKey {
    private final XMSSMTPublicKeyParameters keyParams;
    private final ASN1ObjectIdentifier treeDigest;

    public BCXMSSMTPublicKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, XMSSMTPublicKeyParameters xMSSMTPublicKeyParameters) {
        this.treeDigest = aSN1ObjectIdentifier;
        this.keyParams = xMSSMTPublicKeyParameters;
    }

    public BCXMSSMTPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        XMSSMTKeyParams instance = XMSSMTKeyParams.getInstance(subjectPublicKeyInfo.getAlgorithm().getParameters());
        this.treeDigest = instance.getTreeDigest().getAlgorithm();
        XMSSPublicKey instance2 = XMSSPublicKey.getInstance(subjectPublicKeyInfo.parsePublicKey());
        this.keyParams = new XMSSMTPublicKeyParameters.Builder(new XMSSMTParameters(instance.getHeight(), instance.getLayers(), DigestUtil.getDigest(this.treeDigest))).withPublicSeed(instance2.getPublicSeed()).withRoot(instance2.getRoot()).build();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BCXMSSMTPublicKey)) {
            return false;
        }
        BCXMSSMTPublicKey bCXMSSMTPublicKey = (BCXMSSMTPublicKey) obj;
        if (!this.treeDigest.equals(bCXMSSMTPublicKey.treeDigest) || !Arrays.areEqual(this.keyParams.toByteArray(), bCXMSSMTPublicKey.keyParams.toByteArray())) {
            z = false;
        }
        return z;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSSMT";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.xmss_mt, new XMSSMTKeyParams(this.keyParams.getParameters().getHeight(), this.keyParams.getParameters().getLayers(), new AlgorithmIdentifier(this.treeDigest))), new XMSSPublicKey(this.keyParams.getPublicSeed(), this.keyParams.getRoot())).getEncoded();
        } catch (IOException e) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.spongycastle.pqc.jcajce.interfaces.XMSSMTKey
    public int getHeight() {
        return this.keyParams.getParameters().getHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CipherParameters getKeyParams() {
        return this.keyParams;
    }

    @Override // org.spongycastle.pqc.jcajce.interfaces.XMSSMTKey
    public int getLayers() {
        return this.keyParams.getParameters().getLayers();
    }

    @Override // org.spongycastle.pqc.jcajce.interfaces.XMSSMTKey
    public String getTreeDigest() {
        return DigestUtil.getXMSSDigestName(this.treeDigest);
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (Arrays.hashCode(this.keyParams.toByteArray()) * 37);
    }
}
