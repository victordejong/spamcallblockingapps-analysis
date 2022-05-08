package org.spongycastle.bcpg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.cli.HelpFormatter;
import org.spongycastle.util.StringList;
import org.spongycastle.util.Strings;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/ArmoredInputStream.class */
public class ArmoredInputStream extends InputStream {
    private static final byte[] decodingTable = new byte[128];
    int bufPtr;
    boolean clearText;
    CRC24 crc;
    boolean crcFound;
    boolean hasHeaders;
    String header;
    StringList headerList;

    /* renamed from: in */
    InputStream f967in;
    boolean isEndOfStream;
    int lastC;
    boolean newLineFound;
    int[] outBuf;
    boolean restart;
    boolean start;

    static {
        for (int i = 65; i <= 90; i++) {
            decodingTable[i] = (byte) (i - 65);
        }
        for (int i2 = 97; i2 <= 122; i2++) {
            decodingTable[i2] = (byte) ((i2 - 97) + 26);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            decodingTable[i3] = (byte) ((i3 - 48) + 52);
        }
        decodingTable[43] = (byte) 62;
        decodingTable[47] = (byte) 63;
    }

    public ArmoredInputStream(InputStream inputStream) throws IOException {
        this(inputStream, true);
    }

    public ArmoredInputStream(InputStream inputStream, boolean z) throws IOException {
        this.start = true;
        this.outBuf = new int[3];
        this.bufPtr = 3;
        this.crc = new CRC24();
        this.crcFound = false;
        this.hasHeaders = true;
        this.header = null;
        this.newLineFound = false;
        this.clearText = false;
        this.restart = false;
        this.headerList = Strings.newList();
        this.lastC = 0;
        this.f967in = inputStream;
        this.hasHeaders = z;
        if (z) {
            parseHeaders();
        }
        this.start = false;
    }

    private int decode(int i, int i2, int i3, int i4, int[] iArr) throws EOFException {
        if (i4 < 0) {
            throw new EOFException("unexpected end of file in armored stream.");
        } else if (i3 == 61) {
            iArr[2] = (((decodingTable[i] & 255) << 2) | ((decodingTable[i2] & 255) >> 4)) & 255;
            return 2;
        } else if (i4 == 61) {
            byte b = decodingTable[i];
            byte b2 = decodingTable[i2];
            byte b3 = decodingTable[i3];
            iArr[1] = ((b << 2) | (b2 >> 4)) & 255;
            iArr[2] = ((b2 << 4) | (b3 >> 2)) & 255;
            return 1;
        } else {
            byte b4 = decodingTable[i];
            byte b5 = decodingTable[i2];
            byte b6 = decodingTable[i3];
            byte b7 = decodingTable[i4];
            iArr[0] = ((b4 << 2) | (b5 >> 4)) & 255;
            iArr[1] = ((b5 << 4) | (b6 >> 2)) & 255;
            iArr[2] = ((b6 << 6) | b7) & 255;
            return 0;
        }
    }

