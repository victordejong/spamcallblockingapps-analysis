package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import java.util.ArrayList;
import java.util.List;
import n3.c0.g0.a;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p193e.p194a.p437c.p526c.p528d.C9895k0;
import p193e.p194a.p437c.p580r.p587h.C10541a;
/* renamed from: e.a.c.c.d.l0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/l0.class */
public class C9919l0 extends a<C10541a> {

    /* renamed from: k */
    public final /* synthetic */ C9895k0.C9904i f29658k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9919l0(C9895k0.C9904i c9904i, AbstractC25677q abstractC25677q, C25686y c25686y, boolean z, boolean z2, String... strArr) {
        super(abstractC25677q, c25686y, z, z2, strArr);
        this.f29658k = c9904i;
    }

    /* renamed from: e */
    public List<C10541a> m27027e(Cursor cursor) {
        ExtendedPdo extendedPdo;
        int m43237g0 = MediaSessionCompat.m43237g0(cursor, "messageID");
        int m43237g02 = MediaSessionCompat.m43237g0(cursor, "address");
        int m43237g03 = MediaSessionCompat.m43237g0(cursor, "updateCategory");
        int m43237g04 = MediaSessionCompat.m43237g0(cursor, "spam_category");
        int m43237g05 = MediaSessionCompat.m43237g0(cursor, "classified_by");
        int m43237g06 = MediaSessionCompat.m43237g0(cursor, "confidence_score");
        int m43237g07 = MediaSessionCompat.m43237g0(cursor, "transport");
        int m43237g08 = MediaSessionCompat.m43237g0(cursor, "conversationId");
        int m43237g09 = MediaSessionCompat.m43237g0(cursor, "message");
        int m43237g010 = MediaSessionCompat.m43237g0(cursor, "no_of_words");
        int m43237g011 = MediaSessionCompat.m43237g0(cursor, "deleted");
        int m43237g012 = MediaSessionCompat.m43237g0(cursor, "created_at");
        int m43237g013 = MediaSessionCompat.m43237g0(cursor, "d");
        int m43237g014 = MediaSessionCompat.m43237g0(cursor, "k");
        int m43237g015 = MediaSessionCompat.m43237g0(cursor, "p");
        int m43237g016 = MediaSessionCompat.m43237g0(cursor, AbstractC2405c.f7629a);
        int m43237g017 = MediaSessionCompat.m43237g0(cursor, "o");
        int m43237g018 = MediaSessionCompat.m43237g0(cursor, "f");
        int m43237g019 = MediaSessionCompat.m43237g0(cursor, "g");
        int m43237g020 = MediaSessionCompat.m43237g0(cursor, "s");
        int m43237g021 = MediaSessionCompat.m43237g0(cursor, "val1");
        int m43237g022 = MediaSessionCompat.m43237g0(cursor, "val2");
        int m43237g023 = MediaSessionCompat.m43237g0(cursor, "val3");
        int m43237g024 = MediaSessionCompat.m43237g0(cursor, "val4");
        int m43237g025 = MediaSessionCompat.m43237g0(cursor, "val5");
        int m43237g026 = MediaSessionCompat.m43237g0(cursor, "date");
        int m43237g027 = MediaSessionCompat.m43237g0(cursor, "dff_val1");
        int m43237g028 = MediaSessionCompat.m43237g0(cursor, "dff_val2");
        int m43237g029 = MediaSessionCompat.m43237g0(cursor, "dff_val3");
        int m43237g030 = MediaSessionCompat.m43237g0(cursor, "dff_val4");
        int m43237g031 = MediaSessionCompat.m43237g0(cursor, "dff_val5");
        int m43237g032 = MediaSessionCompat.m43237g0(cursor, "datetime");
        int m43237g033 = MediaSessionCompat.m43237g0(cursor, "msg_date");
        int m43237g034 = MediaSessionCompat.m43237g0(cursor, "active");
        int m43237g035 = MediaSessionCompat.m43237g0(cursor, "state");
        int m43237g036 = MediaSessionCompat.m43237g0(cursor, "as_state");
        int m43237g037 = MediaSessionCompat.m43237g0(cursor, "extra");
        ArrayList arrayList = new ArrayList(cursor.getCount());
        while (cursor.moveToNext()) {
            Integer valueOf = cursor.isNull(m43237g036) ? null : Integer.valueOf(cursor.getInt(m43237g036));
            String string = cursor.isNull(m43237g037) ? null : cursor.getString(m43237g037);
            if (cursor.isNull(m43237g0) && cursor.isNull(m43237g02) && cursor.isNull(m43237g03) && cursor.isNull(m43237g04) && cursor.isNull(m43237g05) && cursor.isNull(m43237g06) && cursor.isNull(m43237g07) && cursor.isNull(m43237g08) && cursor.isNull(m43237g09) && cursor.isNull(m43237g010) && cursor.isNull(m43237g011) && cursor.isNull(m43237g012) && cursor.isNull(m43237g013)) {
                int i = m43237g014;
                if (cursor.isNull(i) && cursor.isNull(m43237g015) && cursor.isNull(m43237g016) && cursor.isNull(m43237g017) && cursor.isNull(m43237g018) && cursor.isNull(m43237g019) && cursor.isNull(m43237g020) && cursor.isNull(m43237g021) && cursor.isNull(m43237g022) && cursor.isNull(m43237g023) && cursor.isNull(m43237g024) && cursor.isNull(m43237g025) && cursor.isNull(m43237g026) && cursor.isNull(m43237g027) && cursor.isNull(m43237g028) && cursor.isNull(m43237g029) && cursor.isNull(m43237g030) && cursor.isNull(m43237g031) && cursor.isNull(m43237g032) && cursor.isNull(m43237g033) && cursor.isNull(m43237g034)) {
                    int i2 = m43237g035;
                    if (cursor.isNull(i2)) {
                        extendedPdo = null;
                        m43237g014 = i;
                        m43237g035 = i2;
                        arrayList.add(new C10541a(extendedPdo, valueOf, string));
                    }
                }
            }
            ExtendedPdo extendedPdo2 = new ExtendedPdo(cursor.getLong(m43237g08), C9895k0.this.f29613c.m26905e(cursor.getInt(m43237g07)), cursor.isNull(m43237g09) ? null : cursor.getString(m43237g09), cursor.isNull(m43237g03) ? null : cursor.getString(m43237g03), C9895k0.this.f29613c.m26906d(cursor.getInt(m43237g05)), cursor.getFloat(m43237g06), cursor.getInt(m43237g010));
            extendedPdo2.setMessageID(cursor.getLong(m43237g0));
            extendedPdo2.setAddress(cursor.isNull(m43237g02) ? null : cursor.getString(m43237g02));
            extendedPdo2.setSpamCategory(cursor.getInt(m43237g04));
            extendedPdo2.setDeleted(cursor.getInt(m43237g011) != 0);
            extendedPdo2.setCreatedAt(C9895k0.this.f29613c.m26907c(cursor.isNull(m43237g012) ? null : Long.valueOf(cursor.getLong(m43237g012))));
            extendedPdo2.setD(cursor.isNull(m43237g013) ? null : cursor.getString(m43237g013));
            extendedPdo2.setK(cursor.isNull(m43237g014) ? null : cursor.getString(m43237g014));
            extendedPdo2.setP(cursor.isNull(m43237g015) ? null : cursor.getString(m43237g015));
            extendedPdo2.setC(cursor.isNull(m43237g016) ? null : cursor.getString(m43237g016));
            extendedPdo2.setO(cursor.isNull(m43237g017) ? null : cursor.getString(m43237g017));
            extendedPdo2.setF(cursor.isNull(m43237g018) ? null : cursor.getString(m43237g018));
            extendedPdo2.setG(cursor.isNull(m43237g019) ? null : cursor.getString(m43237g019));
            extendedPdo2.setS(cursor.isNull(m43237g020) ? null : cursor.getString(m43237g020));
            extendedPdo2.setVal1(cursor.isNull(m43237g021) ? null : cursor.getString(m43237g021));
            extendedPdo2.setVal2(cursor.isNull(m43237g022) ? null : cursor.getString(m43237g022));
            extendedPdo2.setVal3(cursor.isNull(m43237g023) ? null : cursor.getString(m43237g023));
            extendedPdo2.setVal4(cursor.isNull(m43237g024) ? null : cursor.getString(m43237g024));
            extendedPdo2.setVal5(cursor.isNull(m43237g025) ? null : cursor.getString(m43237g025));
            extendedPdo2.setDate(cursor.isNull(m43237g026) ? null : cursor.getString(m43237g026));
            extendedPdo2.setDffVal1(cursor.isNull(m43237g027) ? null : cursor.getString(m43237g027));
            extendedPdo2.setDffVal2(cursor.isNull(m43237g028) ? null : cursor.getString(m43237g028));
            extendedPdo2.setDffVal3(cursor.isNull(m43237g029) ? null : cursor.getString(m43237g029));
            extendedPdo2.setDffVal4(cursor.isNull(m43237g030) ? null : cursor.getString(m43237g030));
            extendedPdo2.setDffVal5(cursor.isNull(m43237g031) ? null : cursor.getString(m43237g031));
            extendedPdo2.setDatetime(cursor.isNull(m43237g032) ? null : cursor.getString(m43237g032));
            extendedPdo2.setMsgDate(C9895k0.this.f29613c.m26907c(cursor.isNull(m43237g033) ? null : Long.valueOf(cursor.getLong(m43237g033))));
            extendedPdo2.setActive(cursor.getInt(m43237g034) != 0);
            extendedPdo2.setState(cursor.isNull(m43237g035) ? null : cursor.getString(m43237g035));
            extendedPdo = extendedPdo2;
            arrayList.add(new C10541a(extendedPdo, valueOf, string));
        }
        return arrayList;
    }
}
