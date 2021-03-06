package com.google.firebase.crashlytics.internal.persistence;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.stetho.common.Utf8Charset;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.ImmutableList;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.settings.SettingsDataProvider;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence.class */
public class CrashlyticsReportPersistence {
    private static final String EVENT_COUNTER_FORMAT = "%010d";
    private static final int EVENT_COUNTER_WIDTH = 10;
    private static final FilenameFilter EVENT_FILE_FILTER;
    private static final String EVENT_FILE_NAME_PREFIX = "event";
    private static final Comparator<? super File> LATEST_SESSION_ID_FIRST_COMPARATOR;
    private static final int MAX_OPEN_SESSIONS = 8;
    private static final String NATIVE_REPORTS_DIRECTORY = "native-reports";
    private static final String NORMAL_EVENT_SUFFIX = "";
    private static final String OPEN_SESSIONS_DIRECTORY_NAME = "sessions";
    private static final String PRIORITY_EVENT_SUFFIX = "_";
    private static final String PRIORITY_REPORTS_DIRECTORY = "priority-reports";
    private static final String REPORTS_DIRECTORY = "reports";
    private static final String REPORT_FILE_NAME = "report";
    private static final String USER_FILE_NAME = "user";
    private static final String WORKING_DIRECTORY_NAME = "report-persistence";
    @NonNull
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    @NonNull
    private final File nativeReportsDirectory;
    @NonNull
    private final File openSessionsDirectory;
    @NonNull
    private final File priorityReportsDirectory;
    @NonNull
    private final File reportsDirectory;
    @NonNull
    private final SettingsDataProvider settingsDataProvider;
    private static final Charset UTF_8 = Charset.forName(Utf8Charset.NAME);
    private static final int EVENT_NAME_LENGTH = 15;
    private static final CrashlyticsReportJsonTransform TRANSFORM = new CrashlyticsReportJsonTransform();

    static {
        Comparator<? super File> comparator;
        FilenameFilter filenameFilter;
        comparator = CrashlyticsReportPersistence$$Lambda$5.instance;
        LATEST_SESSION_ID_FIRST_COMPARATOR = comparator;
        filenameFilter = CrashlyticsReportPersistence$$Lambda$6.instance;
        EVENT_FILE_FILTER = filenameFilter;
    }

