package com.mixpanel.android.java_websocket.util;

import android.annotation.SuppressLint;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
@SuppressLint({"Assert"})
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/util/Base64.class */
public class Base64 {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DECODE = 0;
    public static final int DONT_GUNZIP = 4;
    public static final int DO_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "US-ASCII";
    public static final int URL_SAFE = 16;
    private static final byte[] _STANDARD_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte WHITE_SPACE_ENC = -5;
    private static final byte[] _STANDARD_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] _URL_SAFE_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private static final byte[] _URL_SAFE_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] _ORDERED_ALPHABET = {45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static final byte[] _ORDERED_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/util/Base64$InputStream.class */
    public static class InputStream extends FilterInputStream {
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public InputStream(java.io.InputStream inputStream) {
            this(inputStream, 0);
        }

        public InputStream(java.io.InputStream inputStream, int i) {
            super(inputStream);
            this.options = i;
            boolean z = true;
            this.breakLines = (i & 8) > 0;
            if ((i & 1) <= 0) {
                z = false;
            }
            this.encode = z;
            this.bufferLength = this.encode ? 4 : 3;
            this.buffer = new byte[this.bufferLength];
            this.position = -1;
            this.lineLength = 0;
            this.decodabet = Base64.getDecodabet(i);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read;
            int read2;
            if (this.position < 0) {
                if (this.encode) {
                    byte[] bArr = new byte[3];
                    int i = 0;
                    for (int i2 = 0; i2 < 3 && (read2 = this.in.read()) >= 0; i2++) {
                        bArr[i2] = (byte) read2;
                        i++;
                    }
                    if (i <= 0) {
                        return -1;
                    }
                    Base64.encode3to4(bArr, 0, i, this.buffer, 0, this.options);
                    this.position = 0;
                    this.numSigBytes = 4;
                } else {
                    byte[] bArr2 = new byte[4];
                    int i3 = 0;
                    while (i3 < 4) {
                        do {
                            read = this.in.read();
                            if (read < 0) {
                                break;
                            }
                        } while (this.decodabet[read & 127] <= Base64.WHITE_SPACE_ENC);
                        if (read < 0) {
                            break;
                        }
                        bArr2[i3] = (byte) read;
                        i3++;
                    }
                    if (i3 == 4) {
                        this.numSigBytes = Base64.decode4to3(bArr2, 0, this.buffer, 0, this.options);
                        this.position = 0;
                    } else if (i3 == 0) {
                        return -1;
                    } else {
                        throw new IOException("Improperly padded Base64 input.");
                    }
                }
            }
            if (this.position < 0) {
                throw new IOException("Error in Base64 code reading stream.");
            } else if (this.position >= this.numSigBytes) {
                return -1;
            } else {
                if (!this.encode || !this.breakLines || this.lineLength < 76) {
                    this.lineLength++;
                    byte[] bArr3 = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    byte b = bArr3[i4];
                    if (this.position >= this.bufferLength) {
                        this.position = -1;
                    }
                    return b & 255;
                }
                this.lineLength = 0;
                return 10;
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                int read = read();
                if (read >= 0) {
                    bArr[i + i3] = (byte) read;
                    i3++;
                } else if (i3 == 0) {
                    return -1;
                }
            }
            return i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/util/Base64$OutputStream.class */
    public static class OutputStream extends FilterOutputStream {

        /* renamed from: b4 */
        private byte[] f227b4;
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public OutputStream(java.io.OutputStream outputStream) {
            this(outputStream, 1);
        }

        public OutputStream(java.io.OutputStream outputStream, int i) {
            super(outputStream);
            boolean z = true;
            this.breakLines = (i & 8) != 0;
            if ((i & 1) == 0) {
                z = false;
            }
            this.encode = z;
            this.bufferLength = this.encode ? 3 : 4;
            this.buffer = new byte[this.bufferLength];
            this.position = 0;
            this.lineLength = 0;
            this.suspendEncoding = false;
            this.f227b4 = new byte[4];
            this.options = i;
            this.decodabet = Base64.getDecodabet(i);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            flushBase64();
            super.close();
            this.buffer = null;
            this.out = null;
        }

        public void flushBase64() throws IOException {
            if (this.position <= 0) {
                return;
            }
            if (this.encode) {
                this.out.write(Base64.encode3to4(this.f227b4, this.buffer, this.position, this.options));
                this.position = 0;
                return;
            }
            throw new IOException("Base64 input not properly padded.");
        }

        public void resumeEncoding() {
            this.suspendEncoding = false;
        }

        public void suspendEncoding() throws IOException {
            flushBase64();
            this.suspendEncoding = true;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            if (this.suspendEncoding) {
                this.out.write(i);
            } else if (this.encode) {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = (byte) i;
                if (this.position >= this.bufferLength) {
                    this.out.write(Base64.encode3to4(this.f227b4, this.buffer, this.bufferLength, this.options));
                    this.lineLength += 4;
                    if (this.breakLines && this.lineLength >= 76) {
                        this.out.write(10);
                        this.lineLength = 0;
                    }
                    this.position = 0;
                }
            } else {
                int i3 = i & 127;
                if (this.decodabet[i3] > Base64.WHITE_SPACE_ENC) {
                    byte[] bArr2 = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    bArr2[i4] = (byte) i;
                    if (this.position >= this.bufferLength) {
                        this.out.write(this.f227b4, 0, Base64.decode4to3(this.buffer, 0, this.f227b4, 0, this.options));
                        this.position = 0;
                    }
                } else if (this.decodabet[i3] != Base64.WHITE_SPACE_ENC) {
                    throw new IOException("Invalid character in Base64 data.");
                }
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.suspendEncoding) {
                this.out.write(bArr, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                write(bArr[i + i3]);
            }
        }
    }

    private Base64() {
    }

    public static byte[] decode(String str) throws IOException {
        return decode(str, 0);
    }

    public static byte[] decode(String str, int i) throws IOException {
        byte[] bArr;
        ByteArrayInputStream byteArrayInputStream;
        IOException e;
        ByteArrayInputStream byteArrayInputStream2;
        ByteArrayOutputStream byteArrayOutputStream;
        if (str == null) {
            throw new NullPointerException("Input string was null.");
        }
        try {
            bArr = str.getBytes(PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException e2) {
            bArr = str.getBytes();
        }
        byte[] decode = decode(bArr, 0, bArr.length, i);
        boolean z = (i & 4) != 0;
        byte[] bArr2 = decode;
        if (decode != null) {
            bArr2 = decode;
            if (decode.length >= 4) {
                bArr2 = decode;
                if (!z) {
                    bArr2 = decode;
                    if (35615 == ((decode[0] & 255) | ((decode[1] << 8) & 65280))) {
                        byte[] bArr3 = new byte[2048];
                        GZIPInputStream gZIPInputStream = null;
                        ByteArrayOutputStream byteArrayOutputStream2 = null;
                        try {
                            byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                byteArrayInputStream2 = new ByteArrayInputStream(decode);
                                try {
                                    gZIPInputStream = new GZIPInputStream(byteArrayInputStream2);
                                    while (true) {
                                        try {
                                            int read = gZIPInputStream.read(bArr3);
                                            if (read < 0) {
                                                break;
                                            }
                                            byteArrayOutputStream.write(bArr3, 0, read);
                                        } catch (IOException e3) {
                                            e = e3;
                                            byteArrayInputStream = byteArrayInputStream2;
                                            byteArrayOutputStream2 = byteArrayOutputStream;
                                            try {
                                                e.printStackTrace();
                                                try {
                                                    byteArrayOutputStream2.close();
                                                } catch (Exception e4) {
                                                }
                                                try {
                                                    gZIPInputStream.close();
                                                } catch (Exception e5) {
                                                }
                                                try {
                                                    byteArrayInputStream.close();
                                                    bArr2 = decode;
                                                } catch (Exception e6) {
                                                    bArr2 = decode;
                                                }
                                                return bArr2;
                                            } catch (Throwable th) {
                                                th = th;
                                                byteArrayInputStream2 = byteArrayInputStream;
                                                byteArrayOutputStream = byteArrayOutputStream2;
                                                try {
                                                    byteArrayOutputStream.close();
                                                } catch (Exception e7) {
                                                }
                                                try {
                                                    gZIPInputStream.close();
                                                } catch (Exception e8) {
                                                }
                                                try {
                                                    byteArrayInputStream2.close();
                                                } catch (Exception e9) {
                                                }
                                                throw th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            byteArrayOutputStream.close();
                                            gZIPInputStream.close();
                                            byteArrayInputStream2.close();
                                            throw th;
                                        }
                                    }
                                    bArr2 = byteArrayOutputStream.toByteArray();
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e10) {
                                    }
                                    try {
                                        gZIPInputStream.close();
                                    } catch (Exception e11) {
                                    }
                                    try {
                                        byteArrayInputStream2.close();
                                    } catch (Exception e12) {
                                    }
                                } catch (IOException e13) {
                                    e = e13;
                                    gZIPInputStream = null;
                                    byteArrayInputStream = byteArrayInputStream2;
                                } catch (Throwable th3) {
                                    th = th3;
                                    byteArrayOutputStream.close();
                                    gZIPInputStream.close();
                                    byteArrayInputStream2.close();
                                    throw th;
                                }
                            } catch (IOException e14) {
                                e = e14;
                                byteArrayInputStream = null;
                                gZIPInputStream = null;
                            } catch (Throwable th4) {
                                th = th4;
                                byteArrayInputStream2 = null;
                            }
                        } catch (IOException e15) {
                            e = e15;
                            byteArrayInputStream = null;
                            gZIPInputStream = null;
                        } catch (Throwable th5) {
                            th = th5;
                            byteArrayOutputStream = null;
                            byteArrayInputStream2 = null;
                        }
                    }
                }
            }
        }
        return bArr2;
    }

    public static byte[] decode(byte[] bArr) throws IOException {
        return decode(bArr, 0, bArr.length, 0);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4;
        if (bArr == null) {
            throw new NullPointerException("Cannot decode null source array.");
        } else if (i < 0 || (i4 = i + i2) > bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        } else if (i2 == 0) {
            return new byte[0];
        } else {
            if (i2 < 4) {
                throw new IllegalArgumentException("Base64-encoded string must have at least four characters, but length specified was " + i2);
            }
            byte[] decodabet = getDecodabet(i3);
            byte[] bArr2 = new byte[(i2 * 3) / 4];
            byte[] bArr3 = new byte[4];
            int i5 = 0;
            int i6 = 0;
            int i7 = i;
            while (true) {
                i6 = i6;
                if (i7 >= i4) {
                    break;
                }
                byte b = decodabet[bArr[i7] & 255];
                if (b >= WHITE_SPACE_ENC) {
                    i5 = i5;
                    i6 = i6;
                    if (b >= -1) {
                        i5++;
                        bArr3[i5] = bArr[i7];
                        if (i5 > 3) {
                            i6 += decode4to3(bArr3, 0, bArr2, i6, i3);
                            if (bArr[i7] == 61) {
                                break;
                            }
                            i5 = 0;
                        } else {
                            i6 = i6;
                        }
                    }
                    i7++;
                } else {
                    throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", Integer.valueOf(bArr[i7] & 255), Integer.valueOf(i7)));
                }
            }
            byte[] bArr4 = new byte[i6];
            System.arraycopy(bArr2, 0, bArr4, 0, i6);
            return bArr4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int decode4to3(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4;
        int i5;
        if (bArr == null) {
            throw new NullPointerException("Source array was null.");
        } else if (bArr2 == null) {
            throw new NullPointerException("Destination array was null.");
        } else if (i < 0 || (i4 = i + 3) >= bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i)));
        } else if (i2 < 0 || (i5 = i2 + 2) >= bArr2.length) {
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(bArr2.length), Integer.valueOf(i2)));
        } else {
            byte[] decodabet = getDecodabet(i3);
            int i6 = i + 2;
            if (bArr[i6] == 61) {
                bArr2[i2] = (byte) ((((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i]] & 255) << 18)) >>> 16);
                return 1;
            } else if (bArr[i4] == 61) {
                int i7 = ((decodabet[bArr[i6]] & 255) << 6) | ((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i]] & 255) << 18);
                bArr2[i2] = (byte) (i7 >>> 16);
                bArr2[i2 + 1] = (byte) (i7 >>> 8);
                return 2;
            } else {
                int i8 = (decodabet[bArr[i4]] & 255) | ((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i]] & 255) << 18) | ((decodabet[bArr[i6]] & 255) << 6);
                bArr2[i2] = (byte) (i8 >> 16);
                bArr2[i2 + 1] = (byte) (i8 >> 8);
                bArr2[i5] = (byte) i8;
                return 3;
            }
        }
    }

    public static void decodeFileToFile(String str, String str2) throws IOException {
        Throwable th;
        IOException e;
        BufferedOutputStream bufferedOutputStream;
        byte[] decodeFromFile = decodeFromFile(str);
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
        }
        try {
            bufferedOutputStream.write(decodeFromFile);
            try {
                bufferedOutputStream.close();
            } catch (Exception e3) {
            }
        } catch (IOException e4) {
            e = e4;
            throw e;
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream2 = bufferedOutputStream;
            try {
                bufferedOutputStream2.close();
            } catch (Exception e5) {
            }
            throw th;
        }
    }

    public static byte[] decodeFromFile(String str) throws IOException {
        Throwable th;
        IOException e;
        InputStream inputStream = null;
        try {
            try {
                File file = new File(str);
                if (file.length() > 2147483647L) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("File is too big for this convenience method (");
                    sb.append(file.length());
                    sb.append(" bytes).");
                    throw new IOException(sb.toString());
                }
                byte[] bArr = new byte[(int) file.length()];
                InputStream inputStream2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 0);
                int i = 0;
                while (true) {
                    try {
                        int read = inputStream2.read(bArr, i, 4096);
                        if (read < 0) {
                            break;
                        }
                        i += read;
                    } catch (IOException e2) {
                        e = e2;
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStream2;
                        try {
                            inputStream.close();
                        } catch (Exception e3) {
                        }
                        throw th;
                    }
                }
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                try {
                    inputStream2.close();
                } catch (Exception e4) {
                }
                return bArr2;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e5) {
            e = e5;
        }
    }

    public static void decodeToFile(String str, String str2) throws IOException {
        Throwable th;
        IOException e;
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        try {
            try {
                outputStream = new OutputStream(new FileOutputStream(str2), 0);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
        }
        try {
            outputStream.write(str.getBytes(PREFERRED_ENCODING));
            try {
                outputStream.close();
            } catch (Exception e3) {
            }
        } catch (IOException e4) {
            e = e4;
            throw e;
        } catch (Throwable th3) {
            th = th3;
            outputStream2 = outputStream;
            try {
                outputStream2.close();
            } catch (Exception e5) {
            }
            throw th;
        }
    }

    public static Object decodeToObject(String str) throws IOException, ClassNotFoundException {
        return decodeToObject(str, 0, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v7 */
    public static Object decodeToObject(String str, int i, final ClassLoader classLoader) throws IOException, ClassNotFoundException {
        Throwable th;
        IOException e;
        ClassNotFoundException e2;
        ObjectInputStream objectInputStream = null;
        ObjectInputStream objectInputStream2 = null;
        ObjectInputStream objectInputStream3 = 0;
        objectInputStream3 = 0;
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(decode(str, i));
            } catch (Throwable th2) {
                th = th2;
                objectInputStream3 = classLoader;
            }
            try {
                ObjectInputStream objectInputStream4 = classLoader == null ? new ObjectInputStream(byteArrayInputStream) : new ObjectInputStream(byteArrayInputStream) { // from class: com.mixpanel.android.java_websocket.util.Base64.1
                    @Override // java.io.ObjectInputStream
                    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
                        Class<?> cls = Class.forName(objectStreamClass.getName(), false, classLoader);
                        return cls == null ? super.resolveClass(objectStreamClass) : cls;
                    }
                };
                objectInputStream3 = objectInputStream4;
                objectInputStream = objectInputStream4;
                objectInputStream2 = objectInputStream4;
                Object readObject = objectInputStream4.readObject();
                try {
                    byteArrayInputStream.close();
                } catch (Exception e3) {
                }
                try {
                    objectInputStream4.close();
                } catch (Exception e4) {
                }
                return readObject;
            } catch (IOException e5) {
                e = e5;
                throw e;
            } catch (ClassNotFoundException e6) {
                e2 = e6;
                throw e2;
            } catch (Throwable th3) {
                th = th3;
                try {
                    byteArrayInputStream.close();
                } catch (Exception e7) {
                }
                try {
                    objectInputStream3.close();
                } catch (Exception e8) {
                }
                throw th;
            }
        } catch (IOException e9) {
            e = e9;
        } catch (ClassNotFoundException e10) {
            e2 = e10;
        } catch (Throwable th4) {
            th = th4;
            byteArrayInputStream = null;
        }
    }

    public static void encode(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, min);
            encode3to4(bArr2, bArr, min, 0);
            byteBuffer2.put(bArr2);
        }
    }

    public static void encode(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, min);
            encode3to4(bArr2, bArr, min, 0);
            for (int i = 0; i < 4; i++) {
                charBuffer.put((char) (bArr2[i] & 255));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        byte[] alphabet = getAlphabet(i4);
        int i5 = 0;
        int i6 = i2 > 0 ? (bArr[i] << 24) >>> 8 : 0;
        int i7 = i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0;
        if (i2 > 2) {
            i5 = (bArr[i + 2] << 24) >>> 24;
        }
        int i8 = i6 | i7 | i5;
        switch (i2) {
            case 1:
                bArr2[i3] = alphabet[i8 >>> 18];
                bArr2[i3 + 1] = alphabet[(i8 >>> 12) & 63];
                bArr2[i3 + 2] = (byte) 61;
                bArr2[i3 + 3] = (byte) 61;
                return bArr2;
            case 2:
                bArr2[i3] = alphabet[i8 >>> 18];
                bArr2[i3 + 1] = alphabet[(i8 >>> 12) & 63];
                bArr2[i3 + 2] = alphabet[(i8 >>> 6) & 63];
                bArr2[i3 + 3] = (byte) 61;
                return bArr2;
            case 3:
                bArr2[i3] = alphabet[i8 >>> 18];
                bArr2[i3 + 1] = alphabet[(i8 >>> 12) & 63];
                bArr2[i3 + 2] = alphabet[(i8 >>> 6) & 63];
                bArr2[i3 + 3] = alphabet[i8 & 63];
                return bArr2;
            default:
                return bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, byte[] bArr2, int i, int i2) {
        encode3to4(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    public static String encodeBytes(byte[] bArr) {
        String str;
        try {
            str = encodeBytes(bArr, 0, bArr.length, 0);
        } catch (IOException e) {
            str = null;
        }
        return str;
    }

    public static String encodeBytes(byte[] bArr, int i) throws IOException {
        return encodeBytes(bArr, 0, bArr.length, i);
    }

    public static String encodeBytes(byte[] bArr, int i, int i2) {
        String str;
        try {
            str = encodeBytes(bArr, i, i2, 0);
        } catch (IOException e) {
            str = null;
        }
        return str;
    }

    public static String encodeBytes(byte[] bArr, int i, int i2, int i3) throws IOException {
        byte[] encodeBytesToBytes = encodeBytesToBytes(bArr, i, i2, i3);
        try {
            return new String(encodeBytesToBytes, PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return new String(encodeBytesToBytes);
        }
    }

    public static byte[] encodeBytesToBytes(byte[] bArr) {
        byte[] bArr2;
        try {
            bArr2 = encodeBytesToBytes(bArr, 0, bArr.length, 0);
        } catch (IOException e) {
            bArr2 = null;
        }
        return bArr2;
    }

    public static byte[] encodeBytesToBytes(byte[] bArr, int i, int i2, int i3) throws IOException {
        GZIPOutputStream gZIPOutputStream;
        OutputStream outputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        IOException e;
        if (bArr == null) {
            throw new NullPointerException("Cannot serialize a null array.");
        } else if (i < 0) {
            throw new IllegalArgumentException("Cannot have negative offset: " + i);
        } else if (i2 < 0) {
            throw new IllegalArgumentException("Cannot have length offset: " + i2);
        } else if (i + i2 > bArr.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length)));
        } else if ((i3 & 2) != 0) {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    outputStream = new OutputStream(byteArrayOutputStream, i3 | 1);
                } catch (IOException e2) {
                    e = e2;
                    outputStream = null;
                    gZIPOutputStream = null;
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    outputStream = null;
                    gZIPOutputStream = null;
                    try {
                        gZIPOutputStream.close();
                    } catch (Exception e3) {
                    }
                    try {
                        outputStream.close();
                    } catch (Exception e4) {
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e5) {
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
                byteArrayOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
            try {
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(outputStream);
                byteArrayOutputStream = byteArrayOutputStream;
                outputStream = outputStream;
                gZIPOutputStream = gZIPOutputStream2;
                try {
                    try {
                        gZIPOutputStream2.write(bArr, i, i2);
                        gZIPOutputStream2.close();
                        try {
                            gZIPOutputStream2.close();
                        } catch (Exception e7) {
                        }
                        try {
                            outputStream.close();
                        } catch (Exception e8) {
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e9) {
                        }
                        return byteArrayOutputStream.toByteArray();
                    } catch (IOException e10) {
                        e = e10;
                        gZIPOutputStream = gZIPOutputStream2;
                        throw e;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    gZIPOutputStream.close();
                    outputStream.close();
                    byteArrayOutputStream.close();
                    throw th;
                }
            } catch (IOException e11) {
                e = e11;
                gZIPOutputStream = null;
            } catch (Throwable th5) {
                th = th5;
                gZIPOutputStream = null;
                gZIPOutputStream.close();
                outputStream.close();
                byteArrayOutputStream.close();
                throw th;
            }
        } else {
            boolean z = (i3 & 8) != 0;
            int i4 = ((i2 / 3) * 4) + (i2 % 3 > 0 ? 4 : 0);
            int i5 = i4;
            if (z) {
                i5 = i4 + (i4 / 76);
            }
            byte[] bArr2 = new byte[i5];
            int i6 = i2 - 2;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i7 < i6) {
                encode3to4(bArr, i7 + i, 3, bArr2, i8, i3);
                i9 += 4;
                if (z && i9 >= 76) {
                    bArr2[i8 + 4] = (byte) 10;
                    i8++;
                    i9 = 0;
                }
                i7 += 3;
                i8 += 4;
            }
            int i10 = i8;
            if (i7 < i2) {
                encode3to4(bArr, i7 + i, i2 - i7, bArr2, i8, i3);
                i10 = i8 + 4;
            }
            if (i10 > bArr2.length - 1) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i10];
            System.arraycopy(bArr2, 0, bArr3, 0, i10);
            return bArr3;
        }
    }

    public static void encodeFileToFile(String str, String str2) throws IOException {
        Throwable th;
        IOException e;
        BufferedOutputStream bufferedOutputStream;
        String encodeFromFile = encodeFromFile(str);
        r4 = null;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bufferedOutputStream.write(encodeFromFile.getBytes(PREFERRED_ENCODING));
            try {
                bufferedOutputStream.close();
            } catch (Exception e3) {
            }
        } catch (IOException e4) {
            e = e4;
            bufferedOutputStream2 = bufferedOutputStream;
            throw e;
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream2 = bufferedOutputStream;
            try {
                bufferedOutputStream2.close();
            } catch (Exception e5) {
            }
            throw th;
        }
    }

    public static String encodeFromFile(String str) throws IOException {
        Throwable th;
        IOException e;
        r10 = null;
        InputStream inputStream = null;
        try {
            try {
                File file = new File(str);
                byte[] bArr = new byte[Math.max((int) ((file.length() * 1.4d) + 1.0d), 40)];
                inputStream = new InputStream(new BufferedInputStream(new FileInputStream(file)), 1);
                int i = 0;
                while (true) {
                    try {
                        int read = inputStream.read(bArr, i, 4096);
                        if (read < 0) {
                            break;
                        }
                        i += read;
                    } catch (IOException e2) {
                        e = e2;
                        inputStream = inputStream;
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            inputStream.close();
                        } catch (Exception e3) {
                        }
                        throw th;
                    }
                }
                String str2 = new String(bArr, 0, i, PREFERRED_ENCODING);
                try {
                    inputStream.close();
                } catch (Exception e4) {
                }
                return str2;
            } catch (IOException e5) {
                e = e5;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String encodeObject(Serializable serializable) throws IOException {
        return encodeObject(serializable, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r13v10, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14, types: [java.io.OutputStream, java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0179 -> B:87:0x00eb). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String encodeObject(java.io.Serializable r5, int r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.java_websocket.util.Base64.encodeObject(java.io.Serializable, int):java.lang.String");
    }

    public static void encodeToFile(byte[] bArr, String str) throws IOException {
        Throwable th;
        IOException e;
        OutputStream outputStream;
        if (bArr == null) {
            throw new NullPointerException("Data to encode was null.");
        }
        r8 = null;
        OutputStream outputStream2 = null;
        try {
            try {
                outputStream = new OutputStream(new FileOutputStream(str), 1);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            outputStream.write(bArr);
            try {
                outputStream.close();
            } catch (Exception e3) {
            }
        } catch (IOException e4) {
            e = e4;
            outputStream2 = outputStream;
            throw e;
        } catch (Throwable th3) {
            th = th3;
            outputStream2 = outputStream;
            try {
                outputStream2.close();
            } catch (Exception e5) {
            }
            throw th;
        }
    }

    private static final byte[] getAlphabet(int i) {
        return (i & 16) == 16 ? _URL_SAFE_ALPHABET : (i & 32) == 32 ? _ORDERED_ALPHABET : _STANDARD_ALPHABET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] getDecodabet(int i) {
        return (i & 16) == 16 ? _URL_SAFE_DECODABET : (i & 32) == 32 ? _ORDERED_DECODABET : _STANDARD_DECODABET;
    }
}
