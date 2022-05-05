package com.crashlytics.android.core;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0008aa;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/QueueFileLogStore.class */
class QueueFileLogStore implements FileLogStore {
    private C0008aa logFile;
    private final int maxLogSize;
    private final File workingFile;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/QueueFileLogStore$LogBytes.class */
    public class LogBytes {
        public final byte[] bytes;
        public final int offset;

        public LogBytes(byte[] bArr, int i) {
            this.bytes = bArr;
            this.offset = i;
        }
    }

    public QueueFileLogStore(File file, int i) {
        this.workingFile = file;
        this.maxLogSize = i;
    }

    private void doWriteToLog(long j, String str) {
        int i;
        if (this.logFile != null) {
            String str2 = str;
            if (str == null) {
                str2 = "null";
            }
            try {
                String str3 = str2;
                if (str2.length() > this.maxLogSize / 4) {
                    str3 = "..." + str2.substring(str2.length() - i);
                }
                this.logFile.m10391a(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str3.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes("UTF-8"));
                while (!this.logFile.m10387b() && this.logFile.m10403a() > this.maxLogSize) {
                    this.logFile.m10383c();
                }
            } catch (IOException e) {
                C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "There was a problem writing to the Crashlytics log.", e);
            }
        }
    }

    private LogBytes getLogBytes() {
        if (!this.workingFile.exists()) {
            return null;
        }
        openLogFile();
        C0008aa aaVar = this.logFile;
        if (aaVar == null) {
            return null;
        }
        final int[] iArr = {0};
        final byte[] bArr = new byte[aaVar.m10403a()];
        try {
            this.logFile.m10397a(new C0008aa.AbstractC0011c() { // from class: com.crashlytics.android.core.QueueFileLogStore.1
                @Override // p000a.p001a.p002a.p003a.p004a.p006b.C0008aa.AbstractC0011c
                public void read(InputStream inputStream, int i) {
                    try {
                        inputStream.read(bArr, iArr[0], i);
                        int[] iArr2 = iArr;
                        iArr2[0] = iArr2[0] + i;
                    } finally {
                        inputStream.close();
                    }
                }
            });
        } catch (IOException e) {
            C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "A problem occurred while reading the Crashlytics log file.", e);
        }
        return new LogBytes(bArr, iArr[0]);
    }

    private void openLogFile() {
        if (this.logFile == null) {
            try {
                this.logFile = new C0008aa(this.workingFile);
            } catch (IOException e) {
                AbstractC0150o c = C0137d.m10155c();
                c.mo10130c(CrashlyticsCore.TAG, "Could not open log file: " + this.workingFile, e);
            }
        }
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void closeLogFile() {
        C0026j.m10349a(this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void deleteLogFile() {
        closeLogFile();
        this.workingFile.delete();
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public ByteString getLogAsByteString() {
        LogBytes logBytes = getLogBytes();
        if (logBytes == null) {
            return null;
        }
        return ByteString.copyFrom(logBytes.bytes, 0, logBytes.offset);
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public byte[] getLogAsBytes() {
        LogBytes logBytes = getLogBytes();
        if (logBytes == null) {
            return null;
        }
        return logBytes.bytes;
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void writeToLog(long j, String str) {
        openLogFile();
        doWriteToLog(j, str);
    }
}
