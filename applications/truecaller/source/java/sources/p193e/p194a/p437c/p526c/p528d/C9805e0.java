package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.insights.commons.model.Transport;
import com.truecaller.insights.models.enrichment.linking.LinkPruneMap;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.pdo.SmsBackup;
import com.truecaller.insights.models.pdo.SmsBackupMessage;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p531c0.C10020g;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.z.b.l;
/* renamed from: e.a.c.c.d.e0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0.class */
public final class C9805e0 extends AbstractC9800d0 {

    /* renamed from: a */
    public final AbstractC25677q f29454a;

    /* renamed from: b */
    public final AbstractC25663k<ParsedDataObject> f29455b;

    /* renamed from: c */
    public final C10020g f29456c = new C10020g();

    /* renamed from: d */
    public final AbstractC25663k<LinkPruneMap> f29457d;

    /* renamed from: e */
    public final AbstractC25663k<SmsBackup> f29458e;

    /* renamed from: f */
    public final AbstractC25646c0 f29459f;

    /* renamed from: g */
    public final AbstractC25646c0 f29460g;

    /* renamed from: h */
    public final AbstractC25646c0 f29461h;

    /* renamed from: i */
    public final AbstractC25646c0 f29462i;

    /* renamed from: j */
    public final AbstractC25646c0 f29463j;

    /* renamed from: e.a.c.c.d.e0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$a.class */
    public class C9806a implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9945s f29464a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC9921m0 f29465b;

        public C9806a(AbstractC9945s abstractC9945s, AbstractC9921m0 abstractC9921m0) {
            C9805e0.this = r4;
            this.f29464a = abstractC9945s;
            this.f29465b = abstractC9921m0;
        }

