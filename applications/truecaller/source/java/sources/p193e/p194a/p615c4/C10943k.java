package p193e.p194a.p615c4;

import android.database.sqlite.SQLiteException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import s1.z.c.l;
/* renamed from: e.a.c4.k */
/* loaded from: classes10-dex2jar.jar:e/a/c4/k.class */
public final class C10943k extends AbstractC10935c {

    /* renamed from: a */
    public static final C10943k f32456a = new C10943k();

    @Override // p193e.p194a.p615c4.AbstractC10935c
    /* renamed from: c */
    public String mo25487c(Throwable th) {
        l.e(th, "e");
        StringBuilder sb = new StringBuilder();
        sb.append("<muted> ");
        if (!(th instanceof SQLiteException)) {
            th = null;
        }
        SQLiteException sQLiteException = (SQLiteException) th;
        String str = null;
        if (sQLiteException != null) {
            String message = sQLiteException.getMessage();
            if (message != null) {
                Matcher matcher = Pattern.compile("\\(code \\d+\\)").matcher(message);
                l.d(matcher, "Pattern.compile(\"\\\\(code…\\d+\\\\)\").matcher(message)");
                if (matcher.find()) {
                    str = matcher.group();
                    l.d(str, "matcher.group()");
                }
            }
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // p193e.p194a.p615c4.AbstractC10935c
    /* renamed from: e */
    public boolean mo11316e(Throwable th) {
        l.e(th, "e");
        return th instanceof SQLiteException;
    }
}
