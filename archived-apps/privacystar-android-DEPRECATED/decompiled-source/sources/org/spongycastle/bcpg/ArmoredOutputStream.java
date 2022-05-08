package org.spongycastle.bcpg;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import org.apache.commons.p018io.IOUtils;
import org.spongycastle.util.Strings;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/ArmoredOutputStream.class */
public class ArmoredOutputStream extends OutputStream {
    private static final byte[] encodingTable = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    int[] buf;
    int bufPtr;
    int chunkCount;
    boolean clearText;
    CRC24 crc;
    String footerStart;
    String footerTail;
    String headerStart;
    String headerTail;
    Hashtable headers;
    int lastb;
    boolean newLine;

    /* renamed from: nl */
    String f968nl;
    OutputStream out;
    boolean start;
    String type;
    String version;

    public ArmoredOutputStream(OutputStream outputStream) {
        this.buf = new int[3];
        this.bufPtr = 0;
        this.crc = new CRC24();
        this.chunkCount = 0;
        this.start = true;
        this.clearText = false;
        this.newLine = false;
        this.f968nl = Strings.lineSeparator();
        this.headerStart = "-----BEGIN PGP ";
        this.headerTail = "-----";
        this.footerStart = "-----END PGP ";
        this.footerTail = "-----";
        this.version = "BCPG v@RELEASE_NAME@";
        this.headers = new Hashtable();
        this.out = outputStream;
        if (this.f968nl == null) {
            this.f968nl = IOUtils.LINE_SEPARATOR_WINDOWS;
        }
        resetHeaders();
    }