        /* renamed from: d */
        public Object m27084d(Object obj) {
            C9805e0 c9805e0 = C9805e0.this;
            AbstractC9945s abstractC9945s = this.f29464a;
            AbstractC9921m0 abstractC9921m0 = this.f29465b;
            Objects.requireNonNull(c9805e0);
            return AbstractC9800d0.m27152c0(c9805e0, abstractC9945s, abstractC9921m0, (d) obj);
        }
    }

    /* renamed from: e.a.c.c.d.e0$a0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$a0.class */
    public class CallableC9807a0 implements Callable<List<String>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29467a;

        public CallableC9807a0(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29467a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<String> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29467a, false, null);
            try {
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(m3090b.isNull(0) ? null : m3090b.getString(0));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29467a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$b.class */
    public class C9808b implements l<d<? super s>, Object> {
        public C9808b() {
            C9805e0.this = r4;
        }

        /* renamed from: d */
        public Object m27083d(Object obj) {
            d dVar = (d) obj;
            C9805e0 c9805e0 = C9805e0.this;
            c9805e0.mo27103k0("ORIGINAL");
            c9805e0.mo27107i0();
            c9805e0.mo27111g0();
            return s.a;
        }
    }

    /* renamed from: e.a.c.c.d.e0$b0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$b0.class */
    public class CallableC9809b0 implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29470a;

        public CallableC9809b0(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29470a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29470a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29470a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.e0$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$c.class */
    public class C9810c implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ List f29472a;

        public C9810c(List list) {
            C9805e0.this = r4;
            this.f29472a = list;
        }

        /* renamed from: d */
        public Object m27082d(Object obj) {
            d dVar = (d) obj;
            C9805e0 c9805e0 = C9805e0.this;
            List<Long> list = this.f29472a;
            c9805e0.mo27101l0(list);
            c9805e0.mo27112g(list);
            c9805e0.mo27118c(list);
            c9805e0.mo27113f0(list);
            return s.a;
        }
    }

    /* renamed from: e.a.c.c.d.e0$c0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$c0.class */
    public class CallableC9811c0 implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29474a;

        public CallableC9811c0(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29474a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29474a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29474a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$d.class */
    public class CallableC9812d implements Callable<s> {
        public CallableC9812d() {
            C9805e0.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9805e0.this.f29459f.acquire();
            C9805e0.this.f29454a.beginTransaction();
            try {
                acquire.m2673A();
                C9805e0.this.f29454a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9805e0.this.f29454a.endTransaction();
                C9805e0.this.f29459f.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$d0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$d0.class */
    public class CallableC9813d0 implements Callable<List<? extends ParsedDataObject>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29477a;

        public CallableC9813d0(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29477a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<? extends ParsedDataObject> call() throws Exception {
            Throwable th;
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29477a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        try {
                            parsedDataObject.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                            parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                            parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                            parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                            parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                            parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                            parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                            parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                            parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                            parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                            parsedDataObject.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                            parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                            arrayList.add(parsedDataObject);
                        } catch (Throwable th2) {
                            th = th2;
                            m3090b.close();
                            this.f29477a.m3057l();
                            throw th;
                        }
                    }
                    m3090b.close();
                    this.f29477a.m3057l();
                    return arrayList;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$e.class */
    public class CallableC9814e implements Callable<s> {
        public CallableC9814e() {
            C9805e0.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9805e0.this.f29460g.acquire();
            C9805e0.this.f29454a.beginTransaction();
            try {
                acquire.m2673A();
                C9805e0.this.f29454a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9805e0.this.f29454a.endTransaction();
                C9805e0.this.f29460g.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$e0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$e0.class */
    public class CallableC9815e0 implements Callable<Date> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29480a;

        public CallableC9815e0(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29480a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Date call() throws Exception {
            Date date = null;
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29480a, false, null);
            try {
                if (m3090b.moveToFirst()) {
                    date = C9805e0.this.f29456c.m26907c(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
                }
                m3090b.close();
                this.f29480a.m3057l();
                return date;
            } catch (Throwable th) {
                m3090b.close();
                this.f29480a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$f.class */
    public class CallableC9816f implements Callable<SmsBackupMessage> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29482a;

        public CallableC9816f(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29482a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public SmsBackupMessage call() throws Exception {
            SmsBackupMessage smsBackupMessage = null;
            Long l = null;
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29482a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                if (m3090b.moveToFirst()) {
                    long j = m3090b.getLong(m43237g0);
                    String string = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string2 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    if (!m3090b.isNull(m43237g04)) {
                        l = Long.valueOf(m3090b.getLong(m43237g04));
                    }
                    smsBackupMessage = new SmsBackupMessage(j, string, string2, C9805e0.this.f29456c.m26907c(l), m3090b.getLong(m43237g05));
                }
                m3090b.close();
                this.f29482a.m3057l();
                return smsBackupMessage;
            } catch (Throwable th) {
                m3090b.close();
                this.f29482a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$f0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$f0.class */
    public class C9817f0 extends AbstractC25646c0 {
        public C9817f0(C9805e0 c9805e0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM parsed_data_object_table";
        }
    }

    /* renamed from: e.a.c.c.d.e0$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$g.class */
    public class CallableC9818g implements Callable<ParsedDataObject> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29484a;

        public CallableC9818g(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29484a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public ParsedDataObject call() throws Exception {
            Throwable th;
            ParsedDataObject parsedDataObject;
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29484a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    if (m3090b.moveToFirst()) {
                        ParsedDataObject parsedDataObject2 = new ParsedDataObject();
                        parsedDataObject2.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject2.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject2.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject2.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject2.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject2.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject2.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject2.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject2.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject2.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject2.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject2.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject2.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject2.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject2.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject2.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject2.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject2.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        try {
                            parsedDataObject2.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                            parsedDataObject2.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                            parsedDataObject2.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                            parsedDataObject2.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                            parsedDataObject2.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                            parsedDataObject2.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                            parsedDataObject2.setActive(m3090b.getInt(m43237g025) != 0);
                            parsedDataObject2.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                            parsedDataObject2.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                            parsedDataObject2.setDeleted(m3090b.getInt(m43237g028) != 0);
                            parsedDataObject2.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                            parsedDataObject2.setSpamCategory(m3090b.getInt(m43237g030));
                            parsedDataObject = parsedDataObject2;
                        } catch (Throwable th2) {
                            th = th2;
                            m3090b.close();
                            this.f29484a.m3057l();
                            throw th;
                        }
                    } else {
                        parsedDataObject = null;
                    }
                    m3090b.close();
                    this.f29484a.m3057l();
                    return parsedDataObject;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$g0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$g0.class */
    public class C9819g0 extends AbstractC25646c0 {
        public C9819g0(C9805e0 c9805e0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM sms_backup_table";
        }
    }

    /* renamed from: e.a.c.c.d.e0$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$h.class */
    public class CallableC9820h implements Callable<List<Long>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29486a;

        public CallableC9820h(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29486a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<Long> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29486a, false, null);
            try {
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29486a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$h0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$h0.class */
    public class C9821h0 extends AbstractC25646c0 {
        public C9821h0(C9805e0 c9805e0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n        UPDATE parsed_data_object_table SET synthetic_record_id = null, state = ?\n        WHERE messageID >= -1\n    ";
        }
    }

    /* renamed from: e.a.c.c.d.e0$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$i.class */
    public class CallableC9822i implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29488a;

        public CallableC9822i(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29488a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29488a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29488a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$i0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$i0.class */
    public class C9823i0 extends AbstractC25646c0 {
        public C9823i0(C9805e0 c9805e0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM parsed_data_object_table WHERE messageID >= -1";
        }
    }

    /* renamed from: e.a.c.c.d.e0$j */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$j.class */
    public class C9824j extends AbstractC25663k<ParsedDataObject> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9824j(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9805e0.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, ParsedDataObject parsedDataObject) {
            ParsedDataObject parsedDataObject2 = parsedDataObject;
            abstractC26154f.mo2650l0(1, parsedDataObject2.getMessageID());
            if (parsedDataObject2.getD() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, parsedDataObject2.getD());
            }
            if (parsedDataObject2.getK() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, parsedDataObject2.getK());
            }
            if (parsedDataObject2.getP() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, parsedDataObject2.getP());
            }
            if (parsedDataObject2.getC() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, parsedDataObject2.getC());
            }
            if (parsedDataObject2.getO() == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2651f0(6, parsedDataObject2.getO());
            }
            if (parsedDataObject2.getF() == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2651f0(7, parsedDataObject2.getF());
            }
            if (parsedDataObject2.getG() == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2651f0(8, parsedDataObject2.getG());
            }
            if (parsedDataObject2.getS() == null) {
                abstractC26154f.mo2648y0(9);
            } else {
                abstractC26154f.mo2651f0(9, parsedDataObject2.getS());
            }
            if (parsedDataObject2.getAccountModelId() == null) {
                abstractC26154f.mo2648y0(10);
            } else {
                abstractC26154f.mo2650l0(10, parsedDataObject2.getAccountModelId().longValue());
            }
            if (parsedDataObject2.getVal1() == null) {
                abstractC26154f.mo2648y0(11);
            } else {
                abstractC26154f.mo2651f0(11, parsedDataObject2.getVal1());
            }
            if (parsedDataObject2.getVal2() == null) {
                abstractC26154f.mo2648y0(12);
            } else {
                abstractC26154f.mo2651f0(12, parsedDataObject2.getVal2());
            }
            if (parsedDataObject2.getVal3() == null) {
                abstractC26154f.mo2648y0(13);
            } else {
                abstractC26154f.mo2651f0(13, parsedDataObject2.getVal3());
            }
            if (parsedDataObject2.getVal4() == null) {
                abstractC26154f.mo2648y0(14);
            } else {
                abstractC26154f.mo2651f0(14, parsedDataObject2.getVal4());
            }
            if (parsedDataObject2.getVal5() == null) {
                abstractC26154f.mo2648y0(15);
            } else {
                abstractC26154f.mo2651f0(15, parsedDataObject2.getVal5());
            }
            if (parsedDataObject2.getDatetime() == null) {
                abstractC26154f.mo2648y0(16);
            } else {
                abstractC26154f.mo2651f0(16, parsedDataObject2.getDatetime());
            }
            if (parsedDataObject2.getAddress() == null) {
                abstractC26154f.mo2648y0(17);
            } else {
                abstractC26154f.mo2651f0(17, parsedDataObject2.getAddress());
            }
            if (parsedDataObject2.getDate() == null) {
                abstractC26154f.mo2648y0(18);
            } else {
                abstractC26154f.mo2651f0(18, parsedDataObject2.getDate());
            }
            Long m26909a = C9805e0.this.f29456c.m26909a(parsedDataObject2.getMsgDate());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(19);
            } else {
                abstractC26154f.mo2650l0(19, m26909a.longValue());
            }
            if (parsedDataObject2.getDffVal1() == null) {
                abstractC26154f.mo2648y0(20);
            } else {
                abstractC26154f.mo2651f0(20, parsedDataObject2.getDffVal1());
            }
            if (parsedDataObject2.getDffVal2() == null) {
                abstractC26154f.mo2648y0(21);
            } else {
                abstractC26154f.mo2651f0(21, parsedDataObject2.getDffVal2());
            }
            if (parsedDataObject2.getDffVal3() == null) {
                abstractC26154f.mo2648y0(22);
            } else {
                abstractC26154f.mo2651f0(22, parsedDataObject2.getDffVal3());
            }
            if (parsedDataObject2.getDffVal4() == null) {
                abstractC26154f.mo2648y0(23);
            } else {
                abstractC26154f.mo2651f0(23, parsedDataObject2.getDffVal4());
            }
            if (parsedDataObject2.getDffVal5() == null) {
                abstractC26154f.mo2648y0(24);
            } else {
                abstractC26154f.mo2651f0(24, parsedDataObject2.getDffVal5());
            }
            abstractC26154f.mo2650l0(25, parsedDataObject2.getActive() ? 1L : 0L);
            if (parsedDataObject2.getState() == null) {
                abstractC26154f.mo2648y0(26);
            } else {
                abstractC26154f.mo2651f0(26, parsedDataObject2.getState());
            }
            if (parsedDataObject2.getSyntheticRecordId() == null) {
                abstractC26154f.mo2648y0(27);
            } else {
                abstractC26154f.mo2650l0(27, parsedDataObject2.getSyntheticRecordId().longValue());
            }
            abstractC26154f.mo2650l0(28, parsedDataObject2.getDeleted() ? 1L : 0L);
            Long m26909a2 = C9805e0.this.f29456c.m26909a(parsedDataObject2.getCreatedAt());
            if (m26909a2 == null) {
                abstractC26154f.mo2648y0(29);
            } else {
                abstractC26154f.mo2650l0(29, m26909a2.longValue());
            }
            abstractC26154f.mo2650l0(30, parsedDataObject2.getSpamCategory());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `parsed_data_object_table` (`messageID`,`d`,`k`,`p`,`c`,`o`,`f`,`g`,`s`,`account_model_id`,`val1`,`val2`,`val3`,`val4`,`val5`,`datetime`,`address`,`date`,`msg_date`,`dff_val1`,`dff_val2`,`dff_val3`,`dff_val4`,`dff_val5`,`active`,`state`,`synthetic_record_id`,`deleted`,`created_at`,`spam_category`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.e0$j0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$j0.class */
    public class C9825j0 extends AbstractC25646c0 {
        public C9825j0(C9805e0 c9805e0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM link_prune_table";
        }
    }

    /* renamed from: e.a.c.c.d.e0$k */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$k.class */
    public class CallableC9826k implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29491a;

        public CallableC9826k(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29491a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29491a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "d");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "k");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "p");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g04));
                    float f = m3090b.getFloat(m43237g05);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g06));
                    ExtendedPdo extendedPdo = new ExtendedPdo(m3090b.getLong(m43237g07), m26905e, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g037) ? null : m3090b.getString(m43237g037), m26906d, f, m3090b.getInt(m43237g09));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g0));
                    extendedPdo.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g03));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g010) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g011) ? null : Long.valueOf(m3090b.getLong(m43237g011))));
                    extendedPdo.setD(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setK(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setP(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setC(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                    extendedPdo.setO(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setF(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setG(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setS(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                    extendedPdo.setVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDate(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g030) ? null : m3090b.getString(m43237g030));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g033) ? null : Long.valueOf(m3090b.getLong(m43237g033)));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setActive(m3090b.getInt(m43237g035) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g036) ? null : m3090b.getString(m43237g036));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29491a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$k0 */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$k0.class */
    public class C9827k0 implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ List f29493a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC9793c f29494b;

        public C9827k0(List list, AbstractC9793c abstractC9793c) {
            C9805e0.this = r4;
            this.f29493a = list;
            this.f29494b = abstractC9793c;
        }

        /* renamed from: d */
        public Object m27081d(Object obj) {
            C9805e0 c9805e0 = C9805e0.this;
            List list = this.f29493a;
            AbstractC9793c abstractC9793c = this.f29494b;
            Objects.requireNonNull(c9805e0);
            return AbstractC9800d0.m27151e(c9805e0, list, abstractC9793c, (d) obj);
        }
    }

    /* renamed from: e.a.c.c.d.e0$l */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$l.class */
    public class CallableC9828l implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29496a;

        public CallableC9828l(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29496a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29496a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29496a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$m */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$m.class */
    public class CallableC9829m implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29498a;

        public CallableC9829m(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29498a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29498a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "d");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "k");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "p");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g04));
                    float f = m3090b.getFloat(m43237g05);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g06));
                    ExtendedPdo extendedPdo = new ExtendedPdo(m3090b.getLong(m43237g07), m26905e, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g037) ? null : m3090b.getString(m43237g037), m26906d, f, m3090b.getInt(m43237g09));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g0));
                    extendedPdo.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g03));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g010) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g011) ? null : Long.valueOf(m3090b.getLong(m43237g011))));
                    extendedPdo.setD(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setK(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setP(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setC(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                    extendedPdo.setO(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setF(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setG(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setS(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                    extendedPdo.setVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDate(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g030) ? null : m3090b.getString(m43237g030));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g033) ? null : Long.valueOf(m3090b.getLong(m43237g033)));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setActive(m3090b.getInt(m43237g035) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g036) ? null : m3090b.getString(m43237g036));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29498a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$n */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$n.class */
    public class CallableC9830n implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29500a;

        public CallableC9830n(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29500a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29500a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29500a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.e0$o */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$o.class */
    public class CallableC9831o implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29502a;

        public CallableC9831o(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29502a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29502a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29502a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.e0$p */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$p.class */
    public class CallableC9832p implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29504a;

        public CallableC9832p(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29504a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29504a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29504a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.e0$q */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$q.class */
    public class CallableC9833q implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29506a;

        public CallableC9833q(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29506a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29506a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29506a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.e0$r */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$r.class */
    public class CallableC9834r implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29508a;

        public CallableC9834r(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29508a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29508a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29508a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.e0$s */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$s.class */
    public class CallableC9835s implements Callable<List<ExtendedPdo>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29510a;

        public CallableC9835s(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29510a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ExtendedPdo> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29510a, false, null);
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
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    Transport m26905e = C9805e0.this.f29456c.m26905e(m3090b.getInt(m43237g02));
                    ClassifierType m26906d = C9805e0.this.f29456c.m26906d(m3090b.getInt(m43237g07));
                    String string = m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08);
                    ExtendedPdo extendedPdo = new ExtendedPdo(j, m26905e, string, m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo.setMessageID(m3090b.getLong(m43237g03));
                    extendedPdo.setD(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo.setK(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo.setP(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo.setC(m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010));
                    extendedPdo.setO(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo.setF(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo.setG(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo.setS(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo.setAccountModelId(m3090b.isNull(m43237g015) ? null : Long.valueOf(m3090b.getLong(m43237g015)));
                    extendedPdo.setVal1(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo.setVal2(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo.setVal3(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo.setVal4(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019));
                    extendedPdo.setVal5(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo.setDatetime(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo.setAddress(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g023) ? null : Long.valueOf(m3090b.getLong(m43237g023))));
                    extendedPdo.setDate(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo.setDffVal1(m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025));
                    extendedPdo.setDffVal2(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo.setDffVal3(m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                    extendedPdo.setDffVal4(m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028));
                    extendedPdo.setDffVal5(m3090b.isNull(m43237g029) ? null : m3090b.getString(m43237g029));
                    extendedPdo.setActive(m3090b.getInt(m43237g030) != 0);
                    extendedPdo.setState(m3090b.isNull(m43237g031) ? null : m3090b.getString(m43237g031));
                    extendedPdo.setSyntheticRecordId(m3090b.isNull(m43237g032) ? null : Long.valueOf(m3090b.getLong(m43237g032)));
                    extendedPdo.setDeleted(m3090b.getInt(m43237g033) != 0);
                    extendedPdo.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g034) ? null : Long.valueOf(m3090b.getLong(m43237g034))));
                    extendedPdo.setSpamCategory(m3090b.getInt(m43237g035));
                    arrayList.add(extendedPdo);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29510a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.e0$t */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$t.class */
    public class C9836t extends AbstractC25663k<LinkPruneMap> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9836t(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9805e0.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, LinkPruneMap linkPruneMap) {
            LinkPruneMap linkPruneMap2 = linkPruneMap;
            abstractC26154f.mo2650l0(1, linkPruneMap2.getParentId());
            abstractC26154f.mo2650l0(2, linkPruneMap2.getChildId());
            if (linkPruneMap2.getLinkType() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, linkPruneMap2.getLinkType());
            }
            Long m26909a = C9805e0.this.f29456c.m26909a(linkPruneMap2.getCreatedAt());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2650l0(4, m26909a.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `link_prune_table` (`parent_id`,`child_id`,`link_type`,`created_at`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.e0$u */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$u.class */
    public class CallableC9837u implements Callable<Date> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29513a;

        public CallableC9837u(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29513a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Date call() throws Exception {
            Date date = null;
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29513a, false, null);
            try {
                if (m3090b.moveToFirst()) {
                    date = C9805e0.this.f29456c.m26907c(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
                }
                m3090b.close();
                this.f29513a.m3057l();
                return date;
            } catch (Throwable th) {
                m3090b.close();
                this.f29513a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$v */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$v.class */
    public class CallableC9838v implements Callable<Date> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29515a;

        public CallableC9838v(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29515a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Date call() throws Exception {
            Date date = null;
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29515a, false, null);
            try {
                if (m3090b.moveToFirst()) {
                    date = C9805e0.this.f29456c.m26907c(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
                }
                m3090b.close();
                this.f29515a.m3057l();
                return date;
            } catch (Throwable th) {
                m3090b.close();
                this.f29515a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$w */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$w.class */
    public class CallableC9839w implements Callable<List<? extends ParsedDataObject>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29517a;

        public CallableC9839w(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29517a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<? extends ParsedDataObject> call() throws Exception {
            Throwable th;
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29517a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        try {
                            parsedDataObject.setMsgDate(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                            parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                            parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                            parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                            parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                            parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                            parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                            parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                            parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                            parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                            parsedDataObject.setCreatedAt(C9805e0.this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                            parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                            arrayList.add(parsedDataObject);
                        } catch (Throwable th2) {
                            th = th2;
                            m3090b.close();
                            this.f29517a.m3057l();
                            throw th;
                        }
                    }
                    m3090b.close();
                    this.f29517a.m3057l();
                    return arrayList;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$x */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$x.class */
    public class CallableC9840x implements Callable<List<Long>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29519a;

        public CallableC9840x(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29519a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<Long> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29519a, false, null);
            try {
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29519a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.e0$y */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$y.class */
    public class C9841y extends AbstractC25663k<SmsBackup> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9841y(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9805e0.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, SmsBackup smsBackup) {
            SmsBackup smsBackup2 = smsBackup;
            abstractC26154f.mo2650l0(1, smsBackup2.getMessageID());
            if (smsBackup2.getAddress() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, smsBackup2.getAddress());
            }
            if (smsBackup2.getMessage() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, smsBackup2.getMessage());
            }
            Long m26909a = C9805e0.this.f29456c.m26909a(smsBackup2.getDate());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2650l0(4, m26909a.longValue());
            }
            C10020g c10020g = C9805e0.this.f29456c;
            Transport transport = smsBackup2.getTransport();
            Objects.requireNonNull(c10020g);
            s1.z.c.l.e(transport, "transport");
            abstractC26154f.mo2650l0(5, transport.getValue());
            abstractC26154f.mo2650l0(6, smsBackup2.getParseFailed() ? 1L : 0L);
            if (smsBackup2.getErrorMessage() == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2651f0(7, smsBackup2.getErrorMessage());
            }
            abstractC26154f.mo2650l0(8, smsBackup2.getRetryCount());
            abstractC26154f.mo2650l0(9, smsBackup2.getDeleted() ? 1L : 0L);
            Long m26909a2 = C9805e0.this.f29456c.m26909a(smsBackup2.getCreatedAt());
            if (m26909a2 == null) {
                abstractC26154f.mo2648y0(10);
            } else {
                abstractC26154f.mo2650l0(10, m26909a2.longValue());
            }
            if (smsBackup2.getUpdateCategory() == null) {
                abstractC26154f.mo2648y0(11);
            } else {
                abstractC26154f.mo2651f0(11, smsBackup2.getUpdateCategory());
            }
            C10020g c10020g2 = C9805e0.this.f29456c;
            ClassifierType classifiedBy = smsBackup2.getClassifiedBy();
            Objects.requireNonNull(c10020g2);
            s1.z.c.l.e(classifiedBy, "classifierType");
            abstractC26154f.mo2650l0(12, classifiedBy.getValue());
            abstractC26154f.mo2650l0(13, smsBackup2.getConversationId());
            abstractC26154f.mo2650l0(14, smsBackup2.getSpamCategory());
            abstractC26154f.mo2652T0(15, smsBackup2.getConfidenceScore());
            abstractC26154f.mo2650l0(16, smsBackup2.getNoOfWords());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `sms_backup_table` (`messageID`,`address`,`message`,`date`,`transport`,`parseFailed`,`errorMessage`,`retryCount`,`deleted`,`created_at`,`updateCategory`,`classified_by`,`conversationId`,`spam_category`,`confidence_score`,`no_of_words`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.e0$z */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/e0$z.class */
    public class CallableC9842z implements Callable<List<Long>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29522a;

        public CallableC9842z(C25686y c25686y) {
            C9805e0.this = r4;
            this.f29522a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<Long> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9805e0.this.f29454a, this.f29522a, false, null);
            try {
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29522a.m3057l();
            }
        }
    }

    public C9805e0(AbstractC25677q abstractC25677q) {
        this.f29454a = abstractC25677q;
        this.f29455b = new C9824j(abstractC25677q);
        this.f29457d = new C9836t(abstractC25677q);
        this.f29458e = new C9841y(abstractC25677q);
        this.f29459f = new C9817f0(this, abstractC25677q);
        this.f29460g = new C9819g0(this, abstractC25677q);
        this.f29461h = new C9821h0(this, abstractC25677q);
        this.f29462i = new C9823i0(this, abstractC25677q);
        this.f29463j = new C9825j0(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: A */
    public Object mo27148A(Date date, long j, d<? super List<Long>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT pdo.messageID FROM parsed_data_object_table pdo\n        LEFT JOIN sms_backup_table sbt ON sbt.messageID = pdo.messageID \n        WHERE sbt.conversationId = ?\n        AND pdo.d = \"OTP\"\n        AND pdo.msg_date < ?\n        AND pdo.messageID >= -1\n    ", 2);
        m3059j.mo2650l0(1, j);
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2650l0(2, m26909a.longValue());
        }
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9842z(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: B */
    public Object mo27147B(Date date, d<? super List<Long>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT messageID FROM parsed_data_object_table \n        WHERE d = \"OTP\"\n        AND msg_date < ?\n        AND messageID >= -1\n    ", 1);
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9840x(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: C */
    public f<List<ExtendedPdo>> mo27146C(Date date) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" \n            FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n            dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category\n            FROM parsed_data_object_table as p \n            WHERE messageID >= 0 AND active=1 AND d = 'OTP' AND msg_date >= ?\n            UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, \n            pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, \n            pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category \n            FROM (select * from parsed_data_object_table \n            where messageID < 0 AND active=1 and d='OTP' AND msg_date >= ?)  as pdo \n            LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt \n            on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n            JOIN pdo_fts ON (final.messageID = pdo_fts.docid) ORDER BY final.msg_date DESC\n    ", 2);
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        Long m26909a2 = this.f29456c.m26909a(date);
        if (m26909a2 == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2650l0(2, m26909a2.longValue());
        }
        return C25650g.m3096a(this.f29454a, false, new String[]{"parsed_data_object_table", "sms_backup_table", "pdo_fts"}, new CallableC9809b0(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: D */
    public Object mo27145D(long j, d<? super ParsedDataObject> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM parsed_data_object_table where messageID is ?", 1);
        m3059j.mo2650l0(1, j);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9818g(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: E */
    public List<ParsedDataObject> mo27144E(Set<Long> set) {
        Throwable th;
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM parsed_data_object_table where messageID in (");
        int size = set.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (Long l : set) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        try {
                            parsedDataObject.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                            parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                            parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                            parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                            parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                            parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                            parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                            parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                            parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                            parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                            parsedDataObject.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                            parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                            arrayList.add(parsedDataObject);
                        } catch (Throwable th2) {
                            th = th2;
                            m3090b.close();
                            m3059j.m3057l();
                            throw th;
                        }
                    }
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: F */
    public List<ParsedDataObject> mo27143F(Set<Long> set) {
        Throwable th;
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM parsed_data_object_table where messageID in (");
        int size = set.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (Long l : set) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        try {
                            parsedDataObject.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                            parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                            parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                            parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                            parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                            parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                            parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                            parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                            parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                            parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                            parsedDataObject.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                            parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                            arrayList.add(parsedDataObject);
                        } catch (Throwable th2) {
                            th = th2;
                            m3090b.close();
                            m3059j.m3057l();
                            throw th;
                        }
                    }
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: G */
    public ExtendedPdo mo27142G(long j) {
        Throwable th;
        ExtendedPdo extendedPdo;
        C25686y m3059j = C25686y.m3059j("\n            SELECT p.*, sbt.conversationId as \"conversationId\", sbt.transport as \"transport\", sbt.classified_by, sbt.message, \n            sbt.updateCategory, sbt.no_of_words as \"no_of_words\", sbt.confidence_score as \"confidence_score\" \n            FROM ( SELECT * FROM parsed_data_object_table AS p  WHERE messageID <> - 1 UNION ALL SELECT pt.messageID as \n            messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4,\n            pdo.val5, pdo.datetime, pdo.address, pdo.date, pdo.msg_date, pdo.dff_val1, pdo.dff_val2,\n            pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted,\n            pdo.created_at, pdo.spam_category FROM ( SELECT * FROM parsed_data_object_table WHERE messageID = - 1)\n            AS pdo LEFT JOIN ( SELECT synthetic_record_id, Max(messageID) AS messageID FROM \n            parsed_data_object_table WHERE synthetic_record_id IS NOT NULL GROUP BY 1 ) AS pt \n            ON pdo.messageID = pt.synthetic_record_id ) AS p LEFT JOIN sms_backup_table sbt\n            ON p.messageID = sbt.messageID\n            WHERE sbt.messageID = ?\n            LIMIT 1\n        ", 1);
        m3059j.mo2650l0(1, j);
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g032 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g033 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g034 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g035 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g036 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                int m43237g037 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                if (m3090b.moveToFirst()) {
                    long j2 = m3090b.getLong(m43237g031);
                    Transport m26905e = this.f29456c.m26905e(m3090b.getInt(m43237g032));
                    ClassifierType m26906d = this.f29456c.m26906d(m3090b.getInt(m43237g033));
                    ExtendedPdo extendedPdo2 = new ExtendedPdo(j2, m26905e, m3090b.isNull(m43237g034) ? null : m3090b.getString(m43237g034), m3090b.isNull(m43237g035) ? null : m3090b.getString(m43237g035), m26906d, m3090b.getFloat(m43237g037), m3090b.getInt(m43237g036));
                    extendedPdo2.setMessageID(m3090b.getLong(m43237g0));
                    extendedPdo2.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    extendedPdo2.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    extendedPdo2.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    extendedPdo2.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                    extendedPdo2.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    extendedPdo2.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    extendedPdo2.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                    extendedPdo2.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                    extendedPdo2.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                    extendedPdo2.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    extendedPdo2.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                    extendedPdo2.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                    extendedPdo2.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                    extendedPdo2.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                    extendedPdo2.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                    extendedPdo2.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                    extendedPdo2.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                    extendedPdo2.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                    extendedPdo2.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                    extendedPdo2.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                    extendedPdo2.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                    extendedPdo2.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                    extendedPdo2.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                    extendedPdo2.setActive(m3090b.getInt(m43237g025) != 0);
                    extendedPdo2.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                    extendedPdo2.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                    extendedPdo2.setDeleted(m3090b.getInt(m43237g028) != 0);
                    extendedPdo2.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                    extendedPdo2.setSpamCategory(m3090b.getInt(m43237g030));
                    extendedPdo = extendedPdo2;
                } else {
                    extendedPdo = null;
                }
                m3090b.close();
                m3059j.m3057l();
                return extendedPdo;
            } catch (Throwable th2) {
                th = th2;
                m3090b.close();
                m3059j.m3057l();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: H */
    public Object mo27141H(long j, int i, d<? super List<ExtendedPdo>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT sbt.messageID as messageID, sbt.address as address, sbt.spam_category as spam_category, \n                sbt.classified_by as classified_by, sbt.confidence_score as confidence_score, sbt.transport as transport, \n                sbt.conversationId as conversationId, sbt.message as message, sbt.no_of_words as no_of_words, sbt.deleted as deleted, \n                sbt.created_at as created_at, IFNULL(pdo.d, \"\") AS d, IFNULL(pdo.k,\"\") AS k,\n                IFNULL(pdo.p, \"\") AS p, IFNULL(pdo.c, \"\") As c, IFNULL(pdo.o, \"\") as o, IFNULL(pdo.f, \"\") as f, \n                IFNULL(pdo.g, \"\") AS g, IFNULL(pdo.s, \"\") AS s, IFNULL(pdo.val1, \"\") AS val1, IFNULL(pdo.val2, \"\") AS val2, \n                IFNULL(pdo.val3, \"\") AS val3, IFNULL(pdo.val4, \"\") AS val4, IFNULL(pdo.val5, \"\") AS val5, IFNULL(pdo.date, \"\") AS date, \n                IFNULL(pdo.dff_val1, \"\") AS dff_val1, IFNULL(pdo.dff_val2, \"\") AS dff_val2, IFNULL(pdo.dff_val3, \"\") AS dff_val3, \n                IFNULL(pdo.dff_val4, \"\") AS dff_val4, IFNULL(pdo.dff_val5, \"\") AS dff_val5, IFNULL(pdo.datetime, \"\") datetime, \n                IFNULL(pdo.synthetic_record_id, \"\") as synthetic_record_id, IFNULL(pdo.account_model_id, \"\") as account_model_id,\n                IFNULL(sbt.date, \"\") AS msg_date, IFNULL(pdo.active, \"\") AS active, \n                IFNULL(pdo.state, \"\") AS state, IFNULL(sbt.updateCategory, \"\") AS updateCategory FROM sms_backup_table sbt \n            LEFT JOIN parsed_data_object_table pdo\n            ON pdo.messageID = sbt.messageID\n            WHERE sbt.deleted = 0 \n            AND sbt.spam_category != 4\n            AND sbt.conversationId = ?\n            ORDER BY sbt.date DESC LIMIT ?\n        ", 2);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, i);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9826k(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: I */
    public Object mo27140I(long j, long j2, long j3, d<? super List<ExtendedPdo>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT sbt.messageID as messageID, sbt.address as address, sbt.spam_category as spam_category, \n                sbt.classified_by as classified_by, sbt.confidence_score as confidence_score, sbt.transport as transport, \n                sbt.conversationId as conversationId, sbt.message as message, sbt.no_of_words as no_of_words, sbt.deleted as deleted, \n                sbt.created_at as created_at, IFNULL(pdo.d, \"\") AS d, IFNULL(pdo.k,\"\") AS k,\n                IFNULL(pdo.p, \"\") AS p, IFNULL(pdo.c, \"\") As c, IFNULL(pdo.o, \"\") as o, IFNULL(pdo.f, \"\") as f, \n                IFNULL(pdo.g, \"\") AS g, IFNULL(pdo.s, \"\") AS s, IFNULL(pdo.val1, \"\") AS val1, IFNULL(pdo.val2, \"\") AS val2, \n                IFNULL(pdo.val3, \"\") AS val3, IFNULL(pdo.val4, \"\") AS val4, IFNULL(pdo.val5, \"\") AS val5, IFNULL(pdo.date, \"\") AS date, \n                IFNULL(pdo.dff_val1, \"\") AS dff_val1, IFNULL(pdo.dff_val2, \"\") AS dff_val2, IFNULL(pdo.dff_val3, \"\") AS dff_val3, \n                IFNULL(pdo.dff_val4, \"\") AS dff_val4, IFNULL(pdo.dff_val5, \"\") AS dff_val5, IFNULL(pdo.datetime, \"\") datetime, \n                IFNULL(pdo.synthetic_record_id, \"\") as synthetic_record_id, IFNULL(pdo.account_model_id, \"\") as account_model_id,\n                IFNULL(sbt.date, \"\") AS msg_date, IFNULL(pdo.active, \"\") AS active, \n                IFNULL(pdo.state, \"\") AS state, IFNULL(sbt.updateCategory, \"\") AS updateCategory FROM sms_backup_table sbt \n            LEFT JOIN parsed_data_object_table pdo\n            ON pdo.messageID = sbt.messageID\n            WHERE sbt.deleted = 0 \n            AND sbt.spam_category != 4\n            AND sbt.conversationId = ?\n            AND sbt.date > ? AND sbt.date < ?\n            ORDER BY sbt.date DESC\n        ", 3);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        m3059j.mo2650l0(3, j3);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9829m(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: J */
    public List<ParsedDataObject> mo27139J(long j) {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT * FROM parsed_data_object_table WHERE account_model_id = ?", 1);
        m3059j.mo2650l0(1, j);
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        try {
                            parsedDataObject.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                            parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                            parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                            parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                            parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                            parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                            parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                            parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                            parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                            parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                            parsedDataObject.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                            parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                            arrayList.add(parsedDataObject);
                        } catch (Throwable th2) {
                            th = th2;
                            m3090b.close();
                            m3059j.m3057l();
                            throw th;
                        }
                    }
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: K */
    public Object mo27138K(List<String> list, long j, int i, d<? super List<ExtendedPdo>> dVar) {
        StringBuilder m8688M = C22128a.m8688M("SELECT final.conversationId as \"conversationId\", final.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\",", StringConstant.NEW_LINE, "            final.k as \"k\", final.p as \"p\", final.classified_by as \"classified_by\", final.message as \"message\", final.updateCategory as \"updateCategory\",", StringConstant.NEW_LINE, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",");
        C22128a.m8666T0(m8688M, StringConstant.NEW_LINE, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",", StringConstant.NEW_LINE, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", ");
        C22128a.m8666T0(m8688M, StringConstant.NEW_LINE, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",", StringConstant.NEW_LINE, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", ");
        C22128a.m8666T0(m8688M, StringConstant.NEW_LINE, "            final.spam_category as \"spam_category\", final.no_of_words as \"no_of_words\", final.confidence_score as \"confidence_score\" FROM ", StringConstant.NEW_LINE, "           (SELECT parsed_data_object_table.*, sms_backup_table.*, conversationId FROM parsed_data_object_table");
        C22128a.m8666T0(m8688M, StringConstant.NEW_LINE, "            INNER JOIN sms_backup_table ", StringConstant.NEW_LINE, "            ON parsed_data_object_table.messageID = sms_backup_table.messageID");
        C22128a.m8666T0(m8688M, StringConstant.NEW_LINE, "            WHERE conversationId = ", "?", StringConstant.NEW_LINE);
        m8688M.append("            AND d in (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            ORDER BY msg_date DESC", StringConstant.NEW_LINE, "            LIMIT ", "?");
        m8688M.append(") as final");
        int i2 = 2;
        int i3 = size + 2;
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), i3);
        m3059j.mo2650l0(1, j);
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str);
            }
            i2++;
        }
        m3059j.mo2650l0(i3, i);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9822i(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: L */
    public Object mo27137L(List<String> list, long j, long j2, long j3, d<? super List<ExtendedPdo>> dVar) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            SELECT final.conversationId as \"conversationId\", final.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", ", StringConstant.NEW_LINE, "            final.k as \"k\", final.p as \"p\", final.classified_by as \"classified_by\", final.message as \"message\", final.updateCategory as \"updateCategory\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",", StringConstant.NEW_LINE, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", ", StringConstant.NEW_LINE, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", ", StringConstant.NEW_LINE, "            final.spam_category as \"spam_category\", final.no_of_words as \"no_of_words\", final.confidence_score as \"confidence_score\" FROM ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "           (SELECT * FROM parsed_data_object_table", StringConstant.NEW_LINE, "            INNER JOIN sms_backup_table ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            ON parsed_data_object_table.messageID = sms_backup_table.messageID", StringConstant.NEW_LINE, "            WHERE conversationId = ", "?");
        C22128a.m8666T0(m8688M, StringConstant.NEW_LINE, "            AND msg_date > ", "?", " AND msg_date < ");
        m8688M.append("?");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("            AND d in (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("            ORDER BY msg_date DESC) as final");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        ");
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), size + 3);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        m3059j.mo2650l0(3, j3);
        int i = 4;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9828l(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: M */
    public Object mo27136M(List<String> list, Date date, int i, d<? super List<? extends ParsedDataObject>> dVar) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            SELECT * FROM parsed_data_object_table", StringConstant.NEW_LINE, "            WHERE ", StringConstant.NEW_LINE);
        m8688M.append("                d IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(") AND ");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                msg_date > ", "?", " AND", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                state = 'ORIGINAL'", StringConstant.NEW_LINE, "            ORDER BY msg_date LIMIT ", "?");
        String m8618h = C22128a.m8618h(m8688M, StringConstant.NEW_LINE, "        ");
        int i2 = size + 2;
        C25686y m3059j = C25686y.m3059j(m8618h, i2);
        int i3 = 1;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i3);
            } else {
                m3059j.mo2651f0(i3, str);
            }
            i3++;
        }
        int i4 = size + 1;
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(i4);
        } else {
            m3059j.mo2650l0(i4, m26909a.longValue());
        }
        m3059j.mo2650l0(i2, i);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9813d0(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: N */
    public Object mo27135N(String str, long j, List<Integer> list, d<? super List<ExtendedPdo>> dVar) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            SELECT final.conversationId as \"conversationId\", final.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", ", StringConstant.NEW_LINE, "            final.k as \"k\", final.p as \"p\", final.classified_by as \"classified_by\", final.message as \"message\", final.updateCategory as \"updateCategory\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",", StringConstant.NEW_LINE, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", ", StringConstant.NEW_LINE, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", ", StringConstant.NEW_LINE, "            final.spam_category as \"spam_category\", final.no_of_words as \"no_of_words\", final.confidence_score as \"confidence_score\" FROM ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "           (SELECT * FROM parsed_data_object_table as pdo INNER JOIN sms_backup_table as sbt ON pdo.messageID = sbt.messageID", StringConstant.NEW_LINE, "            WHERE pdo.address = ", "?");
        m8688M.append(" AND msg_date > ");
        m8688M.append("?");
        m8688M.append(" AND d = 'Bill' AND val3 != \"\" AND CAST(val3 AS INTEGER) IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("            ORDER BY msg_date DESC) as final");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        ");
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), size + 2);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        int i = 3;
        for (Integer num : list) {
            if (num == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, num.intValue());
            }
            i++;
        }
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9811c0(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: O */
    public Object mo27134O(long j, d<? super SmsBackupMessage> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT messageID, address, message,\n                        date, conversationId  \n                FROM  sms_backup_table WHERE\n                messageID = ?", 1);
        m3059j.mo2650l0(1, j);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9816f(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: P */
    public void mo27133P(List<LinkPruneMap> list) {
        this.f29454a.assertNotSuspendingTransaction();
        this.f29454a.beginTransaction();
        try {
            this.f29457d.insert(list);
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: Q */
    public void mo27132Q(List<? extends SmsBackup> list) {
        this.f29454a.assertNotSuspendingTransaction();
        this.f29454a.beginTransaction();
        try {
            this.f29458e.insert(list);
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: R */
    public long mo27131R(ParsedDataObject parsedDataObject) {
        this.f29454a.assertNotSuspendingTransaction();
        this.f29454a.beginTransaction();
        try {
            long insertAndReturnId = this.f29455b.insertAndReturnId(parsedDataObject);
            this.f29454a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: S */
    public void mo27130S(List<? extends ParsedDataObject> list) {
        this.f29454a.assertNotSuspendingTransaction();
        this.f29454a.beginTransaction();
        try {
            this.f29455b.insert(list);
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: T */
    public List<Long> mo27129T(List<? extends ParsedDataObject> list) {
        this.f29454a.assertNotSuspendingTransaction();
        this.f29454a.beginTransaction();
        try {
            List<Long> insertAndReturnIdsList = this.f29455b.insertAndReturnIdsList(list);
            this.f29454a.setTransactionSuccessful();
            return insertAndReturnIdsList;
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: U */
    public void mo27128U(List<? extends ParsedDataObject> list) {
        this.f29454a.beginTransaction();
        try {
            s1.z.c.l.e(list, "pdoList");
            mo27129T(list);
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: V */
    public f<List<ExtendedPdo>> mo27127V(long j, long j2, List<String> list) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "        SELECT sbt.conversationId as \"conversationId\", sbt.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", ", StringConstant.NEW_LINE, "            final.k as \"k\", final.p as \"p\", sbt.classified_by as \"classified_by\", sbt.message as \"message\", sbt.updateCategory as \"updateCategory\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",", StringConstant.NEW_LINE, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", ", StringConstant.NEW_LINE, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", ", StringConstant.NEW_LINE, "            final.spam_category as \"spam_category\", sbt.no_of_words as \"no_of_words\", sbt.confidence_score as \"confidence_score\"", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, ", StringConstant.NEW_LINE, "        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        FROM parsed_data_object_table as p ", StringConstant.NEW_LINE, "        WHERE messageID >= 0 AND active=1 AND d = 'Bank' AND msg_date <= ", "?");
        C22128a.m8666T0(m8688M, StringConstant.SPACE, StringConstant.NEW_LINE, "        AND msg_date >= ", "?");
        m8688M.append(" AND c IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(") ");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, ", StringConstant.NEW_LINE, "        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category ", StringConstant.NEW_LINE, "        FROM (select * from parsed_data_object_table where messageID < 0 AND active=1 and d='Bank' AND msg_date <= ", "?");
        C22128a.m8666T0(m8688M, StringConstant.SPACE, StringConstant.NEW_LINE, "        AND msg_date >= ", "?");
        m8688M.append(" AND c IN (");
        int size2 = list.size();
        C25655d.m3086a(m8688M, size2);
        m8688M.append(")) as pdo ");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt ", StringConstant.NEW_LINE, "        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table sbt on final.messageID = sbt.messageID ORDER BY final.msg_date DESC", StringConstant.NEW_LINE);
        m8688M.append("    ");
        String sb = m8688M.toString();
        int i = size + 4;
        C25686y m3059j = C25686y.m3059j(sb, size2 + i);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        int i2 = 3;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str);
            }
            i2++;
        }
        m3059j.mo2650l0(size + 3, j);
        m3059j.mo2650l0(i, j2);
        int i3 = size + 5;
        for (String str2 : list) {
            if (str2 == null) {
                m3059j.mo2648y0(i3);
            } else {
                m3059j.mo2651f0(i3, str2);
            }
            i3++;
        }
        return C25650g.m3096a(this.f29454a, false, new String[]{"parsed_data_object_table", "sms_backup_table"}, new CallableC9830n(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: W */
    public f<List<ExtendedPdo>> mo27126W(long j, long j2, String str) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" \n        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category\n        FROM parsed_data_object_table as p \n        WHERE messageID >= 0 AND active=1 AND d = 'Bank' AND msg_date <= ? \n        AND msg_date >= ? \n        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, \n        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, \n        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category \n        FROM (select * from parsed_data_object_table \n        where messageID < 0 AND active=1 and d='Bank' AND msg_date <= ? \n        AND msg_date >= ?) as pdo \n        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt \n        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n        JOIN pdo_fts ON (final.messageID = pdo_fts.docid) WHERE pdo_fts MATCH ? ORDER BY final.msg_date DESC\n    ", 5);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        m3059j.mo2650l0(3, j);
        m3059j.mo2650l0(4, j2);
        if (str == null) {
            m3059j.mo2648y0(5);
        } else {
            m3059j.mo2651f0(5, str);
        }
        return C25650g.m3096a(this.f29454a, false, new String[]{"parsed_data_object_table", "sms_backup_table", "pdo_fts"}, new CallableC9833q(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: X */
    public f<List<ExtendedPdo>> mo27125X(long j, long j2, List<String> list) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", ", StringConstant.NEW_LINE, "            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",", StringConstant.NEW_LINE, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", ", StringConstant.NEW_LINE, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", ", StringConstant.NEW_LINE, "            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\"", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, ", StringConstant.NEW_LINE, "        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        FROM parsed_data_object_table as p ", StringConstant.NEW_LINE, "        WHERE messageID >= 0 AND active=1 AND d = 'Bank' AND msg_date < ", "?");
        C22128a.m8666T0(m8688M, StringConstant.SPACE, StringConstant.NEW_LINE, "        AND msg_date >= ", "?");
        m8688M.append(" AND c IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(") ");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, ", StringConstant.NEW_LINE, "        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category ", StringConstant.NEW_LINE, "        FROM (select * from parsed_data_object_table ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        where messageID < 0 AND active=1 and d='Bank' AND msg_date < ", "?", StringConstant.SPACE, StringConstant.NEW_LINE);
        m8688M.append("        AND msg_date >= ");
        m8688M.append("?");
        m8688M.append(" AND c IN (");
        int size2 = list.size();
        C25655d.m3086a(m8688M, size2);
        m8688M.append(")) as pdo ");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt ");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.msg_date DESC");
        String m8618h = C22128a.m8618h(m8688M, StringConstant.NEW_LINE, "    ");
        int i = size + 4;
        C25686y m3059j = C25686y.m3059j(m8618h, size2 + i);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        int i2 = 3;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str);
            }
            i2++;
        }
        m3059j.mo2650l0(size + 3, j);
        m3059j.mo2650l0(i, j2);
        int i3 = size + 5;
        for (String str2 : list) {
            if (str2 == null) {
                m3059j.mo2648y0(i3);
            } else {
                m3059j.mo2651f0(i3, str2);
            }
            i3++;
        }
        return C25650g.m3096a(this.f29454a, false, new String[]{"parsed_data_object_table", "sms_backup_table"}, new CallableC9831o(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: Y */
    public f<List<ExtendedPdo>> mo27124Y(long j, long j2, List<String> list) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", ", StringConstant.NEW_LINE, "            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",", StringConstant.NEW_LINE, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", ", StringConstant.NEW_LINE, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", ", StringConstant.NEW_LINE, "            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, ", StringConstant.NEW_LINE, "        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        FROM parsed_data_object_table as p ", StringConstant.NEW_LINE, "        WHERE messageID >= 0 AND active=1 AND d = 'Bank' AND msg_date > ", "?");
        C22128a.m8666T0(m8688M, StringConstant.SPACE, StringConstant.NEW_LINE, "        AND msg_date <= ", "?");
        m8688M.append(" AND c IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(") ");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, ", StringConstant.NEW_LINE, "        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category ", StringConstant.NEW_LINE, "        FROM (select * from parsed_data_object_table ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "        where messageID < 0 AND active=1 and d='Bank' AND msg_date > ", "?", StringConstant.SPACE, StringConstant.NEW_LINE);
        m8688M.append("        AND msg_date <= ");
        m8688M.append("?");
        m8688M.append(" AND c IN (");
        int size2 = list.size();
        C25655d.m3086a(m8688M, size2);
        m8688M.append(")) as pdo ");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt ");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.msg_date DESC");
        String m8618h = C22128a.m8618h(m8688M, StringConstant.NEW_LINE, "    ");
        int i = size + 4;
        C25686y m3059j = C25686y.m3059j(m8618h, size2 + i);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        int i2 = 3;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str);
            }
            i2++;
        }
        m3059j.mo2650l0(size + 3, j);
        m3059j.mo2650l0(i, j2);
        int i3 = size + 5;
        for (String str2 : list) {
            if (str2 == null) {
                m3059j.mo2648y0(i3);
            } else {
                m3059j.mo2651f0(i3, str2);
            }
            i3++;
        }
        return C25650g.m3096a(this.f29454a, false, new String[]{"parsed_data_object_table", "sms_backup_table"}, new CallableC9832p(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: Z */
    public f<List<ExtendedPdo>> mo27123Z(long j, long j2, String str) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" \n        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category \n        FROM parsed_data_object_table as p \n        WHERE messageID >= 0 AND active=1 AND d = 'Bank' AND msg_date < ? \n        AND msg_date >= ? \n        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, \n        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, \n        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category \n        FROM (select * from parsed_data_object_table \n        where messageID < 0 AND active=1 and d='Bank' AND msg_date < ? \n        AND msg_date >= ?) as pdo \n        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table \n        where synthetic_record_id IS NOT NULL group by 1) as pt \n        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n        JOIN pdo_fts ON (final.messageID = pdo_fts.docid) WHERE pdo_fts MATCH ? ORDER BY final.msg_date DESC\n    ", 5);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        m3059j.mo2650l0(3, j);
        m3059j.mo2650l0(4, j2);
        if (str == null) {
            m3059j.mo2648y0(5);
        } else {
            m3059j.mo2651f0(5, str);
        }
        return C25650g.m3096a(this.f29454a, false, new String[]{"parsed_data_object_table", "sms_backup_table", "pdo_fts"}, new CallableC9834r(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: a */
    public void mo27122a(Set<Long> set, String str) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE parsed_data_object_table SET active = 0, state = ");
        sb.append("?");
        sb.append(" WHERE messageID in (");
        C25655d.m3086a(sb, set.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        if (str == null) {
            compileStatement.mo2648y0(1);
        } else {
            compileStatement.mo2651f0(1, str);
        }
        int i = 2;
        for (Long l : set) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: a0 */
    public f<List<ExtendedPdo>> mo27121a0(long j, long j2, String str) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\"\n        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category\n        FROM parsed_data_object_table as p \n        WHERE messageID >= 0 AND active=1 AND d = 'Bank' AND msg_date > ? \n        AND msg_date <= ? \n        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, \n        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, \n        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category\n        FROM (select * from parsed_data_object_table \n        where messageID < 0 AND active=1 and d='Bank' AND msg_date > ? \n        AND msg_date <= ?) as pdo \n        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt \n        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n        JOIN  pdo_fts ON (final.messageID = pdo_fts.docid) WHERE pdo_fts MATCH ? ORDER BY final.msg_date DESC\n    ", 5);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        m3059j.mo2650l0(3, j);
        m3059j.mo2650l0(4, j2);
        if (str == null) {
            m3059j.mo2648y0(5);
        } else {
            m3059j.mo2651f0(5, str);
        }
        return C25650g.m3096a(this.f29454a, false, new String[]{"parsed_data_object_table", "sms_backup_table", "pdo_fts"}, new CallableC9835s(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: b */
    public void mo27120b(List<Long> list) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM link_prune_table WHERE parent_id IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") OR child_id IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        int i2 = size + 1;
        for (Long l2 : list) {
            if (l2 == null) {
                compileStatement.mo2648y0(i2);
            } else {
                compileStatement.mo2650l0(i2, l2.longValue());
            }
            i2++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: b0 */
    public Object mo27119b0(AbstractC9945s abstractC9945s, AbstractC9921m0 abstractC9921m0, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f29454a, new C9806a(abstractC9945s, abstractC9921m0), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: c */
    public void mo27118c(List<Long> list) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("        DELETE FROM account_mapping_rule_model WHERE to_account");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") OR from_account IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        sb.append(StringConstant.NEW_LINE);
        sb.append("    ");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        int i2 = size + 1;
        for (Long l2 : list) {
            if (l2 == null) {
                compileStatement.mo2648y0(i2);
            } else {
                compileStatement.mo2650l0(i2, l2.longValue());
            }
            i2++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: d */
    public Object mo27117d(List<Long> list, AbstractC9793c abstractC9793c, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f29454a, new C9827k0(list, abstractC9793c), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: d0 */
    public Object mo27116d0(d<? super s> dVar) {
        return C25650g.m3094c(this.f29454a, true, new CallableC9812d(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: e0 */
    public Object mo27115e0(d<? super s> dVar) {
        return C25650g.m3094c(this.f29454a, true, new CallableC9814e(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: f */
    public void mo27114f(List<Long> list) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM parsed_data_object_table WHERE messageID IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: f0 */
    public void mo27113f0(List<Long> list) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM account_model_table WHERE id IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: g */
    public void mo27112g(List<Long> list) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("        DELETE FROM account_relation_model WHERE to_account");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") OR from_account IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        sb.append(StringConstant.NEW_LINE);
        sb.append("    ");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        int i2 = size + 1;
        for (Long l2 : list) {
            if (l2 == null) {
                compileStatement.mo2648y0(i2);
            } else {
                compileStatement.mo2650l0(i2, l2.longValue());
            }
            i2++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: g0 */
    public void mo27111g0() {
        this.f29454a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29463j.acquire();
        this.f29454a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
            this.f29463j.release(acquire);
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: h */
    public void mo27110h(List<Long> list) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM sms_backup_table WHERE messageID IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: h0 */
    public Object mo27109h0(List<Long> list, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f29454a, new C9810c(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: i */
    public void mo27108i(List<Long> list) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("        DELETE FROM parsed_data_object_table ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("            WHERE messageID IN (");
        C22128a.m8666T0(sb, StringConstant.NEW_LINE, "                SELECT synthetic_record_id FROM parsed_data_object_table", StringConstant.NEW_LINE, "                    WHERE ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("                        messageID IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(C22128a.m8606k(sb, StringConstant.NEW_LINE, "            )", StringConstant.NEW_LINE, "    "));
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: i0 */
    public void mo27107i0() {
        this.f29454a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29462i.acquire();
        this.f29454a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
            this.f29462i.release(acquire);
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: j */
    public Object mo27106j(List<Long> list, d<? super List<Long>> dVar) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "        SELECT id from account_model_table", StringConstant.NEW_LINE, "        WHERE id in (SELECT account_model_id FROM parsed_data_object_table", StringConstant.NEW_LINE);
        m8688M.append("        WHERE messageID in(");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append("))");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("    ");
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), size + 0);
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9820h(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: j0 */
    public Object mo27105j0(d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f29454a, new C9808b(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: k */
    public List<AbstractC9800d0.C9801a> mo27104k(List<Long> list, List<Long> list2) {
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("        SELECT COUNT(*) as count, account_model_id FROM parsed_data_object_table ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        WHERE messageID NOT IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        AND account_model_id in (");
        int size2 = list2.size();
        C25655d.m3086a(sb, size2);
        sb.append(") GROUP BY account_model_id");
        sb.append(StringConstant.NEW_LINE);
        sb.append("    ");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0 + size2);
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        int i2 = size + 1;
        for (Long l2 : list2) {
            if (l2 == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2650l0(i2, l2.longValue());
            }
            i2++;
        }
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "count");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new AbstractC9800d0.C9801a(m3090b.getInt(m43237g0), m3090b.getLong(m43237g02)));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: k0 */
    public void mo27103k0(String str) {
        this.f29454a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29461h.acquire();
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f29454a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
            this.f29461h.release(acquire);
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: l */
    public List<ParsedDataObject> mo27102l(Date date, int i, List<String> list, List<String> list2) {
        Throwable th;
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM parsed_data_object_table WHERE messageID >= 0 and created_at > ");
        sb.append("?");
        sb.append(" and d NOT IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") and state NOT IN (");
        int size2 = list2.size();
        C25655d.m3086a(sb, size2);
        sb.append(") ORDER BY created_at LIMIT ");
        sb.append("?");
        String sb2 = sb.toString();
        int i2 = 2;
        int i3 = size + 2;
        int i4 = size2 + i3;
        C25686y m3059j = C25686y.m3059j(sb2, i4);
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str);
            }
            i2++;
        }
        int i5 = i3;
        for (String str2 : list2) {
            if (str2 == null) {
                m3059j.mo2648y0(i5);
            } else {
                m3059j.mo2651f0(i5, str2);
            }
            i5++;
        }
        m3059j.mo2650l0(i4, i);
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        parsedDataObject.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                        parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                        parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                        parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                        parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                        parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                        parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                        parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                        parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                        parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                        parsedDataObject.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                        parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                        arrayList.add(parsedDataObject);
                    }
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    m3090b.close();
                    m3059j.m3057l();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: l0 */
    public void mo27101l0(List<Long> list) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("            UPDATE parsed_data_object_table SET ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("            account_model_id = NULL ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("            WHERE account_model_id IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(C22128a.m8618h(sb, StringConstant.NEW_LINE, "        "));
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: m */
    public List<ParsedDataObject> mo27100m() {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("\n            SELECT * FROM parsed_data_object_table\n            WHERE d = \"Bank\" AND\n            val1 = \"\"\n        ", 0);
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        parsedDataObject.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                        parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                        parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                        parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                        parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                        parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                        parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                        parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                        parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                        parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                        parsedDataObject.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                        parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                        arrayList.add(parsedDataObject);
                    }
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    m3090b.close();
                    m3059j.m3057l();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: m0 */
    public void mo27099m0(List<Long> list, int i) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("        UPDATE sms_backup_table SET spam_category = ");
        sb.append("?");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        WHERE messageID IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        ");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        compileStatement.mo2650l0(1, i);
        int i2 = 2;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i2);
            } else {
                compileStatement.mo2650l0(i2, l.longValue());
            }
            i2++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: n */
    public List<ParsedDataObject> mo27098n(String str) {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("\n            SELECT * FROM parsed_data_object_table\n            WHERE d = \"Bank\" AND\n            UPPER(address) = ?\n        ", 1);
        m3059j.mo2651f0(1, str);
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        try {
                            parsedDataObject.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                            parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                            parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                            parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                            parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                            parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                            parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                            parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                            parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                            parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                            parsedDataObject.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                            parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                            arrayList.add(parsedDataObject);
                        } catch (Throwable th2) {
                            th = th2;
                            m3090b.close();
                            m3059j.m3057l();
                            throw th;
                        }
                    }
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: n0 */
    public void mo27097n0(List<Long> list, List<Long> list2, int i) {
        this.f29454a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("        UPDATE parsed_data_object_table SET spam_category = ");
        sb.append("?");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        WHERE messageID IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        OR messageID IN (");
        C25655d.m3086a(sb, list2.size());
        sb.append(")");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        ");
        AbstractC26154f compileStatement = this.f29454a.compileStatement(sb.toString());
        compileStatement.mo2650l0(1, i);
        int i2 = 2;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i2);
            } else {
                compileStatement.mo2650l0(i2, l.longValue());
            }
            i2++;
        }
        int i3 = size + 2;
        for (Long l2 : list2) {
            if (l2 == null) {
                compileStatement.mo2648y0(i3);
            } else {
                compileStatement.mo2650l0(i3, l2.longValue());
            }
            i3++;
        }
        this.f29454a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29454a.setTransactionSuccessful();
        } finally {
            this.f29454a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: o */
    public List<ParsedDataObject> mo27096o() {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT * FROM parsed_data_object_table", 0);
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        parsedDataObject.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                        parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                        parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                        parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                        parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                        parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                        parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                        parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                        parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                        parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                        parsedDataObject.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                        parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                        arrayList.add(parsedDataObject);
                    }
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    m3090b.close();
                    m3059j.m3057l();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: p */
    public List<ParsedDataObject> mo27095p(Date date, List<String> list, int i, List<String> list2) {
        Throwable th;
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM parsed_data_object_table WHERE created_at > ");
        sb.append("?");
        sb.append(" and state NOT IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") and d NOT IN (");
        int size2 = list2.size();
        C25655d.m3086a(sb, size2);
        sb.append(") ORDER BY created_at LIMIT ");
        sb.append("?");
        String sb2 = sb.toString();
        int i2 = 2;
        int i3 = size + 2;
        int i4 = size2 + i3;
        C25686y m3059j = C25686y.m3059j(sb2, i4);
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str);
            }
            i2++;
        }
        int i5 = i3;
        for (String str2 : list2) {
            if (str2 == null) {
                m3059j.mo2648y0(i5);
            } else {
                m3059j.mo2651f0(i5, str2);
            }
            i5++;
        }
        m3059j.mo2650l0(i4, i);
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "d");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "k");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "p");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, AbstractC2405c.f7629a);
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "o");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "f");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "g");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "s");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "account_model_id");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "val1");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "val2");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "val3");
            try {
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "val4");
                try {
                    int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "val5");
                    int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "datetime");
                    int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "address");
                    int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "date");
                    int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                    int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "dff_val1");
                    int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "dff_val2");
                    int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "dff_val3");
                    int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "dff_val4");
                    int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "dff_val5");
                    int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "active");
                    int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "state");
                    int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "synthetic_record_id");
                    int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                    int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                    int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                    ArrayList arrayList = new ArrayList(m3090b.getCount());
                    while (m3090b.moveToNext()) {
                        ParsedDataObject parsedDataObject = new ParsedDataObject();
                        parsedDataObject.setMessageID(m3090b.getLong(m43237g0));
                        parsedDataObject.setD(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                        parsedDataObject.setK(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                        parsedDataObject.setP(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                        parsedDataObject.setC(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05));
                        parsedDataObject.setO(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                        parsedDataObject.setF(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                        parsedDataObject.setG(m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                        parsedDataObject.setS(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                        parsedDataObject.setAccountModelId(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010)));
                        parsedDataObject.setVal1(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                        parsedDataObject.setVal2(m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012));
                        parsedDataObject.setVal3(m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                        parsedDataObject.setVal4(m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014));
                        parsedDataObject.setVal5(m3090b.isNull(m43237g015) ? null : m3090b.getString(m43237g015));
                        parsedDataObject.setDatetime(m3090b.isNull(m43237g016) ? null : m3090b.getString(m43237g016));
                        parsedDataObject.setAddress(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017));
                        parsedDataObject.setDate(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018));
                        parsedDataObject.setMsgDate(this.f29456c.m26907c(m3090b.isNull(m43237g019) ? null : Long.valueOf(m3090b.getLong(m43237g019))));
                        parsedDataObject.setDffVal1(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020));
                        parsedDataObject.setDffVal2(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021));
                        parsedDataObject.setDffVal3(m3090b.isNull(m43237g022) ? null : m3090b.getString(m43237g022));
                        parsedDataObject.setDffVal4(m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023));
                        parsedDataObject.setDffVal5(m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024));
                        parsedDataObject.setActive(m3090b.getInt(m43237g025) != 0);
                        parsedDataObject.setState(m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026));
                        parsedDataObject.setSyntheticRecordId(m3090b.isNull(m43237g027) ? null : Long.valueOf(m3090b.getLong(m43237g027)));
                        parsedDataObject.setDeleted(m3090b.getInt(m43237g028) != 0);
                        parsedDataObject.setCreatedAt(this.f29456c.m26907c(m3090b.isNull(m43237g029) ? null : Long.valueOf(m3090b.getLong(m43237g029))));
                        parsedDataObject.setSpamCategory(m3090b.getInt(m43237g030));
                        arrayList.add(parsedDataObject);
                    }
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    m3090b.close();
                    m3059j.m3057l();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: q */
    public List<Long> mo27094q(List<Long> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT synthetic_record_id FROM parsed_data_object_table WHERE messageID IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: r */
    public List<Long> mo27093r(List<Long> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT synthetic_record_id FROM parsed_data_object_table WHERE messageID IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: s */
    public Object mo27092s(String str, d<? super List<? extends ParsedDataObject>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT * \n        FROM parsed_data_object_table \n        WHERE\n        d = 'Bank' AND\n        datetime(msg_date/1000,'unixepoch','localtime') > datetime(?) AND\n        active = 1\n    ", 1);
        m3059j.mo2651f0(1, str);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9839w(m3059j), dVar);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: t */
    public int mo27091t(Date date, List<String> list, List<String> list2) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT count(*) FROM parsed_data_object_table WHERE messageID >= -1 and created_at > ");
        sb.append("?");
        sb.append(" and d NOT IN (");
        int size = list2.size();
        C25655d.m3086a(sb, size);
        sb.append(") and state NOT IN (");
        int size2 = list.size();
        C25655d.m3086a(sb, size2);
        sb.append(") ORDER BY created_at");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 1 + size2);
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        int i = 2;
        for (String str : list2) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        int i2 = size + 2;
        for (String str2 : list) {
            if (str2 == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str2);
            }
            i2++;
        }
        this.f29454a.assertNotSuspendingTransaction();
        int i3 = 0;
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            if (m3090b.moveToFirst()) {
                i3 = m3090b.getInt(0);
            }
            m3090b.close();
            m3059j.m3057l();
            return i3;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: u */
    public int mo27090u(Date date, List<String> list, List<String> list2) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT count(*) FROM parsed_data_object_table WHERE created_at > ");
        sb.append("?");
        sb.append(" and state NOT IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") and d NOT IN (");
        int size2 = list2.size();
        C25655d.m3086a(sb, size2);
        sb.append(") ORDER BY created_at");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 1 + size2);
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        int i = 2;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        int i2 = size + 2;
        for (String str2 : list2) {
            if (str2 == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str2);
            }
            i2++;
        }
        this.f29454a.assertNotSuspendingTransaction();
        int i3 = 0;
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            if (m3090b.moveToFirst()) {
                i3 = m3090b.getInt(0);
            }
            m3090b.close();
            m3059j.m3057l();
            return i3;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: v */
    public Object mo27089v(d<? super Date> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT msg_date \n        FROM parsed_data_object_table \n        WHERE d = 'Bank' AND \n        active = 1 \n        ORDER BY msg_date DESC LIMIT 1\n    ", 0);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9838v(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: w */
    public Object mo27088w(List<String> list, d<? super Date> dVar) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            SELECT msg_date FROM parsed_data_object_table", StringConstant.NEW_LINE, "            WHERE ", StringConstant.NEW_LINE);
        m8688M.append("                d in (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(") AND");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                state = 'ORIGINAL'", StringConstant.NEW_LINE, "            ORDER BY msg_date DESC LIMIT 1", StringConstant.NEW_LINE);
        m8688M.append("        ");
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9815e0(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: x */
    public List<LinkPruneMap> mo27087x(long j, long j2, String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM link_prune_table WHERE parent_id=? and child_id=? and link_type=?", 3);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        m3059j.mo2651f0(3, str);
        this.f29454a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29454a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "parent_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "child_id");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "link_type");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new LinkPruneMap(m3090b.getLong(m43237g0), m3090b.getLong(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), this.f29456c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04)))));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: y */
    public Object mo27086y(d<? super Date> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT msg_date \n        FROM parsed_data_object_table \n        WHERE d = 'Bank' AND \n        active = 1 \n        ORDER BY msg_date LIMIT 1\n    ", 0);
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9837u(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9800d0
    /* renamed from: z */
    public Object mo27085z(Date date, d<? super List<String>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT val1 FROM parsed_data_object_table\n        WHERE d = \"OTP\"\n        AND msg_date > ?\n        AND messageID >= -1\n    ", 1);
        Long m26909a = this.f29456c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        return C25650g.m3095b(this.f29454a, false, new CancellationSignal(), new CallableC9807a0(m3059j), dVar);
    }
}
