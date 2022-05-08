package org.apache.commons.p018io;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.commons.cli.HelpFormatter;
/* renamed from: org.apache.commons.io.FileSystemUtils */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/FileSystemUtils.class */
public class FileSystemUtils {

    /* renamed from: DF */
    private static final String f764DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();

    /* renamed from: OS */
    private static final int f765OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        int i;
        String str;
        String property;
        try {
            property = System.getProperty("os.name");
        } catch (Exception e) {
            i = -1;
            str = "df";
        }
        if (property == null) {
            throw new IOException("os.name not found");
        }
        String lowerCase = property.toLowerCase(Locale.ENGLISH);
        if (lowerCase.contains("windows")) {
            i = 1;
            str = "df";
        } else {
            if (!lowerCase.contains("linux") && !lowerCase.contains("mpe/ix") && !lowerCase.contains("freebsd") && !lowerCase.contains("irix") && !lowerCase.contains("digital unix") && !lowerCase.contains("unix") && !lowerCase.contains("mac os x")) {
                if (!lowerCase.contains("sun os") && !lowerCase.contains("sunos") && !lowerCase.contains("solaris")) {
                    str = "df";
                    i = 3;
                    if (!lowerCase.contains("hp-ux")) {
                        if (lowerCase.contains("aix")) {
                            str = "df";
                            i = 3;
                        } else {
                            i = 0;
                            str = "df";
                        }
                    }
                }
                str = "/usr/xpg4/bin/df";
                i = 3;
            }
            i = 2;
            str = "df";
        }
        f765OS = i;
        f764DF = str;
    }

    @Deprecated
    public static long freeSpace(String str) throws IOException {
        return INSTANCE.freeSpaceOS(str, f765OS, false, -1L);
    }

    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1L);
    }

    public static long freeSpaceKb(long j) throws IOException {
        return freeSpaceKb(new File(".").getAbsolutePath(), j);
    }

    public static long freeSpaceKb(String str) throws IOException {
        return freeSpaceKb(str, -1L);
    }

    public static long freeSpaceKb(String str, long j) throws IOException {
        return INSTANCE.freeSpaceOS(str, f765OS, true, j);
    }

    long freeSpaceOS(String str, int i, boolean z, long j) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Path must not be null");
        }
        switch (i) {
            case 0:
                throw new IllegalStateException("Unsupported operating system");
            case 1:
                return z ? freeSpaceWindows(str, j) / 1024 : freeSpaceWindows(str, j);
            case 2:
                return freeSpaceUnix(str, z, false, j);
            case 3:
                return freeSpaceUnix(str, z, true, j);
            default:
                throw new IllegalStateException("Exception caught when determining operating system");
        }
    }

    long freeSpaceUnix(String str, boolean z, boolean z2, long j) throws IOException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String str2 = HelpFormatter.DEFAULT_OPT_PREFIX;
        if (z) {
            str2 = HelpFormatter.DEFAULT_OPT_PREFIX + "k";
        }
        String str3 = str2;
        if (z2) {
            str3 = str2 + "P";
        }
        List<String> performCommand = performCommand(str3.length() > 1 ? new String[]{f764DF, str3, str} : new String[]{f764DF, str}, 3, j);
        if (performCommand.size() < 2) {
            throw new IOException("Command line '" + f764DF + "' did not return info as expected for path '" + str + "'- response was " + performCommand);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(performCommand.get(1), " ");
        if (stringTokenizer.countTokens() >= 4) {
            stringTokenizer.nextToken();
        } else if (stringTokenizer.countTokens() != 1 || performCommand.size() < 3) {
            throw new IOException("Command line '" + f764DF + "' did not return data as expected for path '" + str + "'- check path is valid");
        } else {
            stringTokenizer = new StringTokenizer(performCommand.get(2), " ");
        }
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), str);
    }

    long freeSpaceWindows(String str, long j) throws IOException {
        String normalize = FilenameUtils.normalize(str, false);
        String str2 = normalize;
        if (normalize.length() > 0) {
            str2 = normalize;
            if (normalize.charAt(0) != '\"') {
                str2 = "\"" + normalize + "\"";
            }
        }
        List<String> performCommand = performCommand(new String[]{"cmd.exe", "/C", "dir /a /-c " + str2}, Integer.MAX_VALUE, j);
        for (int size = performCommand.size() - 1; size >= 0; size--) {
            String str3 = performCommand.get(size);
            if (str3.length() > 0) {
                return parseDir(str3, str2);
            }
        }
        throw new IOException("Command line 'dir /-c' did not return any info for path '" + str2 + "'");
    }

    Process openProcess(String[] strArr) throws IOException {
        return Runtime.getRuntime().exec(strArr);
    }

    long parseBytes(String str, String str2) throws IOException {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong >= 0) {
                return parseLong;
            }
            throw new IOException("Command line '" + f764DF + "' did not find free space in response for path '" + str2 + "'- check path is valid");
        } catch (NumberFormatException e) {
            throw new IOException("Command line '" + f764DF + "' did not return numeric data as expected for path '" + str2 + "'- check path is valid", e);
        }
    }

    long parseDir(String str, String str2) throws IOException {
        int i;
        int i2;
        int i3;
        int length = str.length() - 1;
        while (true) {
            i3 = 0;
            if (length < 0) {
                i = 0;
                break;
            } else if (Character.isDigit(str.charAt(length))) {
                i = length + 1;
                break;
            } else {
                length--;
            }
        }
        while (true) {
            if (length < 0) {
                i2 = 0;
                break;
            }
            char charAt = str.charAt(length);
            if (!Character.isDigit(charAt) && charAt != ',' && charAt != '.') {
                i2 = length + 1;
                break;
            }
            length--;
        }
        if (length < 0) {
            throw new IOException("Command line 'dir /-c' did not return valid info for path '" + str2 + "'");
        }
        StringBuilder sb = new StringBuilder(str.substring(i2, i));
        while (i3 < sb.length()) {
            if (sb.charAt(i3) == ',' || sb.charAt(i3) == '.') {
                i3--;
                sb.deleteCharAt(i3);
            }
            i3++;
        }
        return parseBytes(sb.toString(), str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0295  */
    /* JADX WARN: Type inference failed for: r0v82, types: [java.io.BufferedReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.util.List<java.lang.String> performCommand(java.lang.String[] r5, int r6, long r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.FileSystemUtils.performCommand(java.lang.String[], int, long):java.util.List");
    }
}
