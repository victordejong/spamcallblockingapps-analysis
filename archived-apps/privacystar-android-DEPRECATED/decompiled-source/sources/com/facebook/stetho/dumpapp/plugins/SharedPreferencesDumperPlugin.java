package com.facebook.stetho.dumpapp.plugins;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.facebook.stetho.dumpapp.DumpUsageException;
import com.facebook.stetho.dumpapp.DumperContext;
import com.facebook.stetho.dumpapp.DumperPlugin;
import java.io.File;
import java.io.PrintStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/dumpapp/plugins/SharedPreferencesDumperPlugin.class */
public class SharedPreferencesDumperPlugin implements DumperPlugin {
    private static final String NAME = "prefs";
    private static final String XML_SUFFIX = ".xml";
    private final Context mAppContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.stetho.dumpapp.plugins.SharedPreferencesDumperPlugin$1 */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/dumpapp/plugins/SharedPreferencesDumperPlugin$1.class */
    public static /* synthetic */ class C10861 {

        /* renamed from: $SwitchMap$com$facebook$stetho$dumpapp$plugins$SharedPreferencesDumperPlugin$Type */
        static final /* synthetic */ int[] f111x96b4f424 = new int[Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            try {
                f111x96b4f424[Type.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f111x96b4f424[Type.INT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f111x96b4f424[Type.LONG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f111x96b4f424[Type.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f111x96b4f424[Type.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f111x96b4f424[Type.SET.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/dumpapp/plugins/SharedPreferencesDumperPlugin$Type.class */
    public enum Type {
        BOOLEAN("boolean"),
        INT("int"),
        LONG("long"),
        FLOAT("float"),
        STRING("string"),
        SET("set");
        
        private final String name;

        Type(String str) {
            this.name = str;
        }

        public static StringBuilder appendNamesList(StringBuilder sb, String str) {
            Type[] values;
            boolean z = true;
            for (Type type : values()) {
                if (z) {
                    z = false;
                } else {
                    sb.append(str);
                }
                sb.append(type.name);
            }
            return sb;
        }

        @Nullable
        /* renamed from: of */
        public static Type m357of(String str) {
            Type[] values;
            for (Type type : values()) {
                if (type.name.equals(str)) {
                    return type;
                }
            }
            return null;
        }
    }

    public SharedPreferencesDumperPlugin(Context context) {
        this.mAppContext = context.getApplicationContext();
    }

    private void doPrint(PrintStream printStream, List<String> list) {
        printRecursive(printStream, this.mAppContext.getApplicationInfo().dataDir + "/shared_prefs", "", list.isEmpty() ? "" : list.get(0), list.size() > 1 ? list.get(1) : "");
    }

    private void doUsage(PrintStream printStream) {
        printStream.println("Usage: dumpapp prefs <command> [command-options]");
        printStream.println("Usage: dumpapp prefs print [pathPrefix [keyPrefix]]");
        StringBuilder sb = new StringBuilder("       dumpapp prefs ");
        sb.append("write <path> <key> <");
        StringBuilder appendNamesList = Type.appendNamesList(sb, "|");
        appendNamesList.append("> <value>");
        printStream.println(appendNamesList);
        printStream.println();
        printStream.println("dumpapp prefs print: Print all matching values from the shared preferences");
        printStream.println();
        printStream.println("dumpapp prefs write: Writes a value to the shared preferences");
    }

    @SuppressLint({"CommitPrefEdits"})
    private void doWrite(List<String> list) throws DumpUsageException {
        Iterator<String> it = list.iterator();
        String nextArg = nextArg(it, "Expected <path>");
        String nextArg2 = nextArg(it, "Expected <key>");
        Type of = Type.m357of(nextArg(it, "Expected <type>"));
        if (of == null) {
            throw new DumpUsageException(Type.appendNamesList(new StringBuilder("Usage: prefs write <path> <key> <type> <value>, where type is one of: "), ", ").toString());
        }
        SharedPreferences.Editor edit = getSharedPreferences(nextArg).edit();
        switch (C10861.f111x96b4f424[of.ordinal()]) {
            case 1:
                edit.putBoolean(nextArg2, Boolean.valueOf(nextArgValue(it)).booleanValue());
                break;
            case 2:
                edit.putInt(nextArg2, Integer.valueOf(nextArgValue(it)).intValue());
                break;
            case 3:
                edit.putLong(nextArg2, Long.valueOf(nextArgValue(it)).longValue());
                break;
            case 4:
                edit.putFloat(nextArg2, Float.valueOf(nextArgValue(it)).floatValue());
                break;
            case 5:
                edit.putString(nextArg2, nextArgValue(it));
                break;
            case 6:
                putStringSet(edit, nextArg2, it);
                break;
        }
        edit.commit();
    }

    private SharedPreferences getSharedPreferences(String str) {
        return this.mAppContext.getSharedPreferences(str, 4);
    }

    @Nonnull
    private static String nextArg(Iterator<String> it, String str) throws DumpUsageException {
        if (it.hasNext()) {
            return it.next();
        }
        throw new DumpUsageException(str);
    }

    @Nonnull
    private static String nextArgValue(Iterator<String> it) throws DumpUsageException {
        return nextArg(it, "Expected <value>");
    }

    private void printFile(PrintStream printStream, String str, String str2) {
        printStream.println(str + ":");
        for (Map.Entry<String, ?> entry : getSharedPreferences(str).getAll().entrySet()) {
            if (entry.getKey().startsWith(str2)) {
                printStream.println("  " + entry.getKey() + " = " + entry.getValue());
            }
        }
    }

    private void printRecursive(PrintStream printStream, String str, String str2, String str3, String str4) {
        String[] list;
        File file = new File(str, str2);
        if (file.isFile()) {
            if (str2.endsWith(XML_SUFFIX)) {
                printFile(printStream, str2.substring(0, str2.length() - XML_SUFFIX.length()), str4);
            }
        } else if (file.isDirectory() && (list = file.list()) != null) {
            for (int i = 0; i < list.length; i++) {
                String str5 = TextUtils.isEmpty(str2) ? list[i] : str2 + File.separator + list[i];
                if (str5.startsWith(str3)) {
                    printRecursive(printStream, str, str5, str3, str4);
                }
            }
        }
    }

    @TargetApi(11)
    private static void putStringSet(SharedPreferences.Editor editor, String str, Iterator<String> it) {
        HashSet hashSet = new HashSet();
        while (it.hasNext()) {
            hashSet.add(it.next());
        }
        editor.putStringSet(str, hashSet);
    }

    @Override // com.facebook.stetho.dumpapp.DumperPlugin
    public void dump(DumperContext dumperContext) throws DumpUsageException {
        PrintStream stdout = dumperContext.getStdout();
        List<String> argsAsList = dumperContext.getArgsAsList();
        String remove = argsAsList.isEmpty() ? "" : argsAsList.remove(0);
        if (remove.equals("print")) {
            doPrint(stdout, argsAsList);
        } else if (remove.equals("write")) {
            doWrite(argsAsList);
        } else {
            doUsage(stdout);
        }
    }

    @Override // com.facebook.stetho.dumpapp.DumperPlugin
    public String getName() {
        return NAME;
    }
}
