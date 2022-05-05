package com.crashlytics.android.core;

import android.app.ActivityManager;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/SessionProtobufHelper.class */
public class SessionProtobufHelper {
    private static final String SIGNAL_DEFAULT = "0";
    private static final ByteString SIGNAL_DEFAULT_BYTE_STRING = ByteString.copyFromUtf8(SIGNAL_DEFAULT);
    private static final ByteString UNITY_PLATFORM_BYTE_STRING = ByteString.copyFromUtf8("Unity");

    private SessionProtobufHelper() {
    }

    private static int getBinaryImageSize(ByteString byteString, ByteString byteString2) {
        int computeUInt64Size = CodedOutputStream.computeUInt64Size(1, 0L) + 0 + CodedOutputStream.computeUInt64Size(2, 0L) + CodedOutputStream.computeBytesSize(3, byteString);
        int i = computeUInt64Size;
        if (byteString2 != null) {
            i = computeUInt64Size + CodedOutputStream.computeBytesSize(4, byteString2);
        }
        return i;
    }

    private static int getDeviceIdentifierSize(C0043x.EnumC0044a aVar, String str) {
        return CodedOutputStream.computeEnumSize(1, aVar.f100h) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str));
    }

    private static int getEventAppCustomAttributeSize(String str, String str2) {
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(str));
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return computeBytesSize + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str3));
    }

    private static int getEventAppExecutionExceptionSize(TrimmedThrowableData trimmedThrowableData, int i, int i2) {
        int i3 = 0;
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(trimmedThrowableData.className)) + 0;
        String str = trimmedThrowableData.localizedMessage;
        int i4 = computeBytesSize;
        if (str != null) {
            i4 = computeBytesSize + CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(str));
        }
        for (StackTraceElement stackTraceElement : trimmedThrowableData.stacktrace) {
            int frameSize = getFrameSize(stackTraceElement, true);
            i4 += CodedOutputStream.computeTagSize(4) + CodedOutputStream.computeRawVarint32Size(frameSize) + frameSize;
        }
        TrimmedThrowableData trimmedThrowableData2 = trimmedThrowableData.cause;
        int i5 = i4;
        if (trimmedThrowableData2 != null) {
            TrimmedThrowableData trimmedThrowableData3 = trimmedThrowableData2;
            if (i < i2) {
                int eventAppExecutionExceptionSize = getEventAppExecutionExceptionSize(trimmedThrowableData2, i + 1, i2);
                i5 = i4 + CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionExceptionSize) + eventAppExecutionExceptionSize;
            } else {
                while (trimmedThrowableData3 != null) {
                    trimmedThrowableData3 = trimmedThrowableData3.cause;
                    i3++;
                }
                i5 = i4 + CodedOutputStream.computeUInt32Size(7, i3);
            }
        }
        return i5;
    }

    private static int getEventAppExecutionSignalSize() {
        return CodedOutputStream.computeBytesSize(1, SIGNAL_DEFAULT_BYTE_STRING) + 0 + CodedOutputStream.computeBytesSize(2, SIGNAL_DEFAULT_BYTE_STRING) + CodedOutputStream.computeUInt64Size(3, 0L);
    }

    private static int getEventAppExecutionSize(TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, ByteString byteString, ByteString byteString2) {
        int threadSize = getThreadSize(thread, stackTraceElementArr, 4, true);
        int computeTagSize = CodedOutputStream.computeTagSize(1);
        int computeRawVarint32Size = CodedOutputStream.computeRawVarint32Size(threadSize);
        int length = threadArr.length;
        int i2 = computeTagSize + computeRawVarint32Size + threadSize + 0;
        for (int i3 = 0; i3 < length; i3++) {
            int threadSize2 = getThreadSize(threadArr[i3], list.get(i3), 0, false);
            i2 += CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(threadSize2) + threadSize2;
        }
        int eventAppExecutionExceptionSize = getEventAppExecutionExceptionSize(trimmedThrowableData, 1, i);
        int computeTagSize2 = CodedOutputStream.computeTagSize(2);
        int computeRawVarint32Size2 = CodedOutputStream.computeRawVarint32Size(eventAppExecutionExceptionSize);
        int eventAppExecutionSignalSize = getEventAppExecutionSignalSize();
        int computeTagSize3 = CodedOutputStream.computeTagSize(3);
        int computeRawVarint32Size3 = CodedOutputStream.computeRawVarint32Size(eventAppExecutionSignalSize);
        int binaryImageSize = getBinaryImageSize(byteString, byteString2);
        return i2 + computeTagSize2 + computeRawVarint32Size2 + eventAppExecutionExceptionSize + computeTagSize3 + computeRawVarint32Size3 + eventAppExecutionSignalSize + CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(binaryImageSize) + binaryImageSize;
    }

    private static int getEventAppSize(TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, ByteString byteString, ByteString byteString2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2) {
        int eventAppExecutionSize = getEventAppExecutionSize(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i, byteString, byteString2);
        boolean z = false;
        int computeTagSize = CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(eventAppExecutionSize) + eventAppExecutionSize + 0;
        int i3 = computeTagSize;
        if (map != null) {
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (true) {
                i3 = computeTagSize;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it.next();
                int eventAppCustomAttributeSize = getEventAppCustomAttributeSize(next.getKey(), next.getValue());
                computeTagSize += CodedOutputStream.computeTagSize(2) + CodedOutputStream.computeRawVarint32Size(eventAppCustomAttributeSize) + eventAppCustomAttributeSize;
            }
        }
        int i4 = i3;
        if (runningAppProcessInfo != null) {
            if (runningAppProcessInfo.importance != 100) {
                z = true;
            }
            i4 = i3 + CodedOutputStream.computeBoolSize(3, z);
        }
        return i4 + CodedOutputStream.computeUInt32Size(4, i2);
    }

    private static int getEventDeviceSize(Float f, int i, boolean z, int i2, long j, long j2) {
        int i3 = 0;
        if (f != null) {
            i3 = 0 + CodedOutputStream.computeFloatSize(1, f.floatValue());
        }
        return i3 + CodedOutputStream.computeSInt32Size(2, i) + CodedOutputStream.computeBoolSize(3, z) + CodedOutputStream.computeUInt32Size(4, i2) + CodedOutputStream.computeUInt64Size(5, j) + CodedOutputStream.computeUInt64Size(6, j2);
    }

    private static int getEventLogSize(ByteString byteString) {
        return CodedOutputStream.computeBytesSize(1, byteString);
    }

    private static int getFrameSize(StackTraceElement stackTraceElement, boolean z) {
        int i = 0;
        int computeUInt64Size = CodedOutputStream.computeUInt64Size(1, stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0) : 0L);
        int computeBytesSize = computeUInt64Size + 0 + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        int i2 = computeBytesSize;
        if (stackTraceElement.getFileName() != null) {
            i2 = computeBytesSize + CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        int i3 = i2;
        if (!stackTraceElement.isNativeMethod()) {
            i3 = i2;
            if (stackTraceElement.getLineNumber() > 0) {
                i3 = i2 + CodedOutputStream.computeUInt64Size(4, stackTraceElement.getLineNumber());
            }
        }
        if (z) {
            i = 2;
        }
        return i3 + CodedOutputStream.computeUInt32Size(5, i);
    }

    private static int getSessionAppOrgSize(ByteString byteString) {
        return CodedOutputStream.computeBytesSize(1, byteString) + 0;
    }

    private static int getSessionAppSize(ByteString byteString, ByteString byteString2, ByteString byteString3, ByteString byteString4, ByteString byteString5, int i, ByteString byteString6) {
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, byteString);
        int computeBytesSize2 = CodedOutputStream.computeBytesSize(2, byteString3);
        int computeBytesSize3 = CodedOutputStream.computeBytesSize(3, byteString4);
        int sessionAppOrgSize = getSessionAppOrgSize(byteString2);
        int computeTagSize = computeBytesSize + 0 + computeBytesSize2 + computeBytesSize3 + CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(sessionAppOrgSize) + sessionAppOrgSize + CodedOutputStream.computeBytesSize(6, byteString5);
        int i2 = computeTagSize;
        if (byteString6 != null) {
            i2 = computeTagSize + CodedOutputStream.computeBytesSize(8, UNITY_PLATFORM_BYTE_STRING) + CodedOutputStream.computeBytesSize(9, byteString6);
        }
        return i2 + CodedOutputStream.computeEnumSize(10, i);
    }

    private static int getSessionDeviceSize(int i, ByteString byteString, int i2, long j, long j2, boolean z, Map<C0043x.EnumC0044a, String> map, int i3, ByteString byteString2, ByteString byteString3) {
        int i4 = 0;
        int computeEnumSize = CodedOutputStream.computeEnumSize(3, i) + 0 + (byteString == null ? 0 : CodedOutputStream.computeBytesSize(4, byteString)) + CodedOutputStream.computeUInt32Size(5, i2) + CodedOutputStream.computeUInt64Size(6, j) + CodedOutputStream.computeUInt64Size(7, j2) + CodedOutputStream.computeBoolSize(10, z);
        int i5 = computeEnumSize;
        if (map != null) {
            Iterator<Map.Entry<C0043x.EnumC0044a, String>> it = map.entrySet().iterator();
            while (true) {
                i5 = computeEnumSize;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<C0043x.EnumC0044a, String> next = it.next();
                int deviceIdentifierSize = getDeviceIdentifierSize(next.getKey(), next.getValue());
                computeEnumSize += CodedOutputStream.computeTagSize(11) + CodedOutputStream.computeRawVarint32Size(deviceIdentifierSize) + deviceIdentifierSize;
            }
        }
        int computeUInt32Size = CodedOutputStream.computeUInt32Size(12, i3);
        int computeBytesSize = byteString2 == null ? 0 : CodedOutputStream.computeBytesSize(13, byteString2);
        if (byteString3 != null) {
            i4 = CodedOutputStream.computeBytesSize(14, byteString3);
        }
        return i5 + computeUInt32Size + computeBytesSize + i4;
    }

    private static int getSessionEventSize(long j, String str, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2, ByteString byteString, ByteString byteString2, Float f, int i3, boolean z, long j2, long j3, ByteString byteString3) {
        int computeUInt64Size = CodedOutputStream.computeUInt64Size(1, j);
        int computeBytesSize = CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str));
        int eventAppSize = getEventAppSize(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i, byteString, byteString2, map, runningAppProcessInfo, i2);
        int computeTagSize = CodedOutputStream.computeTagSize(3);
        int computeRawVarint32Size = CodedOutputStream.computeRawVarint32Size(eventAppSize);
        int eventDeviceSize = getEventDeviceSize(f, i3, z, i2, j2, j3);
        int computeTagSize2 = computeUInt64Size + 0 + computeBytesSize + computeTagSize + computeRawVarint32Size + eventAppSize + CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(eventDeviceSize) + eventDeviceSize;
        int i4 = computeTagSize2;
        if (byteString3 != null) {
            int eventLogSize = getEventLogSize(byteString3);
            i4 = computeTagSize2 + CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(eventLogSize) + eventLogSize;
        }
        return i4;
    }

    private static int getSessionOSSize(ByteString byteString, ByteString byteString2, boolean z) {
        return CodedOutputStream.computeEnumSize(1, 3) + 0 + CodedOutputStream.computeBytesSize(2, byteString) + CodedOutputStream.computeBytesSize(3, byteString2) + CodedOutputStream.computeBoolSize(4, z);
    }

    private static int getThreadSize(Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(thread.getName())) + CodedOutputStream.computeUInt32Size(2, i);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            int frameSize = getFrameSize(stackTraceElement, z);
            computeBytesSize += CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(frameSize) + frameSize;
        }
        return computeBytesSize;
    }

    private static ByteString stringToByteString(String str) {
        if (str == null) {
            return null;
        }
        return ByteString.copyFromUtf8(str);
    }

    public static void writeBeginSession(CodedOutputStream codedOutputStream, String str, String str2, long j) {
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(str2));
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(str));
        codedOutputStream.writeUInt64(3, j);
    }

    private static void writeFrame(CodedOutputStream codedOutputStream, int i, StackTraceElement stackTraceElement, boolean z) {
        codedOutputStream.writeTag(i, 2);
        codedOutputStream.writeRawVarint32(getFrameSize(stackTraceElement, z));
        codedOutputStream.writeUInt64(1, stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0) : 0L);
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        int i2 = 4;
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            codedOutputStream.writeUInt64(4, stackTraceElement.getLineNumber());
        }
        if (!z) {
            i2 = 0;
        }
        codedOutputStream.writeUInt32(5, i2);
    }

    public static void writeSessionApp(CodedOutputStream codedOutputStream, String str, String str2, String str3, String str4, String str5, int i, String str6) {
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString copyFromUtf82 = ByteString.copyFromUtf8(str2);
        ByteString copyFromUtf83 = ByteString.copyFromUtf8(str3);
        ByteString copyFromUtf84 = ByteString.copyFromUtf8(str4);
        ByteString copyFromUtf85 = ByteString.copyFromUtf8(str5);
        ByteString copyFromUtf86 = str6 != null ? ByteString.copyFromUtf8(str6) : null;
        codedOutputStream.writeTag(7, 2);
        codedOutputStream.writeRawVarint32(getSessionAppSize(copyFromUtf8, copyFromUtf82, copyFromUtf83, copyFromUtf84, copyFromUtf85, i, copyFromUtf86));
        codedOutputStream.writeBytes(1, copyFromUtf8);
        codedOutputStream.writeBytes(2, copyFromUtf83);
        codedOutputStream.writeBytes(3, copyFromUtf84);
        codedOutputStream.writeTag(5, 2);
        codedOutputStream.writeRawVarint32(getSessionAppOrgSize(copyFromUtf82));
        codedOutputStream.writeBytes(1, copyFromUtf82);
        codedOutputStream.writeBytes(6, copyFromUtf85);
        if (copyFromUtf86 != null) {
            codedOutputStream.writeBytes(8, UNITY_PLATFORM_BYTE_STRING);
            codedOutputStream.writeBytes(9, copyFromUtf86);
        }
        codedOutputStream.writeEnum(10, i);
    }

    public static void writeSessionDevice(CodedOutputStream codedOutputStream, int i, String str, int i2, long j, long j2, boolean z, Map<C0043x.EnumC0044a, String> map, int i3, String str2, String str3) {
        ByteString stringToByteString = stringToByteString(str);
        ByteString stringToByteString2 = stringToByteString(str3);
        ByteString stringToByteString3 = stringToByteString(str2);
        codedOutputStream.writeTag(9, 2);
        codedOutputStream.writeRawVarint32(getSessionDeviceSize(i, stringToByteString, i2, j, j2, z, map, i3, stringToByteString3, stringToByteString2));
        codedOutputStream.writeEnum(3, i);
        codedOutputStream.writeBytes(4, stringToByteString);
        codedOutputStream.writeUInt32(5, i2);
        codedOutputStream.writeUInt64(6, j);
        codedOutputStream.writeUInt64(7, j2);
        codedOutputStream.writeBool(10, z);
        for (Map.Entry<C0043x.EnumC0044a, String> entry : map.entrySet()) {
            codedOutputStream.writeTag(11, 2);
            codedOutputStream.writeRawVarint32(getDeviceIdentifierSize(entry.getKey(), entry.getValue()));
            codedOutputStream.writeEnum(1, entry.getKey().f100h);
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(entry.getValue()));
        }
        codedOutputStream.writeUInt32(12, i3);
        if (stringToByteString3 != null) {
            codedOutputStream.writeBytes(13, stringToByteString3);
        }
        if (stringToByteString2 != null) {
            codedOutputStream.writeBytes(14, stringToByteString2);
        }
    }

    public static void writeSessionEvent(CodedOutputStream codedOutputStream, long j, String str, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, Map<String, String> map, LogFileManager logFileManager, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i, String str2, String str3, Float f, int i2, boolean z, long j2, long j3) {
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str2);
        ByteString copyFromUtf82 = str3 == null ? null : ByteString.copyFromUtf8(str3.replace("-", ""));
        ByteString byteStringForLog = logFileManager.getByteStringForLog();
        if (byteStringForLog == null) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "No log data to include with this event.");
        }
        logFileManager.clearLog();
        codedOutputStream.writeTag(10, 2);
        codedOutputStream.writeRawVarint32(getSessionEventSize(j, str, trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, 8, map, runningAppProcessInfo, i, copyFromUtf8, copyFromUtf82, f, i2, z, j2, j3, byteStringForLog));
        codedOutputStream.writeUInt64(1, j);
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(str));
        writeSessionEventApp(codedOutputStream, trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, 8, copyFromUtf8, copyFromUtf82, map, runningAppProcessInfo, i);
        writeSessionEventDevice(codedOutputStream, f, i2, z, i, j2, j3);
        writeSessionEventLog(codedOutputStream, byteStringForLog);
    }

    private static void writeSessionEventApp(CodedOutputStream codedOutputStream, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, ByteString byteString, ByteString byteString2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2) {
        codedOutputStream.writeTag(3, 2);
        codedOutputStream.writeRawVarint32(getEventAppSize(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i, byteString, byteString2, map, runningAppProcessInfo, i2));
        writeSessionEventAppExecution(codedOutputStream, trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i, byteString, byteString2);
        if (map != null && !map.isEmpty()) {
            writeSessionEventAppCustomAttributes(codedOutputStream, map);
        }
        if (runningAppProcessInfo != null) {
            codedOutputStream.writeBool(3, runningAppProcessInfo.importance != 100);
        }
        codedOutputStream.writeUInt32(4, i2);
    }

    private static void writeSessionEventAppCustomAttributes(CodedOutputStream codedOutputStream, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            codedOutputStream.writeTag(2, 2);
            codedOutputStream.writeRawVarint32(getEventAppCustomAttributeSize(entry.getKey(), entry.getValue()));
            codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(entry.getKey()));
            String value = entry.getValue();
            String str = value;
            if (value == null) {
                str = "";
            }
            codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(str));
        }
    }

    private static void writeSessionEventAppExecution(CodedOutputStream codedOutputStream, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, ByteString byteString, ByteString byteString2) {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(getEventAppExecutionSize(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, i, byteString, byteString2));
        writeThread(codedOutputStream, thread, stackTraceElementArr, 4, true);
        int length = threadArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            writeThread(codedOutputStream, threadArr[i2], list.get(i2), 0, false);
        }
        writeSessionEventAppExecutionException(codedOutputStream, trimmedThrowableData, 1, i, 2);
        codedOutputStream.writeTag(3, 2);
        codedOutputStream.writeRawVarint32(getEventAppExecutionSignalSize());
        codedOutputStream.writeBytes(1, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream.writeBytes(2, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream.writeUInt64(3, 0L);
        codedOutputStream.writeTag(4, 2);
        codedOutputStream.writeRawVarint32(getBinaryImageSize(byteString, byteString2));
        codedOutputStream.writeUInt64(1, 0L);
        codedOutputStream.writeUInt64(2, 0L);
        codedOutputStream.writeBytes(3, byteString);
        if (byteString2 != null) {
            codedOutputStream.writeBytes(4, byteString2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0080, code lost:
        if (r6 == null) goto L_0x008e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0083, code lost:
        r6 = r6.cause;
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x008e, code lost:
        r5.writeUInt32(7, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0096, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void writeSessionEventAppExecutionException(com.crashlytics.android.core.CodedOutputStream r5, com.crashlytics.android.core.TrimmedThrowableData r6, int r7, int r8, int r9) {
        /*
        L_0x0000:
            r0 = r5
            r1 = r9
            r2 = 2
            r0.writeTag(r1, r2)
            r0 = r5
            r1 = r6
            r2 = 1
            r3 = r8
            int r1 = getEventAppExecutionExceptionSize(r1, r2, r3)
            r0.writeRawVarint32(r1)
            r0 = r5
            r1 = 1
            r2 = r6
            java.lang.String r2 = r2.className
            com.crashlytics.android.core.ByteString r2 = com.crashlytics.android.core.ByteString.copyFromUtf8(r2)
            r0.writeBytes(r1, r2)
            r0 = r6
            java.lang.String r0 = r0.localizedMessage
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0032
            r0 = r5
            r1 = 3
            r2 = r10
            com.crashlytics.android.core.ByteString r2 = com.crashlytics.android.core.ByteString.copyFromUtf8(r2)
            r0.writeBytes(r1, r2)
        L_0x0032:
            r0 = r6
            java.lang.StackTraceElement[] r0 = r0.stacktrace
            r10 = r0
            r0 = r10
            int r0 = r0.length
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = 0
            r9 = r0
        L_0x0043:
            r0 = r9
            r1 = r11
            if (r0 >= r1) goto L_0x005b
            r0 = r5
            r1 = 4
            r2 = r10
            r3 = r9
            r2 = r2[r3]
            r3 = 1
            writeFrame(r0, r1, r2, r3)
            int r9 = r9 + 1
            goto L_0x0043
        L_0x005b:
            r0 = r6
            com.crashlytics.android.core.TrimmedThrowableData r0 = r0.cause
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0096
            r0 = r12
            r9 = r0
            r0 = r10
            r6 = r0
            r0 = r7
            r1 = r8
            if (r0 >= r1) goto L_0x007f
            int r7 = r7 + 1
            r0 = 6
            r9 = r0
            r0 = r10
            r6 = r0
            goto L_0x0000
        L_0x007f:
            r0 = r6
            if (r0 == 0) goto L_0x008e
            r0 = r6
            com.crashlytics.android.core.TrimmedThrowableData r0 = r0.cause
            r6 = r0
            int r9 = r9 + 1
            goto L_0x007f
        L_0x008e:
            r0 = r5
            r1 = 7
            r2 = r9
            r0.writeUInt32(r1, r2)
        L_0x0096:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.core.SessionProtobufHelper.writeSessionEventAppExecutionException(com.crashlytics.android.core.CodedOutputStream, com.crashlytics.android.core.TrimmedThrowableData, int, int, int):void");
    }

    private static void writeSessionEventDevice(CodedOutputStream codedOutputStream, Float f, int i, boolean z, int i2, long j, long j2) {
        codedOutputStream.writeTag(5, 2);
        codedOutputStream.writeRawVarint32(getEventDeviceSize(f, i, z, i2, j, j2));
        if (f != null) {
            codedOutputStream.writeFloat(1, f.floatValue());
        }
        codedOutputStream.writeSInt32(2, i);
        codedOutputStream.writeBool(3, z);
        codedOutputStream.writeUInt32(4, i2);
        codedOutputStream.writeUInt64(5, j);
        codedOutputStream.writeUInt64(6, j2);
    }

    private static void writeSessionEventLog(CodedOutputStream codedOutputStream, ByteString byteString) {
        if (byteString != null) {
            codedOutputStream.writeTag(6, 2);
            codedOutputStream.writeRawVarint32(getEventLogSize(byteString));
            codedOutputStream.writeBytes(1, byteString);
        }
    }

    public static void writeSessionOS(CodedOutputStream codedOutputStream, String str, String str2, boolean z) {
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString copyFromUtf82 = ByteString.copyFromUtf8(str2);
        codedOutputStream.writeTag(8, 2);
        codedOutputStream.writeRawVarint32(getSessionOSSize(copyFromUtf8, copyFromUtf82, z));
        codedOutputStream.writeEnum(1, 3);
        codedOutputStream.writeBytes(2, copyFromUtf8);
        codedOutputStream.writeBytes(3, copyFromUtf82);
        codedOutputStream.writeBool(4, z);
    }

    public static void writeSessionUser(CodedOutputStream codedOutputStream, String str, String str2, String str3) {
        String str4 = str;
        if (str == null) {
            str4 = "";
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str4);
        ByteString stringToByteString = stringToByteString(str2);
        ByteString stringToByteString2 = stringToByteString(str3);
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, copyFromUtf8) + 0;
        int i = computeBytesSize;
        if (str2 != null) {
            i = computeBytesSize + CodedOutputStream.computeBytesSize(2, stringToByteString);
        }
        int i2 = i;
        if (str3 != null) {
            i2 = i + CodedOutputStream.computeBytesSize(3, stringToByteString2);
        }
        codedOutputStream.writeTag(6, 2);
        codedOutputStream.writeRawVarint32(i2);
        codedOutputStream.writeBytes(1, copyFromUtf8);
        if (str2 != null) {
            codedOutputStream.writeBytes(2, stringToByteString);
        }
        if (str3 != null) {
            codedOutputStream.writeBytes(3, stringToByteString2);
        }
    }

    private static void writeThread(CodedOutputStream codedOutputStream, Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(getThreadSize(thread, stackTraceElementArr, i, z));
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(thread.getName()));
        codedOutputStream.writeUInt32(2, i);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            writeFrame(codedOutputStream, 3, stackTraceElement, z);
        }
    }
}
