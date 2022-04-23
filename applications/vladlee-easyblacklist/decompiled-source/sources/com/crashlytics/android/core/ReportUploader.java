package com.crashlytics.android.core;

import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractRunnableC0025i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader.class */
public class ReportUploader {
    static final Map<String, String> HEADER_INVALID_CLS_FILE = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
    private static final short[] RETRY_INTERVALS = {10, 20, 30, 60, 120, 300};
    private final String apiKey;
    private final CreateReportSpiCall createReportCall;
    private final Object fileAccessLock = new Object();
    private final HandlingExceptionCheck handlingExceptionCheck;
    private final ReportFilesProvider reportFilesProvider;
    private Thread uploadThread;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$AlwaysSendCheck.class */
    static final class AlwaysSendCheck implements SendCheck {
        @Override // com.crashlytics.android.core.ReportUploader.SendCheck
        public final boolean canSendReports() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$HandlingExceptionCheck.class */
    public interface HandlingExceptionCheck {
        boolean isHandlingException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$ReportFilesProvider.class */
    public interface ReportFilesProvider {
        File[] getCompleteSessionFiles();

        File[] getInvalidSessionFiles();

        File[] getNativeReportFiles();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$SendCheck.class */
    public interface SendCheck {
        boolean canSendReports();
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$Worker.class */
    private class Worker extends AbstractRunnableC0025i {
        private final float delay;
        private final SendCheck sendCheck;

        Worker(float f, SendCheck sendCheck) {
            this.delay = f;
            this.sendCheck = sendCheck;
        }

        private void attemptUploadWithRetry() {
            float f;
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Starting report processing in " + this.delay + " second(s)...");
            if (this.delay > 0.0f) {
                try {
                    Thread.sleep(f * 1000.0f);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            List<Report> findReports = ReportUploader.this.findReports();
            if (!ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                if (findReports.isEmpty() || this.sendCheck.canSendReports()) {
                    int i = 0;
                    while (!findReports.isEmpty() && !ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                        C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Attempting to send " + findReports.size() + " report(s)");
                        for (Report report : findReports) {
                            ReportUploader.this.forceUpload(report);
                        }
                        List<Report> findReports2 = ReportUploader.this.findReports();
                        findReports = findReports2;
                        if (!findReports2.isEmpty()) {
                            long j = ReportUploader.RETRY_INTERVALS[Math.min(i, ReportUploader.RETRY_INTERVALS.length - 1)];
                            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Report submisson: scheduling delayed retry in " + j + " seconds");
                            Thread.sleep(j * 1000);
                            i++;
                            findReports = findReports2;
                        }
                    }
                    return;
                }
                C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "User declined to send. Removing " + findReports.size() + " Report(s).");
                for (Report report2 : findReports) {
                    report2.remove();
                }
            }
        }

        @Override // p000a.p001a.p002a.p003a.p004a.p006b.AbstractRunnableC0025i
        public void onRun() {
            try {
                attemptUploadWithRetry();
            } catch (Exception e) {
                C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "An unexpected error occurred while attempting to upload crash reports.", e);
            }
            ReportUploader.this.uploadThread = null;
        }
    }

    public ReportUploader(String str, CreateReportSpiCall createReportSpiCall, ReportFilesProvider reportFilesProvider, HandlingExceptionCheck handlingExceptionCheck) {
        if (createReportSpiCall != null) {
            this.createReportCall = createReportSpiCall;
            this.apiKey = str;
            this.reportFilesProvider = reportFilesProvider;
            this.handlingExceptionCheck = handlingExceptionCheck;
            return;
        }
        throw new IllegalArgumentException("createReportCall must not be null.");
    }

    List<Report> findReports() {
        File[] completeSessionFiles;
        File[] invalidSessionFiles;
        File[] nativeReportFiles;
        C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Checking for crash reports...");
        synchronized (this.fileAccessLock) {
            completeSessionFiles = this.reportFilesProvider.getCompleteSessionFiles();
            invalidSessionFiles = this.reportFilesProvider.getInvalidSessionFiles();
            nativeReportFiles = this.reportFilesProvider.getNativeReportFiles();
        }
        LinkedList linkedList = new LinkedList();
        if (completeSessionFiles != null) {
            for (File file : completeSessionFiles) {
                C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Found crash report " + file.getPath());
                linkedList.add(new SessionReport(file));
            }
        }
        HashMap hashMap = new HashMap();
        if (invalidSessionFiles != null) {
            for (File file2 : invalidSessionFiles) {
                String sessionIdFromSessionFile = CrashlyticsController.getSessionIdFromSessionFile(file2);
                if (!hashMap.containsKey(sessionIdFromSessionFile)) {
                    hashMap.put(sessionIdFromSessionFile, new LinkedList());
                }
                ((List) hashMap.get(sessionIdFromSessionFile)).add(file2);
            }
        }
        for (String str : hashMap.keySet()) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Found invalid session: ".concat(String.valueOf(str)));
            List list = (List) hashMap.get(str);
            linkedList.add(new InvalidSessionReport(str, (File[]) list.toArray(new File[list.size()])));
        }
        if (nativeReportFiles != null) {
            for (File file3 : nativeReportFiles) {
                linkedList.add(new NativeSessionReport(file3));
            }
        }
        if (linkedList.isEmpty()) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "No reports found.");
        }
        return linkedList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean forceUpload(Report report) {
        boolean z;
        synchronized (this.fileAccessLock) {
            try {
                boolean invoke = this.createReportCall.invoke(new CreateReportRequest(this.apiKey, report));
                AbstractC0150o c = C0137d.m10155c();
                StringBuilder sb = new StringBuilder("Crashlytics report upload ");
                sb.append(invoke ? "complete: " : "FAILED: ");
                sb.append(report.getIdentifier());
                c.mo10131c(CrashlyticsCore.TAG, sb.toString());
                z = false;
                if (invoke) {
                    report.remove();
                    z = true;
                }
            } catch (Exception e) {
                C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "Error occurred sending report ".concat(String.valueOf(report)), e);
                z = false;
            }
        }
        return z;
    }

    boolean isUploading() {
        return this.uploadThread != null;
    }

    public void uploadReports(float f, SendCheck sendCheck) {
        synchronized (this) {
            if (this.uploadThread != null) {
                C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Report upload has already been started.");
                return;
            }
            this.uploadThread = new Thread(new Worker(f, sendCheck), "Crashlytics Report Uploader");
            this.uploadThread.start();
        }
    }
}