    public CrashlyticsReportPersistence(@NonNull File file, @NonNull SettingsDataProvider settingsDataProvider) {
        File file2 = new File(file, WORKING_DIRECTORY_NAME);
        this.openSessionsDirectory = new File(file2, OPEN_SESSIONS_DIRECTORY_NAME);
        this.priorityReportsDirectory = new File(file2, PRIORITY_REPORTS_DIRECTORY);
        this.reportsDirectory = new File(file2, REPORTS_DIRECTORY);
        this.nativeReportsDirectory = new File(file2, NATIVE_REPORTS_DIRECTORY);
        this.settingsDataProvider = settingsDataProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean access$lambda$0(File file, String str) {
        return isNormalPriorityEventFile(file, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int access$lambda$1(File file, File file2) {
        return oldestEventFileFirst(file, file2);
    }

    @NonNull
    private List<File> capAndGetOpenSessions(@Nullable String str) {
        List<File> filesInDirectory = getFilesInDirectory(this.openSessionsDirectory, CrashlyticsReportPersistence$$Lambda$2.lambdaFactory$(str));
        Collections.sort(filesInDirectory, LATEST_SESSION_ID_FIRST_COMPARATOR);
        if (filesInDirectory.size() <= 8) {
            return filesInDirectory;
        }
        for (File file : filesInDirectory.subList(8, filesInDirectory.size())) {
            recursiveDelete(file);
        }
        return filesInDirectory.subList(0, 8);
    }

    private static int capFilesCount(List<File> list, int i) {
        int size = list.size();
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            recursiveDelete(file);
            size--;
        }
        return size;
    }

    private void capFinalizedReports() {
        int i = this.settingsDataProvider.getSettings().getSessionData().maxCompleteSessionsCount;
        List<File> allFinalizedReportFiles = getAllFinalizedReportFiles();
        int size = allFinalizedReportFiles.size();
        if (size > i) {
            for (File file : allFinalizedReportFiles.subList(i, size)) {
                file.delete();
            }
        }
    }

    @NonNull
    private static List<File> combineReportFiles(@NonNull List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (List<File> list : listArr) {
            i += list.size();
        }
        arrayList.ensureCapacity(i);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    @NonNull
    private static String generateEventFilename(int i, boolean z) {
        String format = String.format(Locale.US, EVENT_COUNTER_FORMAT, Integer.valueOf(i));
        String str = z ? PRIORITY_EVENT_SUFFIX : "";
        return "event" + format + str;
    }

    @NonNull
    private static List<File> getAllFilesInDirectory(@NonNull File file) {
        return getFilesInDirectory(file, (FileFilter) null);
    }

    @NonNull
    private List<File> getAllFinalizedReportFiles() {
        return sortAndCombineReportFiles(combineReportFiles(getAllFilesInDirectory(this.priorityReportsDirectory), getAllFilesInDirectory(this.nativeReportsDirectory)), getAllFilesInDirectory(this.reportsDirectory));
    }

    @NonNull
    private static String getEventNameWithoutPriority(@NonNull String str) {
        return str.substring(0, EVENT_NAME_LENGTH);
    }

    @NonNull
    private static List<File> getFilesInDirectory(@NonNull File file, @Nullable FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    @NonNull
    private static List<File> getFilesInDirectory(@NonNull File file, @Nullable FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    @NonNull
    private File getSessionDirectoryById(@NonNull String str) {
        return new File(this.openSessionsDirectory, str);
    }

    private static boolean isHighPriorityEventFile(@NonNull String str) {
        return str.startsWith("event") && str.endsWith(PRIORITY_EVENT_SUFFIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNormalPriorityEventFile(@NonNull File file, @NonNull String str) {
        return str.startsWith("event") && !str.endsWith(PRIORITY_EVENT_SUFFIX);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$capAndGetOpenSessions$3(String str, File file) {
        return file.isDirectory() && !file.getName().equals(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$deleteFinalizedReport$2(String str, File file, String str2) {
        return str2.startsWith(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$static$0(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$static$1(File file, String str) {
        return str.startsWith("event");
    }

    private static boolean makeDirectory(@NonNull File file) {
        return file.exists() || file.mkdirs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int oldestEventFileFirst(@NonNull File file, @NonNull File file2) {
        return getEventNameWithoutPriority(file.getName()).compareTo(getEventNameWithoutPriority(file2.getName()));
    }

    @NonNull
    private static File prepareDirectory(@NonNull File file) throws IOException {
        if (makeDirectory(file)) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    @NonNull
    private static String readTextFile(@NonNull File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), UTF_8);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        }
    }

    private static void recursiveDelete(@Nullable File file) {
        if (file != null) {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    recursiveDelete(file2);
                }
            }
            file.delete();
        }
    }

    @NonNull
    private static List<File> sortAndCombineReportFiles(@NonNull List<File>... listArr) {
        for (List<File> list : listArr) {
            Collections.sort(list, LATEST_SESSION_ID_FIRST_COMPARATOR);
        }
        return combineReportFiles(listArr);
    }

    private static void synthesizeNativeReportFile(@NonNull File file, @NonNull File file2, @NonNull CrashlyticsReport.FilesPayload filesPayload, @NonNull String str) {
        try {
            writeTextFile(new File(prepareDirectory(file2), str), TRANSFORM.reportToJson(TRANSFORM.reportFromJson(readTextFile(file)).withNdkPayload(filesPayload)));
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m8449d("Could not synthesize final native report file for " + file, e);
        }
    }

    private void synthesizeReport(@NonNull File file, long j) {
        boolean z;
        List<File> filesInDirectory = getFilesInDirectory(file, EVENT_FILE_FILTER);
        if (filesInDirectory.isEmpty()) {
            Logger.getLogger().m8450d("Session " + file.getName() + " has no events.");
            return;
        }
        Collections.sort(filesInDirectory);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z = false;
            for (File file2 : filesInDirectory) {
                try {
                    arrayList.add(TRANSFORM.eventFromJson(readTextFile(file2)));
                } catch (IOException e) {
                    Logger.getLogger().m8449d("Could not add event to report for " + file2, e);
                }
                if (z || isHighPriorityEventFile(file2.getName())) {
                    z = true;
                }
            }
        }
        File file3 = new File(file, USER_FILE_NAME);
        String str = null;
        if (file3.isFile()) {
            try {
                str = readTextFile(file3);
            } catch (IOException e2) {
                Logger.getLogger().m8449d("Could not read user ID file in " + file.getName(), e2);
                str = null;
            }
        }
        synthesizeReportFile(new File(file, REPORT_FILE_NAME), z ? this.priorityReportsDirectory : this.reportsDirectory, arrayList, j, z, str);
    }

    private static void synthesizeReportFile(@NonNull File file, @NonNull File file2, @NonNull List<CrashlyticsReport.Session.Event> list, long j, boolean z, @Nullable String str) {
        try {
            CrashlyticsReport withEvents = TRANSFORM.reportFromJson(readTextFile(file)).withSessionEndFields(j, z, str).withEvents(ImmutableList.from(list));
            CrashlyticsReport.Session session = withEvents.getSession();
            if (session != null) {
                writeTextFile(new File(prepareDirectory(file2), session.getIdentifier()), TRANSFORM.reportToJson(withEvents));
            }
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m8449d("Could not synthesize final report file for " + file, e);
        }
    }

    private static int trimEvents(@NonNull File file, int i) {
        FilenameFilter filenameFilter;
        Comparator comparator;
        filenameFilter = CrashlyticsReportPersistence$$Lambda$3.instance;
        List<File> filesInDirectory = getFilesInDirectory(file, filenameFilter);
        comparator = CrashlyticsReportPersistence$$Lambda$4.instance;
        Collections.sort(filesInDirectory, comparator);
        return capFilesCount(filesInDirectory, i);
    }

    private static void writeTextFile(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    public void deleteAllReports() {
        for (File file : getAllFinalizedReportFiles()) {
            file.delete();
        }
    }

    public void deleteFinalizedReport(String str) {
        FilenameFilter lambdaFactory$ = CrashlyticsReportPersistence$$Lambda$1.lambdaFactory$(str);
        for (File file : combineReportFiles(getFilesInDirectory(this.priorityReportsDirectory, lambdaFactory$), getFilesInDirectory(this.nativeReportsDirectory, lambdaFactory$), getFilesInDirectory(this.reportsDirectory, lambdaFactory$))) {
            file.delete();
        }
    }

    public void finalizeReports(@Nullable String str, long j) {
        for (File file : capAndGetOpenSessions(str)) {
            Logger logger = Logger.getLogger();
            logger.m8450d("Finalizing report for session " + file.getName());
            synthesizeReport(file, j);
            recursiveDelete(file);
        }
        capFinalizedReports();
    }

    public void finalizeSessionWithNativeEvent(@NonNull String str, @NonNull CrashlyticsReport.FilesPayload filesPayload) {
        synthesizeNativeReportFile(new File(getSessionDirectoryById(str), REPORT_FILE_NAME), this.nativeReportsDirectory, filesPayload, str);
    }

    @NonNull
    public List<CrashlyticsReportWithSessionId> loadFinalizedReports() {
        List<File> allFinalizedReportFiles = getAllFinalizedReportFiles();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(allFinalizedReportFiles.size());
        for (File file : getAllFinalizedReportFiles()) {
            try {
                arrayList.add(CrashlyticsReportWithSessionId.create(TRANSFORM.reportFromJson(readTextFile(file)), file.getName()));
            } catch (IOException e) {
                Logger logger = Logger.getLogger();
                logger.m8449d("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        return arrayList;
    }

    public void persistEvent(@NonNull CrashlyticsReport.Session.Event event, @NonNull String str) {
        persistEvent(event, str, false);
    }

    public void persistEvent(@NonNull CrashlyticsReport.Session.Event event, @NonNull String str, boolean z) {
        int i = this.settingsDataProvider.getSettings().getSessionData().maxCustomExceptionEvents;
        File sessionDirectoryById = getSessionDirectoryById(str);
        try {
            writeTextFile(new File(sessionDirectoryById, generateEventFilename(this.eventCounter.getAndIncrement(), z)), TRANSFORM.eventToJson(event));
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m8449d("Could not persist event for session " + str, e);
        }
        trimEvents(sessionDirectoryById, i);
    }

    public void persistReport(@NonNull CrashlyticsReport crashlyticsReport) {
        CrashlyticsReport.Session session = crashlyticsReport.getSession();
        if (session == null) {
            Logger.getLogger().m8450d("Could not get session for report");
            return;
        }
        String identifier = session.getIdentifier();
        try {
            File prepareDirectory = prepareDirectory(getSessionDirectoryById(identifier));
            writeTextFile(new File(prepareDirectory, REPORT_FILE_NAME), TRANSFORM.reportToJson(crashlyticsReport));
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m8449d("Could not persist report for session " + identifier, e);
        }
    }

    public void persistUserIdForSession(@NonNull String str, @NonNull String str2) {
        try {
            writeTextFile(new File(getSessionDirectoryById(str2), USER_FILE_NAME), str);
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m8449d("Could not persist user ID for session " + str2, e);
        }
    }
}
