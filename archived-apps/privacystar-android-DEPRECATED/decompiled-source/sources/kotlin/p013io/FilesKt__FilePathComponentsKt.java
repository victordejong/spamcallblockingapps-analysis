package kotlin.p013io;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u001a\u0011\u0010\u000b\u001a\u00020\f*\u00020\bH\u0002¢\u0006\u0002\b\r\u001a\u001c\u0010\u000e\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\fH��\u001a\f\u0010\u0011\u001a\u00020\u0012*\u00020\u0002H��\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b��\u0010\u0003\"\u0018\u0010\u0004\u001a\u00020\u0002*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\"\u0018\u0010\u0007\u001a\u00020\b*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, m254d2 = {"isRooted", "", "Ljava/io/File;", "(Ljava/io/File;)Z", "root", "getRoot", "(Ljava/io/File;)Ljava/io/File;", "rootName", "", "getRootName", "(Ljava/io/File;)Ljava/lang/String;", "getRootLength", "", "getRootLength$FilesKt__FilePathComponentsKt", "subPath", "beginIndex", "endIndex", "toComponents", "Lkotlin/io/FilePathComponents;", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/io/FilesKt")
/* renamed from: kotlin.io.FilesKt__FilePathComponentsKt */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilesKt__FilePathComponentsKt.class */
public class FilesKt__FilePathComponentsKt {
    @NotNull
    public static final File getRoot(@NotNull File receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new File(FilesKt.getRootName(receiver$0));
    }

    private static final int getRootLength$FilesKt__FilePathComponentsKt(@NotNull String str) {
        int indexOf$default;
        String str2 = str;
        int indexOf$default2 = StringsKt.indexOf$default((CharSequence) str2, File.separatorChar, 0, false, 4, (Object) null);
        if (indexOf$default2 == 0) {
            if (str.length() <= 1 || str.charAt(1) != File.separatorChar || (indexOf$default = StringsKt.indexOf$default((CharSequence) str2, File.separatorChar, 2, false, 4, (Object) null)) < 0) {
                return 1;
            }
            int indexOf$default3 = StringsKt.indexOf$default((CharSequence) str2, File.separatorChar, indexOf$default + 1, false, 4, (Object) null);
            return indexOf$default3 >= 0 ? indexOf$default3 + 1 : str.length();
        } else if (indexOf$default2 > 0 && str.charAt(indexOf$default2 - 1) == ':') {
            return indexOf$default2 + 1;
        } else {
            if (indexOf$default2 != -1 || !StringsKt.endsWith$default((CharSequence) str2, ':', false, 2, (Object) null)) {
                return 0;
            }
            return str.length();
        }
    }

    @NotNull
    public static final String getRootName(@NotNull File receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        String path = receiver$0.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path, "path");
        String path2 = receiver$0.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path2, "path");
        int rootLength$FilesKt__FilePathComponentsKt = getRootLength$FilesKt__FilePathComponentsKt(path2);
        if (path == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String substring = path.substring(0, rootLength$FilesKt__FilePathComponentsKt);
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static final boolean isRooted(@NotNull File receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        String path = receiver$0.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path, "path");
        return getRootLength$FilesKt__FilePathComponentsKt(path) > 0;
    }

    @NotNull
    public static final File subPath(@NotNull File receiver$0, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return FilesKt.toComponents(receiver$0).subPath(i, i2);
    }

    @NotNull
    public static final FilePathComponents toComponents(@NotNull File receiver$0) {
        ArrayList arrayList;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        String path = receiver$0.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path, "path");
        int rootLength$FilesKt__FilePathComponentsKt = getRootLength$FilesKt__FilePathComponentsKt(path);
        String substring = path.substring(0, rootLength$FilesKt__FilePathComponentsKt);
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        String substring2 = path.substring(rootLength$FilesKt__FilePathComponentsKt);
        Intrinsics.checkExpressionValueIsNotNull(substring2, "(this as java.lang.String).substring(startIndex)");
        String str = substring2;
        if (str.length() == 0) {
            arrayList = CollectionsKt.emptyList();
        } else {
            List<String> split$default = StringsKt.split$default((CharSequence) str, new char[]{File.separatorChar}, false, 0, 6, (Object) null);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(split$default, 10));
            for (String str2 : split$default) {
                arrayList2.add(new File(str2));
            }
            arrayList = arrayList2;
        }
        return new FilePathComponents(new File(substring), arrayList);
    }
}
