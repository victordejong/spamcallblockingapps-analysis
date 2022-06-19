package p193e.p194a.p712e4;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: e.a.e4.m */
/* loaded from: classes11-dex2jar.jar:e/a/e4/m.class */
public abstract class AbstractC13494m extends CursorWrapper implements AbstractC13493l {

    /* renamed from: a */
    public final Map<String, String> f39136a = new HashMap();

    /* renamed from: b */
    public final int f39137b;

    public AbstractC13494m(Cursor cursor, String str) {
        super(cursor);
        this.f39137b = str != null ? getColumnIndex(str) : -1;
    }

    /* renamed from: b */
    public abstract String mo21725b(String str);

    @Override // p193e.p194a.p712e4.AbstractC13493l
    /* renamed from: z */
    public final String mo16154z() {
        int i = this.f39137b;
        if (i < 0) {
            return "-1";
        }
        String string = getString(i);
        if (TextUtils.isEmpty(string)) {
            return "-1";
        }
        String str = this.f39136a.get(string);
        if (str != null) {
            return str;
        }
        String mo21725b = mo21725b(string);
        this.f39136a.put(string, mo21725b);
        return mo21725b;
    }
}
