package org.spongycastle.pkcs.p038bc;

import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCS12PBEParams;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.operator.MacCalculator;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.operator.p037bc.BcDigestProvider;
import org.spongycastle.pkcs.PKCS12MacCalculatorBuilder;
import org.spongycastle.pkcs.PKCS12MacCalculatorBuilderProvider;
/* renamed from: org.spongycastle.pkcs.bc.BcPKCS12MacCalculatorBuilderProvider */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/bc/BcPKCS12MacCalculatorBuilderProvider.class */
public class BcPKCS12MacCalculatorBuilderProvider implements PKCS12MacCalculatorBuilderProvider {
    private BcDigestProvider digestProvider;

    public BcPKCS12MacCalculatorBuilderProvider(BcDigestProvider bcDigestProvider) {
        this.digestProvider = bcDigestProvider;
    }

    @Override // org.spongycastle.pkcs.PKCS12MacCalculatorBuilderProvider
    public PKCS12MacCalculatorBuilder get(final AlgorithmIdentifier algorithmIdentifier) {
        return new PKCS12MacCalculatorBuilder() { // from class: org.spongycastle.pkcs.bc.BcPKCS12MacCalculatorBuilderProvider.1
            @Override // org.spongycastle.pkcs.PKCS12MacCalculatorBuilder
            public MacCalculator build(char[] cArr) throws OperatorCreationException {
                return PKCS12PBEUtils.createMacCalculator(algorithmIdentifier.getAlgorithm(), BcPKCS12MacCalculatorBuilderProvider.this.digestProvider.get(algorithmIdentifier), PKCS12PBEParams.getInstance(algorithmIdentifier.getParameters()), cArr);
            }

            @Override // org.spongycastle.pkcs.PKCS12MacCalculatorBuilder
            public AlgorithmIdentifier getDigestAlgorithmIdentifier() {
                return new AlgorithmIdentifier(algorithmIdentifier.getAlgorithm(), DERNull.INSTANCE);
            }
        };
    }
}
