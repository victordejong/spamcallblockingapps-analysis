package p193e.p194a.p712e4;

import android.database.Cursor;
import com.truecaller.multisim.SimInfo;
/* renamed from: e.a.e4.o */
/* loaded from: classes11-dex2jar.jar:e/a/e4/o.class */
public class C13496o extends AbstractC13494m {

    /* renamed from: c */
    public final AbstractC13497p f39139c;

    public C13496o(Cursor cursor, AbstractC13497p abstractC13497p) {
        super(cursor, ((AbstractC13501r) abstractC13497p).mo21747q());
        this.f39139c = abstractC13497p;
    }

    @Override // p193e.p194a.p712e4.AbstractC13494m
    /* renamed from: b */
    public String mo21725b(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            i = -1;
        }
        String str2 = "-1";
        if (i == 0 || i == 1) {
            SimInfo mo21741e = this.f39139c.mo21741e(i);
            if (mo21741e != null) {
                str2 = mo21741e.f13984b;
            }
            return str2;
        }
        return "-1";
    }
}
