package kotlin.p013io;

import com.privacystar.core.util.BlockingManager;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a$\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0002¨\u0006\u0006"}, m254d2 = {"constructMessage", "", "file", "Ljava/io/File;", "other", BlockingManager.REASON_CONSTANT, "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
/* renamed from: kotlin.io.ExceptionsKt */
/* loaded from: classes2-dex2jar.jar:kotlin/io/ExceptionsKt.class */
public final class ExceptionsKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String constructMessage(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        if (str != null) {
            sb.append(": " + str);
        }
        String sb2 = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(sb2, "sb.toString()");
        return sb2;
    }
}