    private boolean parseHeaders() throws IOException {
        boolean z;
        int i;
        boolean z2;
        this.header = null;
        this.headerList = Strings.newList();
        if (this.restart) {
            z = true;
            i = 0;
        } else {
            i = 0;
            while (true) {
                int read = this.f967in.read();
                if (read < 0) {
                    z = false;
                    break;
                } else if (!(read == 45 && (i == 0 || i == 10 || i == 13))) {
                    i = read;
                }
            }
            z = true;
        }
        if (z) {
            StringBuffer stringBuffer = new StringBuffer(HelpFormatter.DEFAULT_OPT_PREFIX);
            if (this.restart) {
                stringBuffer.append('-');
            }
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                int read2 = this.f967in.read();
                z2 = z4;
                if (read2 < 0) {
                    break;
                }
                z2 = z4;
                if (i == 13) {
                    z2 = z4;
                    if (read2 == 10) {
                        z2 = true;
                    }
                }
                if ((z3 && i != 13 && read2 == 10) || (z3 && read2 == 13)) {
                    break;
                }
                if (read2 == 13 || (i != 13 && read2 == 10)) {
                    String stringBuffer2 = stringBuffer.toString();
                    if (stringBuffer2.trim().length() == 0) {
                        break;
                    }
                    this.headerList.add(stringBuffer2);
                    stringBuffer.setLength(0);
                }
                if (read2 == 10 || read2 == 13) {
                    if (read2 != 13) {
                        z3 = z3;
                        if (i != 13) {
                            z3 = z3;
                            if (read2 != 10) {
                            }
                        }
                    }
                    z3 = true;
                } else {
                    stringBuffer.append((char) read2);
                    z3 = false;
                }
                i = read2;
                z4 = z2;
            }
            if (z2) {
                this.f967in.read();
            }
        }
        if (this.headerList.size() > 0) {
            this.header = this.headerList.get(0);
        }
        this.clearText = "-----BEGIN PGP SIGNED MESSAGE-----".equals(this.header);
        this.newLineFound = true;
        return z;
    }

    private int readIgnoreSpace() throws IOException {
        int read = this.f967in.read();
        while (true) {
            if (read != 32 && read != 9) {
                return read;
            }
            read = this.f967in.read();
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f967in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f967in.close();
    }

    public String getArmorHeaderLine() {
        return this.header;
    }

    public String[] getArmorHeaders() {
        if (this.headerList.size() <= 1) {
            return null;
        }
        return this.headerList.toStringArray(1, this.headerList.size());
    }

    public boolean isClearText() {
        return this.clearText;
    }

    public boolean isEndOfStream() {
        return this.isEndOfStream;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read;
        int i;
        if (this.start) {
            if (this.hasHeaders) {
                parseHeaders();
            }
            this.crc.reset();
            this.start = false;
        }
        if (this.clearText) {
            int read2 = this.f967in.read();
            if (read2 == 13 || (read2 == 10 && this.lastC != 13)) {
                this.newLineFound = true;
                i = read2;
            } else if (!this.newLineFound || read2 != 45) {
                i = read2;
                if (read2 != 10) {
                    i = read2;
                    if (this.lastC != 13) {
                        this.newLineFound = false;
                        i = read2;
                    }
                }
            } else {
                i = this.f967in.read();
                if (i == 45) {
                    this.clearText = false;
                    this.start = true;
                    this.restart = true;
                } else {
                    i = this.f967in.read();
                }
                this.newLineFound = false;
            }
            this.lastC = i;
            if (i < 0) {
                this.isEndOfStream = true;
            }
            return i;
        }
        if (this.bufPtr > 2 || this.crcFound) {
            int readIgnoreSpace = readIgnoreSpace();
            if (readIgnoreSpace == 13 || readIgnoreSpace == 10) {
                int readIgnoreSpace2 = readIgnoreSpace();
                while (true) {
                    if (readIgnoreSpace2 != 10 && readIgnoreSpace2 != 13) {
                        break;
                    }
                    readIgnoreSpace2 = readIgnoreSpace();
                }
                if (readIgnoreSpace2 < 0) {
                    this.isEndOfStream = true;
                    return -1;
                } else if (readIgnoreSpace2 == 61) {
                    this.bufPtr = decode(readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), this.outBuf);
                    if (this.bufPtr == 0) {
                        int i2 = this.outBuf[0];
                        int i3 = this.outBuf[1];
                        int i4 = this.outBuf[2];
                        this.crcFound = true;
                        if ((((i2 & 255) << 16) | ((i3 & 255) << 8) | (i4 & 255)) == this.crc.getValue()) {
                            return read();
                        }
                        throw new IOException("crc check failed in armored message.");
                    }
                    throw new IOException("no crc found in armored message.");
                } else if (readIgnoreSpace2 == 45) {
                    do {
                        read = this.f967in.read();
                        if (read < 0 || read == 10) {
                            break;
                        }
                    } while (read != 13);
                    if (!this.crcFound) {
                        throw new IOException("crc check not found.");
                    }
                    this.crcFound = false;
                    this.start = true;
                    this.bufPtr = 3;
                    if (read >= 0) {
                        return -1;
                    }
                    this.isEndOfStream = true;
                    return -1;
                } else {
                    this.bufPtr = decode(readIgnoreSpace2, readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), this.outBuf);
                }
            } else if (readIgnoreSpace >= 0) {
                this.bufPtr = decode(readIgnoreSpace, readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), this.outBuf);
            } else {
                this.isEndOfStream = true;
                return -1;
            }
        }
        int[] iArr = this.outBuf;
        int i5 = this.bufPtr;
        this.bufPtr = i5 + 1;
        int i6 = iArr[i5];
        this.crc.update(i6);
        return i6;
    }
}
