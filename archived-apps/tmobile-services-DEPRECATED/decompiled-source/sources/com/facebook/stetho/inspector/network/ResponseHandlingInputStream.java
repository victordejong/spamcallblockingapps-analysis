package com.facebook.stetho.inspector.network;

import com.facebook.stetho.inspector.console.CLog;
import com.facebook.stetho.inspector.helper.ChromePeerManager;
import com.facebook.stetho.inspector.protocol.module.Console;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/ResponseHandlingInputStream.class */
public final class ResponseHandlingInputStream extends FilterInputStream {
    private static final int BUFFER_SIZE = 1024;
    public static final String TAG = "ResponseHandlingInputStream";
    @Nullable
    private final CountingOutputStream mDecompressedCounter;
    @GuardedBy
    private boolean mEofSeen;
    private final ChromePeerManager mNetworkPeerManager;
    private final OutputStream mOutputStream;
    private final String mRequestId;
    private final ResponseHandler mResponseHandler;
    @GuardedBy
    @Nullable
    private byte[] mSkipBuffer;
    private long mLastDecompressedCount = 0;
    @GuardedBy
    private boolean mClosed = false;

    public ResponseHandlingInputStream(InputStream inputStream, String str, OutputStream outputStream, @Nullable CountingOutputStream countingOutputStream, ChromePeerManager chromePeerManager, ResponseHandler responseHandler) {
        super(inputStream);
        this.mRequestId = str;
        this.mOutputStream = outputStream;
        this.mDecompressedCounter = countingOutputStream;
        this.mNetworkPeerManager = chromePeerManager;
        this.mResponseHandler = responseHandler;
    }

    private int checkEOF(int i) {
        synchronized (this) {
            if (i == -1) {
                closeOutputStreamQuietly();
                this.mResponseHandler.onEOF();
                this.mEofSeen = true;
            }
        }
        return i;
    }

    private void closeOutputStreamQuietly() {
        synchronized (this) {
            if (!this.mClosed) {
                try {
                    this.mOutputStream.close();
                    reportDecodedSizeIfApplicable();
                } catch (IOException e) {
                    ChromePeerManager chromePeerManager = this.mNetworkPeerManager;
                    Console.MessageLevel messageLevel = Console.MessageLevel.ERROR;
                    Console.MessageSource messageSource = Console.MessageSource.NETWORK;
                    CLog.writeToConsole(chromePeerManager, messageLevel, messageSource, "Could not close the output stream" + e);
                }
                this.mClosed = true;
            }
        }
    }

    @Nonnull
    private byte[] getSkipBufferLocked() {
        if (this.mSkipBuffer == null) {
            this.mSkipBuffer = new byte[BUFFER_SIZE];
        }
        return this.mSkipBuffer;
    }

    private IOException handleIOException(IOException iOException) {
        this.mResponseHandler.onError(iOException);
        return iOException;
    }

    private void handleIOExceptionWritingToStream(IOException iOException) {
        ChromePeerManager chromePeerManager = this.mNetworkPeerManager;
        Console.MessageLevel messageLevel = Console.MessageLevel.ERROR;
        Console.MessageSource messageSource = Console.MessageSource.NETWORK;
        CLog.writeToConsole(chromePeerManager, messageLevel, messageSource, "Could not write response body to the stream " + iOException);
        closeOutputStreamQuietly();
    }

    private void reportDecodedSizeIfApplicable() {
        CountingOutputStream countingOutputStream = this.mDecompressedCounter;
        if (countingOutputStream != null) {
            long count = countingOutputStream.getCount();
            this.mResponseHandler.onReadDecoded((int) (count - this.mLastDecompressedCount));
            this.mLastDecompressedCount = count;
        }
    }

    private void writeToOutputStream(int i) {
        synchronized (this) {
            if (!this.mClosed) {
                try {
                    this.mOutputStream.write(i);
                    reportDecodedSizeIfApplicable();
                } catch (IOException e) {
                    handleIOExceptionWritingToStream(e);
                }
            }
        }
    }

    private void writeToOutputStream(byte[] bArr, int i, int i2) {
        synchronized (this) {
            if (!this.mClosed) {
                try {
                    this.mOutputStream.write(bArr, i, i2);
                    reportDecodedSizeIfApplicable();
                } catch (IOException e) {
                    handleIOExceptionWritingToStream(e);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.mEofSeen     // Catch: all -> 0x0086
            if (r0 != 0) goto L_0x0028
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]     // Catch: all -> 0x0086
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x000f:
            r0 = r5
            r1 = r6
            int r0 = r0.read(r1)     // Catch: all -> 0x0086
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x002b
            r0 = r7
            r1 = r9
            long r1 = (long) r1
            long r0 = r0 + r1
            r7 = r0
            goto L_0x000f
        L_0x0028:
            r0 = 0
            r10 = r0
        L_0x002b:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x007d
            r0 = r5
            com.facebook.stetho.inspector.helper.ChromePeerManager r0 = r0.mNetworkPeerManager     // Catch: all -> 0x0086
            r6 = r0
            com.facebook.stetho.inspector.protocol.module.Console$MessageLevel r0 = com.facebook.stetho.inspector.protocol.module.Console.MessageLevel.ERROR     // Catch: all -> 0x0086
            r12 = r0
            com.facebook.stetho.inspector.protocol.module.Console$MessageSource r0 = com.facebook.stetho.inspector.protocol.module.Console.MessageSource.NETWORK     // Catch: all -> 0x0086
            r13 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0086
            r14 = r0
            r0 = r14
            r0.<init>()     // Catch: all -> 0x0086
            r0 = r14
            java.lang.String r1 = "There were "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0086
            r0 = r14
            r1 = r10
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: all -> 0x0086
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0086
            r0 = r14
            java.lang.String r1 = " bytes that were not consumed while processing request "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0086
            r0 = r14
            r1 = r5
            java.lang.String r1 = r1.mRequestId     // Catch: all -> 0x0086
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0086
            r0 = r6
            r1 = r12
            r2 = r13
            r3 = r14
            java.lang.String r3 = r3.toString()     // Catch: all -> 0x0086
            com.facebook.stetho.inspector.console.CLog.writeToConsole(r0, r1, r2, r3)     // Catch: all -> 0x0086
        L_0x007d:
            r0 = r5
            super.close()
            r0 = r5
            r0.closeOutputStreamQuietly()
            return
        L_0x0086:
            r6 = move-exception
            r0 = r5
            super.close()
            r0 = r5
            r0.closeOutputStreamQuietly()
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.stetho.inspector.network.ResponseHandlingInputStream.close():void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        try {
            int checkEOF = checkEOF(((FilterInputStream) this).in.read());
            if (checkEOF != -1) {
                this.mResponseHandler.onRead(1);
                writeToOutputStream(checkEOF);
            }
            return checkEOF;
        } catch (IOException e) {
            throw handleIOException(e);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int checkEOF = checkEOF(((FilterInputStream) this).in.read(bArr, i, i2));
            if (checkEOF != -1) {
                this.mResponseHandler.onRead(checkEOF);
                writeToOutputStream(bArr, i, checkEOF);
            }
            return checkEOF;
        } catch (IOException e) {
            throw handleIOException(e);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException("Mark not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2;
        synchronized (this) {
            byte[] skipBufferLocked = getSkipBufferLocked();
            j2 = 0;
            while (j2 < j) {
                int read = read(skipBufferLocked, 0, (int) Math.min(skipBufferLocked.length, j - j2));
                if (read == -1) {
                    break;
                }
                j2 += read;
            }
        }
        return j2;
    }
}
