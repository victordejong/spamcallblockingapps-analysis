package org.spongycastle.pkcs.jcajce;

import java.io.OutputStream;
import java.security.Provider;
import javax.crypto.Mac;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCS12PBEParams;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.PKCS12Key;
import org.spongycastle.jcajce.p028io.MacOutputStream;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.MacCalculator;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.pkcs.PKCS12MacCalculatorBuilder;
import org.spongycastle.pkcs.PKCS12MacCalculatorBuilderProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilderProvider.class */
public class JcePKCS12MacCalculatorBuilderProvider implements PKCS12MacCalculatorBuilderProvider {
    private JcaJceHelper helper = new DefaultJcaJceHelper();

    @Override // org.spongycastle.pkcs.PKCS12MacCalculatorBuilderProvider
    public PKCS12MacCalculatorBuilder get(final AlgorithmIdentifier algorithmIdentifier) {
        return new PKCS12MacCalculatorBuilder() { // from class: org.spongycastle.pkcs.jcajce.JcePKCS12MacCalculatorBuilderProvider.1
            @Override // org.spongycastle.pkcs.PKCS12MacCalculatorBuilder
            public MacCalculator build(char[] cArr) throws OperatorCreationException {
                final PKCS12PBEParams instance = PKCS12PBEParams.getInstance(algorithmIdentifier.getParameters());
                try {
                    final ASN1ObjectIdentifier algorithm = algorithmIdentifier.getAlgorithm();
                    final Mac createMac = JcePKCS12MacCalculatorBuilderProvider.this.helper.createMac(algorithm.getId());
                    PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(instance.getIV(), instance.getIterations().intValue());
                    final PKCS12Key pKCS12Key = new PKCS12Key(cArr);
                    createMac.init(pKCS12Key, pBEParameterSpec);
                    return new MacCalculator() { // from class: org.spongycastle.pkcs.jcajce.JcePKCS12MacCalculatorBuilderProvider.1.1
                        @Override // org.spongycastle.operator.MacCalculator
                        public AlgorithmIdentifier getAlgorithmIdentifier() {
                            return new AlgorithmIdentifier(algorithm, instance);
                        }

                        @Override // org.spongycastle.operator.MacCalculator
                        public GenericKey getKey() {
                            return new GenericKey(getAlgorithmIdentifier(), pKCS12Key.getEncoded());
                        }

                        @Override // org.spongycastle.operator.MacCalculator
                        public byte[] getMac() {
                            return createMac.doFinal();
                        }

                        @Override // org.spongycastle.operator.MacCalculator
                        public OutputStream getOutputStream() {
                            return new MacOutputStream(createMac);
                        }
                    };
                } catch (Exception e) {
                    throw new OperatorCreationException("unable to create MAC calculator: " + e.getMessage(), e);
                }
            }

            @Override // org.spongycastle.pkcs.PKCS12MacCalculatorBuilder
            public AlgorithmIdentifier getDigestAlgorithmIdentifier() {
                return new AlgorithmIdentifier(algorithmIdentifier.getAlgorithm(), DERNull.INSTANCE);
            }
        };
    }

    public JcePKCS12MacCalculatorBuilderProvider setProvider(String str) {
        this.helper = new NamedJcaJceHelper(str);
        return this;
    }

    public JcePKCS12MacCalculatorBuilderProvider setProvider(Provider provider) {
        this.helper = new ProviderJcaJceHelper(provider);
        return this;
    }
}
