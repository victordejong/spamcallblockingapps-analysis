package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.insights.commons.model.Transport;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p193e.p194a.p437c.p531c0.C10020g;
import q3.a.x2.f;
/* renamed from: e.a.c.c.d.p0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/p0.class */
public final class C9931p0 implements AbstractC9929o0 {

    /* renamed from: a */
    public final AbstractC25677q f29677a;

    /* renamed from: b */
    public final C10020g f29678b = new C10020g();

    /* renamed from: e.a.c.c.d.p0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/p0$a.class */
    public class CallableC9932a implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29679a;

        public CallableC9932a(C25686y c25686y) {
            C9931p0.this = r4;
            this.f29679a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9931p0.this.f29677a, this.f29679a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "d");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "k");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "p");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9931p0.this.f29678b.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9931p0.this.f29678b.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g011), m3090b.getInt(m43237g010));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setO(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setF(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setG(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                    extendedPdo.setS(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g017) ? null : Long.valueOf(m3090b.getLong(m43237g017)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal2(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal3(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setVal4(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setVal5(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                    extendedPdo.setAddress(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setMsgDate(C9931p0.this.f29678b.m26907c(m3090b.isNull(m43237g025) ? null : Long.valueOf(m3090b.getLong(m43237g025))));
                    extendedPdo.setDate(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g030) ? null : m3090b.getString(m43237g030));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setActive(m3090b.getInt(m43237g032) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g033) ? null : m3090b.getString(m43237g033));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g035) != 0);
                    extendedPdo.setCreatedAt(C9931p0.this.f29678b.m26907c(m3090b.isNull(m43237g036) ? null : Long.valueOf(m3090b.getLong(m43237g036))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g037));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29679a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.p0$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/p0$b.class */
    public class CallableC9933b implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29681a;

        public CallableC9933b(C25686y c25686y) {
            C9931p0.this = r4;
            this.f29681a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9931p0.this.f29677a, this.f29681a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "d");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "k");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "p");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9931p0.this.f29678b.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9931p0.this.f29678b.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g011), m3090b.getInt(m43237g010));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setO(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setF(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setG(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                    extendedPdo.setS(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g017) ? null : Long.valueOf(m3090b.getLong(m43237g017)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal2(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal3(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setVal4(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setVal5(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                    extendedPdo.setAddress(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setMsgDate(C9931p0.this.f29678b.m26907c(m3090b.isNull(m43237g025) ? null : Long.valueOf(m3090b.getLong(m43237g025))));
                    extendedPdo.setDate(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g030) ? null : m3090b.getString(m43237g030));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setActive(m3090b.getInt(m43237g032) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g033) ? null : m3090b.getString(m43237g033));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g035) != 0);
                    extendedPdo.setCreatedAt(C9931p0.this.f29678b.m26907c(m3090b.isNull(m43237g036) ? null : Long.valueOf(m3090b.getLong(m43237g036))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g037));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29681a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.p0$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/p0$c.class */
    public class CallableC9934c implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29683a;

        public CallableC9934c(C25686y c25686y) {
            C9931p0.this = r4;
            this.f29683a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9931p0.this.f29677a, this.f29683a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "d");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "k");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "p");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9931p0.this.f29678b.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9931p0.this.f29678b.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g011), m3090b.getInt(m43237g010));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setO(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setF(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setG(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                    extendedPdo.setS(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g017) ? null : Long.valueOf(m3090b.getLong(m43237g017)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal2(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal3(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setVal4(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setVal5(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                    extendedPdo.setAddress(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setMsgDate(C9931p0.this.f29678b.m26907c(m3090b.isNull(m43237g025) ? null : Long.valueOf(m3090b.getLong(m43237g025))));
                    extendedPdo.setDate(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g030) ? null : m3090b.getString(m43237g030));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setActive(m3090b.getInt(m43237g032) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g033) ? null : m3090b.getString(m43237g033));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g035) != 0);
                    extendedPdo.setCreatedAt(C9931p0.this.f29678b.m26907c(m3090b.isNull(m43237g036) ? null : Long.valueOf(m3090b.getLong(m43237g036))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g037));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29683a.m3057l();
        }
    }

    public C9931p0(AbstractC25677q abstractC25677q) {
        this.f29677a = abstractC25677q;
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9929o0
    /* renamed from: a */
    public f<List<ExtendedPdo>> mo27020a(String str, String str2) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\", \n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\",\n            final.spam_category as \"spam_category\"\n            FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date,\n            dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active, state,synthetic_record_id,deleted,created_at, spam_category\n            FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0 AND d = 'Travel' \n            AND (datetime < datetime(?) AND datetime >= datetime(?)) \n            UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, \n            pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, \n            pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, \n            pdo.created_at , pdo.spam_category\n            FROM (select * from parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 and d= 'Travel'\n            AND (datetime < datetime(?) AND datetime >= datetime(?))) \n            as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL \n            group by 1) as pt on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n            ORDER BY final.date ASC\n        ", 4);
        m3059j.mo2651f0(1, str);
        m3059j.mo2651f0(2, str2);
        m3059j.mo2651f0(3, str);
        m3059j.mo2651f0(4, str2);
        return C25650g.m3096a(this.f29677a, false, new String[]{"parsed_data_object_table", "sms_backup_table"}, new CallableC9933b(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9929o0
    /* renamed from: b */
    public f<List<ExtendedPdo>> mo27019b(String str, String str2) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\",\n            final.spam_category as \"spam_category\"\n            FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n            dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active, state,synthetic_record_id,deleted,created_at, spam_category\n            FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0 AND d = 'Travel' \n            AND (datetime <= datetime(?) AND datetime >= datetime(?))\n            UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, \n            pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, \n            pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, \n            pdo.created_at , pdo.spam_category\n            FROM (select * from parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 and d= 'Travel'\n            AND (datetime <= datetime(?) AND datetime >= datetime(?))) \n            as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL \n            group by 1) as pt on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n            ORDER BY final.date ASC\n        ", 4);
        m3059j.mo2651f0(1, str);
        m3059j.mo2651f0(2, str2);
        m3059j.mo2651f0(3, str);
        m3059j.mo2651f0(4, str2);
        return C25650g.m3096a(this.f29677a, false, new String[]{"parsed_data_object_table", "sms_backup_table"}, new CallableC9932a(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9929o0
    /* renamed from: c */
    public f<List<ExtendedPdo>> mo27018c(String str, String str2) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\", \n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\",\n            final.spam_category as \"spam_category\"\n            FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n            dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active, state,synthetic_record_id,deleted,created_at, spam_category\n            FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0 AND d = 'Travel' \n            AND (datetime > datetime(?) AND datetime <= datetime(?))\n            UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, \n            pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, \n            pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, \n            pdo.created_at , pdo.spam_category\n            FROM (select * from parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 and d= 'Travel'\n            AND (datetime > datetime(?) AND datetime <= datetime(?))) \n            as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL \n            group by 1) as pt on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n            ORDER BY final.date ASC\n        ", 4);
        m3059j.mo2651f0(1, str);
        m3059j.mo2651f0(2, str2);
        m3059j.mo2651f0(3, str);
        m3059j.mo2651f0(4, str2);
        return C25650g.m3096a(this.f29677a, false, new String[]{"parsed_data_object_table", "sms_backup_table"}, new CallableC9934c(m3059j));
    }
}
