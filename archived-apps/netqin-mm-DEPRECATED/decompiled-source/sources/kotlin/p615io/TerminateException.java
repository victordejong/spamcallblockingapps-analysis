package kotlin.p615io;

import java.io.File;
import p573f.p590w.p592c.C10059q;
/* renamed from: kotlin.io.TerminateException */
/* loaded from: classes2-dex2jar.jar:kotlin/io/TerminateException.class */
public final class TerminateException extends FileSystemException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminateException(File file) {
        super(file, null, null, 6, null);
        C10059q.m1637b(file, "file");
    }
}