    public ArmoredOutputStream(OutputStream outputStream, Hashtable hashtable) {
        this(outputStream);
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            this.headers.put(nextElement, hashtable.get(nextElement));
        }
    }

    private void encode(OutputStream outputStream, int[] iArr, int i) throws IOException {
        switch (i) {
            case 0:
                return;
            case 1:
                int i2 = iArr[0];
                outputStream.write(encodingTable[(i2 >>> 2) & 63]);
                outputStream.write(encodingTable[(i2 << 4) & 63]);
                outputStream.write(61);
                outputStream.write(61);
                return;
            case 2:
                int i3 = iArr[0];
                int i4 = iArr[1];
                outputStream.write(encodingTable[(i3 >>> 2) & 63]);
                outputStream.write(encodingTable[((i3 << 4) | (i4 >>> 4)) & 63]);
                outputStream.write(encodingTable[(i4 << 2) & 63]);
                outputStream.write(61);
                return;
            case 3:
                int i5 = iArr[0];
                int i6 = iArr[1];
                int i7 = iArr[2];
                outputStream.write(encodingTable[(i5 >>> 2) & 63]);
                outputStream.write(encodingTable[((i5 << 4) | (i6 >>> 4)) & 63]);
                outputStream.write(encodingTable[((i6 << 2) | (i7 >>> 6)) & 63]);
                outputStream.write(encodingTable[i7 & 63]);
                return;
            default:
                throw new IOException("unknown length in encode");
        }
    }

    private void writeHeaderEntry(String str, String str2) throws IOException {
        for (int i = 0; i != str.length(); i++) {
            this.out.write(str.charAt(i));
        }
        this.out.write(58);
        this.out.write(32);
        for (int i2 = 0; i2 != str2.length(); i2++) {
            this.out.write(str2.charAt(i2));
        }
        for (int i3 = 0; i3 != this.f968nl.length(); i3++) {
            this.out.write(this.f968nl.charAt(i3));
        }
    }

    public void beginClearText(int i) throws IOException {
        String str;
        switch (i) {
            case 1:
                str = "MD5";
                break;
            case 2:
                str = "SHA1";
                break;
            case 3:
                str = "RIPEMD160";
                break;
            case 4:
            case 6:
            case 7:
            default:
                throw new IOException("unknown hash algorithm tag in beginClearText: " + i);
            case 5:
                str = "MD2";
                break;
            case 8:
                str = "SHA256";
                break;
            case 9:
                str = "SHA384";
                break;
            case 10:
                str = "SHA512";
                break;
        }
        String str2 = "-----BEGIN PGP SIGNED MESSAGE-----" + this.f968nl;
        String str3 = "Hash: " + str + this.f968nl + this.f968nl;
        for (int i2 = 0; i2 != str2.length(); i2++) {
            this.out.write(str2.charAt(i2));
        }
        for (int i3 = 0; i3 != str3.length(); i3++) {
            this.out.write(str3.charAt(i3));
        }
        this.clearText = true;
        this.newLine = true;
        this.lastb = 0;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.type != null) {
            encode(this.out, this.buf, this.bufPtr);
            for (int i = 0; i != this.f968nl.length(); i++) {
                this.out.write(this.f968nl.charAt(i));
            }
            this.out.write(61);
            int value = this.crc.getValue();
            this.buf[0] = (value >> 16) & 255;
            this.buf[1] = (value >> 8) & 255;
            this.buf[2] = value & 255;
            encode(this.out, this.buf, 3);
            for (int i2 = 0; i2 != this.f968nl.length(); i2++) {
                this.out.write(this.f968nl.charAt(i2));
            }
            for (int i3 = 0; i3 != this.footerStart.length(); i3++) {
                this.out.write(this.footerStart.charAt(i3));
            }
            for (int i4 = 0; i4 != this.type.length(); i4++) {
                this.out.write(this.type.charAt(i4));
            }
            for (int i5 = 0; i5 != this.footerTail.length(); i5++) {
                this.out.write(this.footerTail.charAt(i5));
            }
            for (int i6 = 0; i6 != this.f968nl.length(); i6++) {
                this.out.write(this.f968nl.charAt(i6));
            }
            this.out.flush();
            this.type = null;
            this.start = true;
        }
    }

    public void endClearText() {
        this.clearText = false;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    public void resetHeaders() {
        this.headers.clear();
        this.headers.put("Version", this.version);
    }

    public void setHeader(String str, String str2) {
        this.headers.put(str, str2);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (this.clearText) {
            this.out.write(i);
            if (this.newLine) {
                if (!(i == 10 && this.lastb == 13)) {
                    this.newLine = false;
                }
                if (i == 45) {
                    this.out.write(32);
                    this.out.write(45);
                }
            }
            if (i == 13 || (i == 10 && this.lastb != 13)) {
                this.newLine = true;
            }
            this.lastb = i;
            return;
        }
        if (this.start) {
            int i2 = (i & 64) != 0 ? i & 63 : (i & 63) >> 2;
            if (i2 != 2) {
                switch (i2) {
                    case 5:
                        this.type = "PRIVATE KEY BLOCK";
                        break;
                    case 6:
                        this.type = "PUBLIC KEY BLOCK";
                        break;
                    default:
                        this.type = "MESSAGE";
                        break;
                }
            } else {
                this.type = "SIGNATURE";
            }
            for (int i3 = 0; i3 != this.headerStart.length(); i3++) {
                this.out.write(this.headerStart.charAt(i3));
            }
            for (int i4 = 0; i4 != this.type.length(); i4++) {
                this.out.write(this.type.charAt(i4));
            }
            for (int i5 = 0; i5 != this.headerTail.length(); i5++) {
                this.out.write(this.headerTail.charAt(i5));
            }
            for (int i6 = 0; i6 != this.f968nl.length(); i6++) {
                this.out.write(this.f968nl.charAt(i6));
            }
            writeHeaderEntry("Version", (String) this.headers.get("Version"));
            Enumeration keys = this.headers.keys();
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                if (!str.equals("Version")) {
                    writeHeaderEntry(str, (String) this.headers.get(str));
                }
            }
            for (int i7 = 0; i7 != this.f968nl.length(); i7++) {
                this.out.write(this.f968nl.charAt(i7));
            }
            this.start = false;
        }
        if (this.bufPtr == 3) {
            encode(this.out, this.buf, this.bufPtr);
            this.bufPtr = 0;
            int i8 = this.chunkCount + 1;
            this.chunkCount = i8;
            if ((i8 & 15) == 0) {
                for (int i9 = 0; i9 != this.f968nl.length(); i9++) {
                    this.out.write(this.f968nl.charAt(i9));
                }
            }
        }
        this.crc.update(i);
        int[] iArr = this.buf;
        int i10 = this.bufPtr;
        this.bufPtr = i10 + 1;
        iArr[i10] = i & 255;
    }
}
