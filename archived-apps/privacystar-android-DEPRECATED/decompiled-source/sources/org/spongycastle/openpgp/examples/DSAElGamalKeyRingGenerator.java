package org.spongycastle.openpgp.examples;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchProviderException;
import java.security.Security;
import java.security.SignatureException;
import java.util.Date;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPKeyRingGenerator;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPDigestCalculatorProviderBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPKeyPair;
import org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyEncryptorBuilder;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/DSAElGamalKeyRingGenerator.class */
public class DSAElGamalKeyRingGenerator {
    private static void exportKeyPair(OutputStream outputStream, OutputStream outputStream2, KeyPair keyPair, KeyPair keyPair2, String str, char[] cArr, boolean z) throws IOException, InvalidKeyException, NoSuchProviderException, SignatureException, PGPException {
        OutputStream outputStream3 = outputStream;
        if (z) {
            outputStream3 = new ArmoredOutputStream(outputStream);
        }
        JcaPGPKeyPair jcaPGPKeyPair = new JcaPGPKeyPair(17, keyPair, new Date());
        JcaPGPKeyPair jcaPGPKeyPair2 = new JcaPGPKeyPair(16, keyPair2, new Date());
        PGPDigestCalculator pGPDigestCalculator = new JcaPGPDigestCalculatorProviderBuilder().build().get(2);
        PGPKeyRingGenerator pGPKeyRingGenerator = new PGPKeyRingGenerator(19, jcaPGPKeyPair, str, pGPDigestCalculator, null, null, new JcaPGPContentSignerBuilder(jcaPGPKeyPair.getPublicKey().getAlgorithm(), 2), new JcePBESecretKeyEncryptorBuilder(9, pGPDigestCalculator).setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr));
        pGPKeyRingGenerator.addSubKey(jcaPGPKeyPair2);
        pGPKeyRingGenerator.generateSecretKeyRing().encode(outputStream3);
        outputStream3.close();
        OutputStream armoredOutputStream = z ? new ArmoredOutputStream(outputStream2) : outputStream2;
        pGPKeyRingGenerator.generatePublicKeyRing().encode(armoredOutputStream);
        armoredOutputStream.close();
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        if (strArr.length < 2) {
            System.out.println("DSAElGamalKeyRingGenerator [-a] identity passPhrase");
            System.exit(0);
        }
        KeyPairGenerator instance = KeyPairGenerator.getInstance("DSA", BouncyCastleProvider.PROVIDER_NAME);
        instance.initialize(1024);
        KeyPair generateKeyPair = instance.generateKeyPair();
        KeyPairGenerator instance2 = KeyPairGenerator.getInstance("ELGAMAL", BouncyCastleProvider.PROVIDER_NAME);
        instance2.initialize(new DHParameterSpec(new BigInteger("9494fec095f3b85ee286542b3836fc81a5dd0a0349b4c239dd38744d488cf8e31db8bcb7d33b41abb9e5a33cca9144b1cef332c94bf0573bf047a3aca98cdf3b", 16), new BigInteger("153d5d6172adb43045b68ae8e1de1070b6137005686d29d3d73a7749199681ee5b212c9b96bfdcfa5b20cd5e3fd2044895d609cf9b410b7a0f12ca1cb9a428cc", 16)));
        KeyPair generateKeyPair2 = instance2.generateKeyPair();
        if (strArr[0].equals("-a")) {
            if (strArr.length < 3) {
                System.out.println("DSAElGamalKeyRingGenerator [-a] identity passPhrase");
                System.exit(0);
            }
            exportKeyPair(new FileOutputStream("secret.asc"), new FileOutputStream("pub.asc"), generateKeyPair, generateKeyPair2, strArr[1], strArr[2].toCharArray(), true);
            return;
        }
        exportKeyPair(new FileOutputStream("secret.bpg"), new FileOutputStream("pub.bpg"), generateKeyPair, generateKeyPair2, strArr[0], strArr[1].toCharArray(), false);
    }
}
