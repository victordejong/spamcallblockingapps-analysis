package org.spongycastle.openpgp.examples;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.Security;
import java.util.Date;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPCompressedData;
import org.spongycastle.openpgp.PGPCompressedDataGenerator;
import org.spongycastle.openpgp.PGPEncryptedDataGenerator;
import org.spongycastle.openpgp.PGPEncryptedDataList;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPLiteralData;
import org.spongycastle.openpgp.PGPLiteralDataGenerator;
import org.spongycastle.openpgp.PGPPBEEncryptedData;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.jcajce.JcaPGPObjectFactory;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPDigestCalculatorProviderBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePBEDataDecryptorFactoryBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePBEKeyEncryptionMethodGenerator;
import org.spongycastle.openpgp.operator.jcajce.JcePGPDataEncryptorBuilder;
import org.spongycastle.util.encoders.Hex;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/ByteArrayHandler.class */
public class ByteArrayHandler {
    private static byte[] compress(byte[] bArr, String str, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PGPCompressedDataGenerator pGPCompressedDataGenerator = new PGPCompressedDataGenerator(i);
        OutputStream open = new PGPLiteralDataGenerator().open(pGPCompressedDataGenerator.open(byteArrayOutputStream), 'b', str, bArr.length, new Date());
        open.write(bArr);
        open.close();
        pGPCompressedDataGenerator.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] decrypt(byte[] bArr, char[] cArr) throws IOException, PGPException, NoSuchProviderException {
        JcaPGPObjectFactory jcaPGPObjectFactory = new JcaPGPObjectFactory(PGPUtil.getDecoderStream(new ByteArrayInputStream(bArr)));
        Object nextObject = jcaPGPObjectFactory.nextObject();
        return Streams.readAll(((PGPLiteralData) new JcaPGPObjectFactory(((PGPCompressedData) new JcaPGPObjectFactory(((PGPPBEEncryptedData) (nextObject instanceof PGPEncryptedDataList ? (PGPEncryptedDataList) nextObject : (PGPEncryptedDataList) jcaPGPObjectFactory.nextObject()).get(0)).getDataStream(new JcePBEDataDecryptorFactoryBuilder(new JcaPGPDigestCalculatorProviderBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build()).setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr))).nextObject()).getDataStream()).nextObject()).getInputStream());
    }

    public static byte[] encrypt(byte[] bArr, char[] cArr, String str, int i, boolean z) throws IOException, PGPException, NoSuchProviderException {
        String str2 = str;
        if (str == null) {
            str2 = "_CONSOLE";
        }
        byte[] compress = compress(bArr, str2, 1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStream armoredOutputStream = z ? new ArmoredOutputStream(byteArrayOutputStream) : byteArrayOutputStream;
        PGPEncryptedDataGenerator pGPEncryptedDataGenerator = new PGPEncryptedDataGenerator(new JcePGPDataEncryptorBuilder(i).setSecureRandom(new SecureRandom()).setProvider(BouncyCastleProvider.PROVIDER_NAME));
        pGPEncryptedDataGenerator.addMethod(new JcePBEKeyEncryptionMethodGenerator(cArr).setProvider(BouncyCastleProvider.PROVIDER_NAME));
        OutputStream open = pGPEncryptedDataGenerator.open(armoredOutputStream, compress.length);
        open.write(compress);
        open.close();
        if (z) {
            armoredOutputStream.close();
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        char[] charArray = "Dick Beck".toCharArray();
        byte[] bytes = "Hello world".getBytes();
        System.out.println("Starting PGP test");
        byte[] encrypt = encrypt(bytes, charArray, "iway", 3, true);
        PrintStream printStream = System.out;
        printStream.println("\nencrypted data = '" + new String(encrypt) + "'");
        byte[] decrypt = decrypt(encrypt, charArray);
        PrintStream printStream2 = System.out;
        printStream2.println("\ndecrypted data = '" + new String(decrypt) + "'");
        byte[] encrypt2 = encrypt(bytes, charArray, "iway", 9, false);
        PrintStream printStream3 = System.out;
        printStream3.println("\nencrypted data = '" + new String(Hex.encode(encrypt2)) + "'");
        byte[] decrypt2 = decrypt(encrypt2, charArray);
        PrintStream printStream4 = System.out;
        printStream4.println("\ndecrypted data = '" + new String(decrypt2) + "'");
    }
}
