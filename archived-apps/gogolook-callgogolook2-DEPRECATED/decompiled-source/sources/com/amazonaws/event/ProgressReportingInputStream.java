package com.amazonaws.event;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/event/ProgressReportingInputStream.class */
public class ProgressReportingInputStream extends SdkFilterInputStream {
    public boolean fireCompletedEvent;
    public final ProgressListenerCallbackExecutor listenerCallbackExecutor;
    public int unnotifiedByteCount;

    public ProgressReportingInputStream(InputStream inputStream, ProgressListenerCallbackExecutor progressListenerCallbackExecutor) {
        super(inputStream);
        this.listenerCallbackExecutor = progressListenerCallbackExecutor;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        int i = this.unnotifiedByteCount;
        if (i > 0) {
            this.listenerCallbackExecutor.progressChanged(new ProgressEvent(i));
            this.unnotifiedByteCount = 0;
        }
        super.close();
    }

    public final void notify(int i) {
        this.unnotifiedByteCount += i;
        int i2 = this.unnotifiedByteCount;
        if (i2 >= 8192) {
            this.listenerCallbackExecutor.progressChanged(new ProgressEvent(i2));
            this.unnotifiedByteCount = 0;
        }
    }

    public final void notifyCompleted() {
        if (this.fireCompletedEvent) {
            ProgressEvent progressEvent = new ProgressEvent(this.unnotifiedByteCount);
            progressEvent.setEventCode(4);
            this.unnotifiedByteCount = 0;
            this.listenerCallbackExecutor.progressChanged(progressEvent);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            notifyCompleted();
        } else {
            notify(1);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            notifyCompleted();
        }
        if (read != -1) {
            notify(read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        ProgressEvent progressEvent = new ProgressEvent(this.unnotifiedByteCount);
        progressEvent.setEventCode(32);
        this.listenerCallbackExecutor.progressChanged(progressEvent);
        this.unnotifiedByteCount = 0;
    }

    public void setFireCompletedEvent(boolean z) {
        this.fireCompletedEvent = z;
    }
}
