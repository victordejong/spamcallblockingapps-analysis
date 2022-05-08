package timber.log;

import android.os.Build;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.p018io.IOUtils;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes3-dex2jar.jar:timber/log/Timber.class */
public final class Timber {
    private static final Tree[] TREE_ARRAY_EMPTY = new Tree[0];
    private static final List<Tree> FOREST = new ArrayList();
    static volatile Tree[] forestAsArray = TREE_ARRAY_EMPTY;
    private static final Tree TREE_OF_SOULS = new Tree() { // from class: timber.log.Timber.1
        @Override // timber.log.Timber.Tree
        /* renamed from: d */
        public void mo22d(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo22d(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: d */
        public void mo21d(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo21d(th);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: d */
        public void mo20d(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo20d(th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: e */
        public void mo19e(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo19e(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: e */
        public void mo18e(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo18e(th);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: e */
        public void mo17e(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo17e(th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: i */
        public void mo16i(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo16i(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: i */
        public void mo15i(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo15i(th);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: i */
        public void mo14i(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo14i(th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        protected void log(int i, String str, @NotNull String str2, Throwable th) {
            throw new AssertionError("Missing override for log method.");
        }

        @Override // timber.log.Timber.Tree
        public void log(int i, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.log(i, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        public void log(int i, Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.log(i, th);
            }
        }

        @Override // timber.log.Timber.Tree
        public void log(int i, Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.log(i, th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: v */
        public void mo13v(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo13v(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: v */
        public void mo12v(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo12v(th);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: v */
        public void mo11v(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo11v(th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: w */
        public void mo10w(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo10w(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: w */
        public void mo9w(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo9w(th);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: w */
        public void mo8w(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo8w(th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        public void wtf(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.wtf(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        public void wtf(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.wtf(th);
            }
        }

        @Override // timber.log.Timber.Tree
        public void wtf(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.wtf(th, str, objArr);
            }
        }
    };

    /* loaded from: classes3-dex2jar.jar:timber/log/Timber$DebugTree.class */
    public static class DebugTree extends Tree {
        private static final Pattern ANONYMOUS_CLASS = Pattern.compile("(\\$\\d+)+$");
        private static final int CALL_STACK_INDEX = 5;
        private static final int MAX_LOG_LENGTH = 4000;
        private static final int MAX_TAG_LENGTH = 23;

        /* JADX INFO: Access modifiers changed from: protected */
        @Nullable
        public String createStackElementTag(@NotNull StackTraceElement stackTraceElement) {
            String className = stackTraceElement.getClassName();
            Matcher matcher = ANONYMOUS_CLASS.matcher(className);
            if (matcher.find()) {
                className = matcher.replaceAll("");
            }
            String substring = className.substring(className.lastIndexOf(46) + 1);
            return (substring.length() <= 23 || Build.VERSION.SDK_INT >= 24) ? substring : substring.substring(0, 23);
        }

        @Override // timber.log.Timber.Tree
        final String getTag() {
            String tag = super.getTag();
            if (tag != null) {
                return tag;
            }
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            if (stackTrace.length > 5) {
                return createStackElementTag(stackTrace[5]);
            }
            throw new IllegalStateException("Synthetic stacktrace didn't have enough elements: are you using proguard?");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // timber.log.Timber.Tree
        public void log(int i, String str, @NotNull String str2, Throwable th) {
            int min;
            if (str2.length() >= MAX_LOG_LENGTH) {
                int i2 = 0;
                int length = str2.length();
                while (i2 < length) {
                    int indexOf = str2.indexOf(10, i2);
                    if (indexOf == -1) {
                        indexOf = length;
                    }
                    while (true) {
                        min = Math.min(indexOf, i2 + MAX_LOG_LENGTH);
                        String substring = str2.substring(i2, min);
                        if (i == 7) {
                            Log.wtf(str, substring);
                        } else {
                            Log.println(i, str, substring);
                        }
                        if (min >= indexOf) {
                            break;
                        }
                        i2 = min;
                    }
                    i2 = min + 1;
                }
            } else if (i == 7) {
                Log.wtf(str, str2);
            } else {
                Log.println(i, str, str2);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:timber/log/Timber$Tree.class */
    public static abstract class Tree {
        final ThreadLocal<String> explicitTag = new ThreadLocal<>();

        private String getStackTraceString(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }

        private void prepareLog(int i, Throwable th, String str, Object... objArr) {
            String str2;
            String tag = getTag();
            if (isLoggable(tag, i)) {
                String str3 = str;
                if (str != null) {
                    str3 = str;
                    if (str.length() == 0) {
                        str3 = null;
                    }
                }
                if (str3 != null) {
                    String str4 = str3;
                    if (objArr != null) {
                        str4 = str3;
                        if (objArr.length > 0) {
                            str4 = formatMessage(str3, objArr);
                        }
                    }
                    str2 = str4;
                    if (th != null) {
                        str2 = str4 + IOUtils.LINE_SEPARATOR_UNIX + getStackTraceString(th);
                    }
                } else if (th != null) {
                    str2 = getStackTraceString(th);
                } else {
                    return;
                }
                log(i, tag, str2, th);
            }
        }

        /* renamed from: d */
        public void mo22d(String str, Object... objArr) {
            prepareLog(3, null, str, objArr);
        }

        /* renamed from: d */
        public void mo21d(Throwable th) {
            prepareLog(3, th, null, new Object[0]);
        }

        /* renamed from: d */
        public void mo20d(Throwable th, String str, Object... objArr) {
            prepareLog(3, th, str, objArr);
        }

        /* renamed from: e */
        public void mo19e(String str, Object... objArr) {
            prepareLog(6, null, str, objArr);
        }

        /* renamed from: e */
        public void mo18e(Throwable th) {
            prepareLog(6, th, null, new Object[0]);
        }

        /* renamed from: e */
        public void mo17e(Throwable th, String str, Object... objArr) {
            prepareLog(6, th, str, objArr);
        }

        protected String formatMessage(@NotNull String str, @NotNull Object[] objArr) {
            return String.format(str, objArr);
        }

        @Nullable
        String getTag() {
            String str = this.explicitTag.get();
            if (str != null) {
                this.explicitTag.remove();
            }
            return str;
        }

        /* renamed from: i */
        public void mo16i(String str, Object... objArr) {
            prepareLog(4, null, str, objArr);
        }

        /* renamed from: i */
        public void mo15i(Throwable th) {
            prepareLog(4, th, null, new Object[0]);
        }

        /* renamed from: i */
        public void mo14i(Throwable th, String str, Object... objArr) {
            prepareLog(4, th, str, objArr);
        }

        @Deprecated
        protected boolean isLoggable(int i) {
            return true;
        }

        protected boolean isLoggable(@Nullable String str, int i) {
            return isLoggable(i);
        }

        protected abstract void log(int i, @Nullable String str, @NotNull String str2, @Nullable Throwable th);

        public void log(int i, String str, Object... objArr) {
            prepareLog(i, null, str, objArr);
        }

        public void log(int i, Throwable th) {
            prepareLog(i, th, null, new Object[0]);
        }

        public void log(int i, Throwable th, String str, Object... objArr) {
            prepareLog(i, th, str, objArr);
        }

        /* renamed from: v */
        public void mo13v(String str, Object... objArr) {
            prepareLog(2, null, str, objArr);
        }

        /* renamed from: v */
        public void mo12v(Throwable th) {
            prepareLog(2, th, null, new Object[0]);
        }

        /* renamed from: v */
        public void mo11v(Throwable th, String str, Object... objArr) {
            prepareLog(2, th, str, objArr);
        }

        /* renamed from: w */
        public void mo10w(String str, Object... objArr) {
            prepareLog(5, null, str, objArr);
        }

        /* renamed from: w */
        public void mo9w(Throwable th) {
            prepareLog(5, th, null, new Object[0]);
        }

        /* renamed from: w */
        public void mo8w(Throwable th, String str, Object... objArr) {
            prepareLog(5, th, str, objArr);
        }

        public void wtf(String str, Object... objArr) {
            prepareLog(7, null, str, objArr);
        }

        public void wtf(Throwable th) {
            prepareLog(7, th, null, new Object[0]);
        }

        public void wtf(Throwable th, String str, Object... objArr) {
            prepareLog(7, th, str, objArr);
        }
    }

    private Timber() {
        throw new AssertionError("No instances.");
    }

    @NotNull
    public static Tree asTree() {
        return TREE_OF_SOULS;
    }

    /* renamed from: d */
    public static void m37d(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo22d(str, objArr);
    }

    /* renamed from: d */
    public static void m36d(Throwable th) {
        TREE_OF_SOULS.mo21d(th);
    }

    /* renamed from: d */
    public static void m35d(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo20d(th, str, objArr);
    }

    /* renamed from: e */
    public static void m34e(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo19e(str, objArr);
    }

    /* renamed from: e */
    public static void m33e(Throwable th) {
        TREE_OF_SOULS.mo18e(th);
    }

    /* renamed from: e */
    public static void m32e(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo17e(th, str, objArr);
    }

    @NotNull
    public static List<Tree> forest() {
        List<Tree> unmodifiableList;
        synchronized (FOREST) {
            unmodifiableList = Collections.unmodifiableList(new ArrayList(FOREST));
        }
        return unmodifiableList;
    }

    /* renamed from: i */
    public static void m31i(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo16i(str, objArr);
    }

    /* renamed from: i */
    public static void m30i(Throwable th) {
        TREE_OF_SOULS.mo15i(th);
    }

    /* renamed from: i */
    public static void m29i(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo14i(th, str, objArr);
    }

    public static void log(int i, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.log(i, str, objArr);
    }

    public static void log(int i, Throwable th) {
        TREE_OF_SOULS.log(i, th);
    }

    public static void log(int i, Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.log(i, th, str, objArr);
    }

    public static void plant(@NotNull Tree tree) {
        if (tree == null) {
            throw new NullPointerException("tree == null");
        } else if (tree == TREE_OF_SOULS) {
            throw new IllegalArgumentException("Cannot plant Timber into itself.");
        } else {
            synchronized (FOREST) {
                FOREST.add(tree);
                forestAsArray = (Tree[]) FOREST.toArray(new Tree[FOREST.size()]);
            }
        }
    }

    public static void plant(@NotNull Tree... treeArr) {
        if (treeArr == null) {
            throw new NullPointerException("trees == null");
        }
        for (Tree tree : treeArr) {
            if (tree == null) {
                throw new NullPointerException("trees contains null");
            } else if (tree == TREE_OF_SOULS) {
                throw new IllegalArgumentException("Cannot plant Timber into itself.");
            }
        }
        synchronized (FOREST) {
            Collections.addAll(FOREST, treeArr);
            forestAsArray = (Tree[]) FOREST.toArray(new Tree[FOREST.size()]);
        }
    }

    @NotNull
    public static Tree tag(String str) {
        for (Tree tree : forestAsArray) {
            tree.explicitTag.set(str);
        }
        return TREE_OF_SOULS;
    }

    public static int treeCount() {
        int size;
        synchronized (FOREST) {
            size = FOREST.size();
        }
        return size;
    }

    public static void uproot(@NotNull Tree tree) {
        synchronized (FOREST) {
            if (!FOREST.remove(tree)) {
                throw new IllegalArgumentException("Cannot uproot tree which is not planted: " + tree);
            }
            forestAsArray = (Tree[]) FOREST.toArray(new Tree[FOREST.size()]);
        }
    }

    public static void uprootAll() {
        synchronized (FOREST) {
            FOREST.clear();
            forestAsArray = TREE_ARRAY_EMPTY;
        }
    }

    /* renamed from: v */
    public static void m28v(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo13v(str, objArr);
    }

    /* renamed from: v */
    public static void m27v(Throwable th) {
        TREE_OF_SOULS.mo12v(th);
    }

    /* renamed from: v */
    public static void m26v(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo11v(th, str, objArr);
    }

    /* renamed from: w */
    public static void m25w(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo10w(str, objArr);
    }

    /* renamed from: w */
    public static void m24w(Throwable th) {
        TREE_OF_SOULS.mo9w(th);
    }

    /* renamed from: w */
    public static void m23w(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo8w(th, str, objArr);
    }

    public static void wtf(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.wtf(str, objArr);
    }

    public static void wtf(Throwable th) {
        TREE_OF_SOULS.wtf(th);
    }

    public static void wtf(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.wtf(th, str, objArr);
    }
}
