package org.spongycastle.openpgp.examples;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Security;
import java.security.SignatureException;
import java.util.Iterator;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPCompressedData;
import org.spongycastle.openpgp.PGPCompressedDataGenerator;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPLiteralData;
import org.spongycastle.openpgp.PGPLiteralDataGenerator;
import org.spongycastle.openpgp.PGPOnePassSignature;
import org.spongycastle.openpgp.PGPOnePassSignatureList;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.PGPPublicKeyRingCollection;
import org.spongycastle.openpgp.PGPSecretKey;
import org.spongycastle.openpgp.PGPSignatureGenerator;
import org.spongycastle.openpgp.PGPSignatureList;
import org.spongycastle.openpgp.PGPSignatureSubpacketGenerator;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.jcajce.JcaPGPObjectFactory;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentVerifierBuilderProvider;
import org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyDecryptorBuilder;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/SignedFileProcessor.class */
public class SignedFileProcessor {
    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        if (strArr[0].equals("-s")) {
            if (strArr[1].equals("-a")) {
                FileInputStream fileInputStream = new FileInputStream(strArr[3]);
                signFile(strArr[2], fileInputStream, new FileOutputStream(strArr[2] + ".asc"), strArr[4].toCharArray(), true);
                return;
            }
            FileInputStream fileInputStream2 = new FileInputStream(strArr[2]);
            signFile(strArr[1], fileInputStream2, new FileOutputStream(strArr[1] + ".bpg"), strArr[3].toCharArray(), false);
        } else if (strArr[0].equals("-v")) {
            verifyFile(new FileInputStream(strArr[1]), new FileInputStream(strArr[2]));
        } else {
            System.err.println("usage: SignedFileProcessor -v|-s [-a] file keyfile [passPhrase]");
        }
    }

    private static void signFile(String str, InputStream inputStream, OutputStream outputStream, char[] cArr, boolean z) throws IOException, NoSuchAlgorithmException, NoSuchProviderException, PGPException, SignatureException {
        OutputStream outputStream2 = outputStream;
        if (z) {
            outputStream2 = new ArmoredOutputStream(outputStream);
        }
        PGPSecretKey readSecretKey = PGPExampleUtil.readSecretKey(inputStream);
        PGPPrivateKey extractPrivateKey = readSecretKey.extractPrivateKey(new JcePBESecretKeyDecryptorBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr));
        PGPSignatureGenerator pGPSignatureGenerator = new PGPSignatureGenerator(new JcaPGPContentSignerBuilder(readSecretKey.getPublicKey().getAlgorithm(), 2).setProvider(BouncyCastleProvider.PROVIDER_NAME));
        pGPSignatureGenerator.init(0, extractPrivateKey);
        Iterator userIDs = readSecretKey.getPublicKey().getUserIDs();
        if (userIDs.hasNext()) {
            PGPSignatureSubpacketGenerator pGPSignatureSubpacketGenerator = new PGPSignatureSubpacketGenerator();
            pGPSignatureSubpacketGenerator.setSignerUserID(false, (String) userIDs.next());
            pGPSignatureGenerator.setHashedSubpackets(pGPSignatureSubpacketGenerator.generate());
        }
        PGPCompressedDataGenerator pGPCompressedDataGenerator = new PGPCompressedDataGenerator(2);
        BCPGOutputStream bCPGOutputStream = new BCPGOutputStream(pGPCompressedDataGenerator.open(outputStream2));
        pGPSignatureGenerator.generateOnePassVersion(false).encode(bCPGOutputStream);
        File file = new File(str);
        PGPLiteralDataGenerator pGPLiteralDataGenerator = new PGPLiteralDataGenerator();
        OutputStream open = pGPLiteralDataGenerator.open(bCPGOutputStream, 'b', file);
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            int read = fileInputStream.read();
            if (read < 0) {
                break;
            }
            open.write(read);
            pGPSignatureGenerator.update((byte) read);
        }
        pGPLiteralDataGenerator.close();
        pGPSignatureGenerator.generate().encode(bCPGOutputStream);
        pGPCompressedDataGenerator.close();
        if (z) {
            outputStream2.close();
        }
    }

    private static void verifyFile(InputStream inputStream, InputStream inputStream2) throws Exception {
        JcaPGPObjectFactory jcaPGPObjectFactory = new JcaPGPObjectFactory(((PGPCompressedData) new JcaPGPObjectFactory(PGPUtil.getDecoderStream(inputStream)).nextObject()).getDataStream());
        PGPOnePassSignature pGPOnePassSignature = ((PGPOnePassSignatureList) jcaPGPObjectFactory.nextObject()).get(0);
        PGPLiteralData pGPLiteralData = (PGPLiteralData) jcaPGPObjectFactory.nextObject();
        InputStream inputStream3 = pGPLiteralData.getInputStream();
        PGPPublicKey publicKey = new PGPPublicKeyRingCollection(PGPUtil.getDecoderStream(inputStream2), new JcaKeyFingerprintCalculator()).getPublicKey(pGPOnePassSignature.getKeyID());
        FileOutputStream fileOutputStream = new FileOutputStream(pGPLiteralData.getFileName());
        pGPOnePassSignature.init(new JcaPGPContentVerifierBuilderProvider().setProvider(BouncyCastleProvider.PROVIDER_NAME), publicKey);
        while (true) {
            int read = inputStream3.read();
            if (read < 0) {
                break;
            }
            pGPOnePassSignature.update((byte) read);
            fileOutputStream.write(read);
        }
        fileOutputStream.close();
        if (pGPOnePassSignature.verify(((PGPSignatureList) jcaPGPObjectFactory.nextObject()).get(0))) {
            System.out.println("signature verified.");
        } else {
            System.out.println("signature verification failed.");
        }
    }
}
