package p193e.p194a.p712e4;

import android.database.Cursor;
import android.text.TextUtils;
import com.truecaller.multisim.SimInfo;
/* renamed from: e.a.e4.n */
/* loaded from: classes11-dex2jar.jar:e/a/e4/n.class */
public class C13495n extends AbstractC13494m {

    /* renamed from: c */
    public final AbstractC13497p f39138c;

    public C13495n(Cursor cursor, AbstractC13497p abstractC13497p) {
        super(cursor, ((AbstractC13501r) abstractC13497p).mo21747q());
        this.f39138c = abstractC13497p;
    }

    @Override // p193e.p194a.p712e4.AbstractC13494m
    /* renamed from: b */
    public String mo21725b(String str) {
        for (SimInfo simInfo : this.f39138c.mo21742d()) {
            if (TextUtils.equals(str, simInfo.f13990h)) {
                return simInfo.f13984b;
            }
        }
        return "-1";
    }
}
