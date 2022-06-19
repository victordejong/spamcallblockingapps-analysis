package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.insights.models.pdo.SmsBackupMessage;
import java.util.ArrayList;
import java.util.List;
import n3.c0.g0.a;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p193e.p194a.p437c.p526c.p528d.C9794c0;
/* renamed from: e.a.c.c.d.b0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/b0.class */
public class C9792b0 extends a<SmsBackupMessage> {

    /* renamed from: k */
    public final /* synthetic */ C9794c0.C9795a f29429k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9792b0(C9794c0.C9795a c9795a, AbstractC25677q abstractC25677q, C25686y c25686y, boolean z, boolean z2, String... strArr) {
        super(abstractC25677q, c25686y, z, z2, strArr);
        this.f29429k = c9795a;
    }

    /* renamed from: e */
    public List<SmsBackupMessage> m27161e(Cursor cursor) {
        int m43237g0 = MediaSessionCompat.m43237g0(cursor, "messageID");
        int m43237g02 = MediaSessionCompat.m43237g0(cursor, "address");
        int m43237g03 = MediaSessionCompat.m43237g0(cursor, "message");
        int m43237g04 = MediaSessionCompat.m43237g0(cursor, "date");
        int m43237g05 = MediaSessionCompat.m43237g0(cursor, "conversationId");
        ArrayList arrayList = new ArrayList(cursor.getCount());
        while (cursor.moveToNext()) {
            long j = cursor.getLong(m43237g0);
            Long l = null;
            String string = cursor.isNull(m43237g02) ? null : cursor.getString(m43237g02);
            String string2 = cursor.isNull(m43237g03) ? null : cursor.getString(m43237g03);
            if (!cursor.isNull(m43237g04)) {
                l = Long.valueOf(cursor.getLong(m43237g04));
            }
            arrayList.add(new SmsBackupMessage(j, string, string2, C9794c0.this.f29431b.m26907c(l), cursor.getLong(m43237g05)));
        }
        return arrayList;
    }
}
