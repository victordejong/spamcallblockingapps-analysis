package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.util.encoders.Base64;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/x509/PEMUtil.class */
class PEMUtil {
    private final String _footer1;
    private final String _footer2;
    private final String _header1;
    private final String _header2;
    private final String _header3 = "-----BEGIN PKCS7-----";
    private final String _footer3 = "-----END PKCS7-----";

    /* JADX INFO: Access modifiers changed from: package-private */
    public PEMUtil(String str) {
        this._header1 = "-----BEGIN " + str + "-----";
        this._header2 = "-----BEGIN X509 " + str + "-----";
        this._footer1 = "-----END " + str + "-----";
        this._footer2 = "-----END X509 " + str + "-----";
    }

    private String readLine(InputStream inputStream) throws IOException {
        int read;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            read = inputStream.read();
            if (read != 13 && read != 10 && read >= 0) {
                stringBuffer.append((char) read);
            } else if (read < 0 || stringBuffer.length() != 0) {
                break;
            }
        }
        if (read < 0) {
            return null;
        }
        if (read == 13) {
            inputStream.mark(1);
            int read2 = inputStream.read();
            if (read2 == 10) {
                inputStream.mark(1);
            }
            if (read2 > 0) {
                inputStream.reset();
            }
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Sequence readPEMObject(InputStream inputStream) throws IOException {
        String readLine;
        StringBuffer stringBuffer = new StringBuffer();
        do {
            readLine = readLine(inputStream);
            if (readLine == null || readLine.startsWith(this._header1) || readLine.startsWith(this._header2)) {
                break;
            }
        } while (!readLine.startsWith(this._header3));
        while (true) {
            String readLine2 = readLine(inputStream);
            if (readLine2 == null || readLine2.startsWith(this._footer1) || readLine2.startsWith(this._footer2) || readLine2.startsWith(this._footer3)) {
                break;
            }
            stringBuffer.append(readLine2);
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        try {
            return ASN1Sequence.getInstance(Base64.decode(stringBuffer.toString()));
        } catch (Exception e) {
            throw new IOException("malformed PEM data encountered");
        }
    }
}
