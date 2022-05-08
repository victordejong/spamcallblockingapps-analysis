package kotlin.p013io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m254d2 = {"<anonymous>", "", "f", "Ljava/io/File;", "e", "Ljava/io/IOException;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: kotlin.io.FilesKt__UtilsKt$copyRecursively$2 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilesKt__UtilsKt$copyRecursively$2.class */
final class FilesKt__UtilsKt$copyRecursively$2 extends Lambda implements Function2<File, IOException, Unit> {
    final /* synthetic */ Function2 $onError;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilesKt__UtilsKt$copyRecursively$2(Function2 function2) {
        super(2);
        this.$onError = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(File file, IOException iOException) {
        invoke2(file, iOException);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull File f, @NotNull IOException e) {
        Intrinsics.checkParameterIsNotNull(f, "f");
        Intrinsics.checkParameterIsNotNull(e, "e");
        if (((OnErrorAction) this.$onError.invoke(f, e)) == OnErrorAction.TERMINATE) {
            throw new TerminateException(f);
        }
    }
}
