package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.pdo.SmsBackup;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import n3.z.w;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p1727n3.p1909z.AbstractC27583k2;
import p1727n3.p1909z.AbstractC27603v;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p531c0.C10020g;
import p193e.p194a.p437c.p576n.C10477f;
import p193e.p194a.p437c.p580r.p587h.C10541a;
import q3.a.g0;
import q3.a.t0;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.c.c.d.k0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0.class */
public final class C9895k0 implements AbstractC9893j0 {

    /* renamed from: a */
    public final AbstractC25677q f29611a;

    /* renamed from: b */
    public final AbstractC25646c0 f29612b;

    /* renamed from: c */
    public final C10020g f29613c = new C10020g();

    /* renamed from: e.a.c.c.d.k0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$a.class */
    public class CallableC9896a implements Callable<List<SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29614a;

        public CallableC9896a(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29614a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29614a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g05)));
                    smsBackup.setMessage(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g07)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g08) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g010));
                    smsBackup.setDeleted(m3090b.getInt(m43237g011) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g012) ? null : Long.valueOf(m3090b.getLong(m43237g012))));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29614a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.k0$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$b.class */
    public class CallableC9897b implements Callable<List<SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29616a;

        public CallableC9897b(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29616a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29616a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g05)));
                    smsBackup.setMessage(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g07)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g08) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g010));
                    smsBackup.setDeleted(m3090b.getInt(m43237g011) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g012) ? null : Long.valueOf(m3090b.getLong(m43237g012))));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29616a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.k0$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$c.class */
    public class CallableC9898c implements Callable<List<SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29618a;

        public CallableC9898c(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29618a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29618a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g05)));
                    smsBackup.setMessage(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g07)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g08) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g010));
                    smsBackup.setDeleted(m3090b.getInt(m43237g011) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g012) ? null : Long.valueOf(m3090b.getLong(m43237g012))));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29618a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.k0$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$d.class */
    public class CallableC9899d implements Callable<SmsBackup> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29620a;

        public CallableC9899d(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29620a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public SmsBackup call() throws Exception {
            SmsBackup smsBackup;
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29620a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                if (m3090b.moveToFirst()) {
                    SmsBackup smsBackup2 = new SmsBackup();
                    smsBackup2.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup2.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup2.setMessage(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    smsBackup2.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                    smsBackup2.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g05)));
                    smsBackup2.setParseFailed(m3090b.getInt(m43237g06) != 0);
                    smsBackup2.setErrorMessage(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    smsBackup2.setRetryCount(m3090b.getInt(m43237g08));
                    smsBackup2.setDeleted(m3090b.getInt(m43237g09) != 0);
                    smsBackup2.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))));
                    smsBackup2.setUpdateCategory(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    smsBackup2.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g012)));
                    smsBackup2.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup2.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup2.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup2.setNoOfWords(m3090b.getInt(m43237g016));
                    smsBackup = smsBackup2;
                } else {
                    smsBackup = null;
                }
                m3090b.close();
                this.f29620a.m3057l();
                return smsBackup;
            } catch (Throwable th) {
                m3090b.close();
                this.f29620a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$e.class */
    public class CallableC9900e implements Callable<SmsBackup> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29622a;

        public CallableC9900e(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29622a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public SmsBackup call() throws Exception {
            SmsBackup smsBackup;
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29622a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                if (m3090b.moveToFirst()) {
                    SmsBackup smsBackup2 = new SmsBackup();
                    smsBackup2.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup2.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup2.setMessage(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    smsBackup2.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                    smsBackup2.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g05)));
                    smsBackup2.setParseFailed(m3090b.getInt(m43237g06) != 0);
                    smsBackup2.setErrorMessage(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    smsBackup2.setRetryCount(m3090b.getInt(m43237g08));
                    smsBackup2.setDeleted(m3090b.getInt(m43237g09) != 0);
                    smsBackup2.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))));
                    smsBackup2.setUpdateCategory(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    smsBackup2.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g012)));
                    smsBackup2.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup2.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup2.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup2.setNoOfWords(m3090b.getInt(m43237g016));
                    smsBackup = smsBackup2;
                } else {
                    smsBackup = null;
                }
                m3090b.close();
                this.f29622a.m3057l();
                return smsBackup;
            } catch (Throwable th) {
                m3090b.close();
                this.f29622a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$f.class */
    public class CallableC9901f implements Callable<List<String>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29624a;

        public CallableC9901f(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29624a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<String> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29624a, false, null);
            try {
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(m3090b.isNull(0) ? null : m3090b.getString(0));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29624a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$g.class */
    public class CallableC9902g implements Callable<List<? extends SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29626a;

        public CallableC9902g(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29626a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<? extends SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29626a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setMessage(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g05)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g06) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g08));
                    smsBackup.setDeleted(m3090b.getInt(m43237g09) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g012)));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29626a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$h.class */
    public class CallableC9903h implements Callable<List<? extends SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29628a;

        public CallableC9903h(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29628a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<? extends SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29628a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setMessage(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g05)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g06) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g08));
                    smsBackup.setDeleted(m3090b.getInt(m43237g09) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g012)));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29628a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$i.class */
    public class C9904i extends AbstractC27603v.AbstractC27605b<Integer, C10541a> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29630a;

        public C9904i(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29630a = c25686y;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [n3.z.v<java.lang.Integer, e.a.c.r.h.a>, e.a.c.c.d.l0] */
        @Override // p1727n3.p1909z.AbstractC27603v.AbstractC27605b
        /* renamed from: a */
        public AbstractC27603v<Integer, C10541a> mo20a() {
            return new C9919l0(this, C9895k0.this.f29611a, this.f29630a, false, false, "sms_backup_table", "parsed_data_object_table", "action_state");
        }
    }

    /* renamed from: e.a.c.c.d.k0$j */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$j.class */
    public class C9905j extends AbstractC25646c0 {
        public C9905j(C9895k0 c9895k0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n            UPDATE sms_backup_table SET updateCategory = ?,\n            classified_by = ?\n            WHERE messageID = ?\n        ";
        }
    }

    /* renamed from: e.a.c.c.d.k0$k */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$k.class */
    public class CallableC9906k implements Callable<List<? extends SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29632a;

        public CallableC9906k(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29632a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<? extends SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29632a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setMessage(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g05)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g06) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g08));
                    smsBackup.setDeleted(m3090b.getInt(m43237g09) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g012)));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29632a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$l */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$l.class */
    public class CallableC9907l implements Callable<Date> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29634a;

        public CallableC9907l(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29634a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Date call() throws Exception {
            Date date = null;
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29634a, false, null);
            try {
                if (m3090b.moveToFirst()) {
                    date = C9895k0.this.f29613c.m26907c(m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0)));
                }
                m3090b.close();
                this.f29634a.m3057l();
                return date;
            } catch (Throwable th) {
                m3090b.close();
                this.f29634a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$m */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$m.class */
    public class C9908m extends AbstractC25646c0 {
        public C9908m(C9895k0 c9895k0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n            UPDATE sms_backup_table SET updateCategory = ?\n            WHERE messageID = ?\n        ";
        }
    }

    /* renamed from: e.a.c.c.d.k0$n */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$n.class */
    public class CallableC9909n implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ String f29636a;

        /* renamed from: b */
        public final /* synthetic */ ClassifierType f29637b;

        /* renamed from: c */
        public final /* synthetic */ long f29638c;

        public CallableC9909n(String str, ClassifierType classifierType, long j) {
            C9895k0.this = r5;
            this.f29636a = str;
            this.f29637b = classifierType;
            this.f29638c = j;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9895k0.this.f29612b.acquire();
            String str = this.f29636a;
            if (str == null) {
                acquire.mo2648y0(1);
            } else {
                acquire.mo2651f0(1, str);
            }
            C10020g c10020g = C9895k0.this.f29613c;
            ClassifierType classifierType = this.f29637b;
            Objects.requireNonNull(c10020g);
            l.e(classifierType, "classifierType");
            acquire.mo2650l0(2, classifierType.getValue());
            acquire.mo2650l0(3, this.f29638c);
            C9895k0.this.f29611a.beginTransaction();
            try {
                acquire.m2673A();
                C9895k0.this.f29611a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9895k0.this.f29611a.endTransaction();
                C9895k0.this.f29612b.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$o */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$o.class */
    public class CallableC9910o implements Callable<List<? extends SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29640a;

        public CallableC9910o(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29640a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<? extends SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29640a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setMessage(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g05)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g06) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g08));
                    smsBackup.setDeleted(m3090b.getInt(m43237g09) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g012)));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29640a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$p */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$p.class */
    public class CallableC9911p implements Callable<List<C10477f>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29642a;

        public CallableC9911p(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29642a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C10477f> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29642a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C10477f(m3090b.getLong(m43237g0), m3090b.getFloat(m43237g02)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29642a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$q */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$q.class */
    public class CallableC9912q implements Callable<SmsBackup> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29644a;

        public CallableC9912q(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29644a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public SmsBackup call() throws Exception {
            SmsBackup smsBackup;
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29644a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                if (m3090b.moveToFirst()) {
                    SmsBackup smsBackup2 = new SmsBackup();
                    smsBackup2.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup2.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup2.setMessage(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    smsBackup2.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                    smsBackup2.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g05)));
                    smsBackup2.setParseFailed(m3090b.getInt(m43237g06) != 0);
                    smsBackup2.setErrorMessage(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    smsBackup2.setRetryCount(m3090b.getInt(m43237g08));
                    smsBackup2.setDeleted(m3090b.getInt(m43237g09) != 0);
                    smsBackup2.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))));
                    smsBackup2.setUpdateCategory(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    smsBackup2.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g012)));
                    smsBackup2.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup2.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup2.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup2.setNoOfWords(m3090b.getInt(m43237g016));
                    smsBackup = smsBackup2;
                } else {
                    smsBackup = null;
                }
                m3090b.close();
                this.f29644a.m3057l();
                return smsBackup;
            } catch (Throwable th) {
                m3090b.close();
                this.f29644a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$r */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$r.class */
    public class CallableC9913r implements Callable<List<? extends SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29646a;

        public CallableC9913r(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29646a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<? extends SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29646a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setMessage(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g05)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g06) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g08));
                    smsBackup.setDeleted(m3090b.getInt(m43237g09) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g012)));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29646a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.k0$s */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/k0$s.class */
    public class CallableC9914s implements Callable<List<SmsBackup>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29648a;

        public CallableC9914s(C25686y c25686y) {
            C9895k0.this = r4;
            this.f29648a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SmsBackup> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9895k0.this.f29611a, this.f29648a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "messageID");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "date");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "classified_by");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "transport");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "parseFailed");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "errorMessage");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "retryCount");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "deleted");
                int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "conversationId");
                int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "spam_category");
                int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "confidence_score");
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "no_of_words");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    SmsBackup smsBackup = new SmsBackup();
                    smsBackup.setMessageID(m3090b.getLong(m43237g0));
                    smsBackup.setAddress(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02));
                    smsBackup.setDate(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))));
                    smsBackup.setUpdateCategory(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04));
                    smsBackup.setClassifiedBy(C9895k0.this.f29613c.m26906d(m3090b.getInt(m43237g05)));
                    smsBackup.setMessage(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06));
                    smsBackup.setTransport(C9895k0.this.f29613c.m26905e(m3090b.getInt(m43237g07)));
                    smsBackup.setParseFailed(m3090b.getInt(m43237g08) != 0);
                    smsBackup.setErrorMessage(m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09));
                    smsBackup.setRetryCount(m3090b.getInt(m43237g010));
                    smsBackup.setDeleted(m3090b.getInt(m43237g011) != 0);
                    smsBackup.setCreatedAt(C9895k0.this.f29613c.m26907c(m3090b.isNull(m43237g012) ? null : Long.valueOf(m3090b.getLong(m43237g012))));
                    smsBackup.setConversationId(m3090b.getLong(m43237g013));
                    smsBackup.setSpamCategory(m3090b.getInt(m43237g014));
                    smsBackup.setConfidenceScore(m3090b.getFloat(m43237g015));
                    smsBackup.setNoOfWords(m3090b.getInt(m43237g016));
                    arrayList.add(smsBackup);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29648a.m3057l();
        }
    }

    public C9895k0(AbstractC25677q abstractC25677q) {
        this.f29611a = abstractC25677q;
        this.f29612b = new C9905j(this, abstractC25677q);
        new C9908m(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: a */
    public Object mo27048a(d<? super List<String>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT DISTINCT(updateCategory) FROM sms_backup_table\n        ", 0);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9901f(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: b */
    public Object mo27047b(String str, int i, long j, d<? super List<? extends SmsBackup>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * FROM sms_backup_table \n            WHERE updateCategory = ? \n            AND spam_category != 3\n            AND date >= ?\n            ORDER BY date DESC LIMIT ?\n        ", 3);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        m3059j.mo2650l0(3, i);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9902g(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: c */
    public Object mo27046c(long j, int i, d<? super List<? extends SmsBackup>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * from sms_backup_table \n            WHERE conversationId = ?\n            ORDER BY date DESC LIMIT ?\n            ", 2);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, i);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9910o(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: d */
    public Object mo27045d(long j, long j2, long j3, d<? super List<? extends SmsBackup>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * from sms_backup_table \n            WHERE conversationId = ?\n            AND date > ? AND date < ?\n            ORDER BY date DESC\n        ", 3);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        m3059j.mo2650l0(3, j3);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9913r(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: e */
    public Object mo27044e(d<? super SmsBackup> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * FROM sms_backup_table \n            WHERE updateCategory NOT NULL \n            AND spam_category != 3\n            ORDER BY date LIMIT 1\n        ", 0);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9899d(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: f */
    public Object mo27043f(long j, int i, d<? super List<C10477f>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT messageID, confidence_score from sms_backup_table\n            WHERE conversationId = ?\n            ORDER BY date DESC LIMIT ?\n            ", 2);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, i);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9911p(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: g */
    public Object mo27042g(Date date, List<Integer> list, int i, d<? super List<? extends SmsBackup>> dVar) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            SELECT * FROM sms_backup_table", StringConstant.NEW_LINE, "            WHERE ", StringConstant.NEW_LINE);
        m8688M.append("                updateCategory IS NOT NULL AND");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("                classified_by IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(") AND");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("                date > ");
        m8688M.append("?");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            ORDER BY date", StringConstant.NEW_LINE, "            LIMIT ", "?");
        String m8618h = C22128a.m8618h(m8688M, StringConstant.NEW_LINE, "        ");
        int i2 = size + 2;
        C25686y m3059j = C25686y.m3059j(m8618h, i2);
        int i3 = 1;
        for (Integer num : list) {
            if (num == null) {
                m3059j.mo2648y0(i3);
            } else {
                m3059j.mo2650l0(i3, num.intValue());
            }
            i3++;
        }
        int i4 = size + 1;
        Long m26909a = this.f29613c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(i4);
        } else {
            m3059j.mo2650l0(i4, m26909a.longValue());
        }
        m3059j.mo2650l0(i2, i);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9906k(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: h */
    public Object mo27041h(d<? super SmsBackup> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * FROM sms_backup_table WHERE updateCategory NOT NULL \n            AND spam_category != 3\n            ORDER BY date DESC LIMIT 1\n        ", 0);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9900e(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: i */
    public Object mo27040i(List<Integer> list, d<? super Date> dVar) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "        SELECT date FROM sms_backup_table", StringConstant.NEW_LINE, "        WHERE", StringConstant.NEW_LINE);
        m8688M.append("            updateCategory IS NOT NULL AND");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("            classified_by IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        ORDER BY date DESC LIMIT 1");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("    ");
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), size + 0);
        int i = 1;
        for (Integer num : list) {
            if (num == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, num.intValue());
            }
            i++;
        }
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9907l(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: j */
    public f<List<SmsBackup>> mo27039j(long j, long j2, String str) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT sbt.messageID, sbt.address, sbt.date, IFNULL(sbt.updateCategory, ?) as updateCategory, classified_by, message, transport, parseFailed, errorMessage, retryCount, sbt.deleted, sbt.created_at, conversationId, sbt.spam_category, sbt.confidence_score, sbt.no_of_words FROM sms_backup_table sbt\n            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID\n            WHERE ((updateCategory NOT NULL \n            AND sbt.spam_category != 3) OR (pdo.d = 'Delivery' AND pdo.c NOT NULL))\n            AND sbt.date <= ?\n            AND sbt.date >= ?\n            ORDER BY sbt.date DESC\n        ", 3);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        m3059j.mo2650l0(3, j2);
        return C25650g.m3096a(this.f29611a, false, new String[]{"sms_backup_table", "parsed_data_object_table"}, new CallableC9896a(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: k */
    public Object mo27038k(long j, d<? super SmsBackup> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * from sms_backup_table \n            WHERE messageID = ?\n    ", 1);
        m3059j.mo2650l0(1, j);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9912q(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: l */
    public f<List<SmsBackup>> mo27037l(long j, long j2, String str) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT sbt.messageID, sbt.address, sbt.date, IFNULL(sbt.updateCategory, ?) as updateCategory, classified_by, message, transport, parseFailed, errorMessage, retryCount, sbt.deleted, sbt.created_at, conversationId, sbt.spam_category, sbt.confidence_score, sbt.no_of_words FROM sms_backup_table sbt\n            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID\n            WHERE ((updateCategory NOT NULL \n            AND sbt.spam_category != 3) OR (pdo.d = 'Delivery' AND pdo.c NOT NULL))\n            AND sbt.date < ?\n            AND sbt.date >= ?\n            ORDER BY sbt.date DESC\n        ", 3);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        m3059j.mo2650l0(3, j2);
        return C25650g.m3096a(this.f29611a, false, new String[]{"sms_backup_table", "parsed_data_object_table"}, new CallableC9897b(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: m */
    public f<List<SmsBackup>> mo27036m(int i, long j) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT sbt.messageID, sbt.address, sbt.date, IFNULL(sbt.updateCategory, 'Delivery') as updateCategory, classified_by, message, transport, parseFailed, \n            errorMessage, retryCount, sbt.deleted, sbt.created_at, conversationId, sbt.spam_category, sbt.confidence_score, sbt.no_of_words FROM sms_backup_table sbt\n            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID\n            WHERE ((updateCategory NOT NULL \n            AND sbt.spam_category != 3) OR (pdo.d = 'Delivery' AND pdo.c NOT NULL))\n            AND sbt.date >= ?\n            ORDER BY sbt.date DESC LIMIT ?\n        ", 2);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, i);
        return C25650g.m3096a(this.f29611a, false, new String[]{"sms_backup_table", "parsed_data_object_table"}, new CallableC9914s(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: n */
    public Object mo27035n(String str, long j, ClassifierType classifierType, d<? super s> dVar) {
        return C25650g.m3094c(this.f29611a, true, new CallableC9909n(str, classifierType, j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: o */
    public AbstractC27583k2<Integer, C10541a> mo27034o(List<String> list, List<String> list2) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            SELECT * FROM (", StringConstant.NEW_LINE, "                /* Query for past section with descending chronological order */", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                SELECT sbt.messageID AS messageID, sbt.address AS address, sbt.updateCategory AS updateCategory, ", StringConstant.NEW_LINE, "                sbt.spam_category AS spam_category, sbt.classified_by AS classified_by, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                sbt.confidence_score AS confidence_score, sbt.transport AS transport, sbt.conversationId AS conversationId, ", StringConstant.NEW_LINE, "                sbt.message AS message, sbt.no_of_words AS no_of_words, sbt.deleted AS deleted, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                sbt.created_at AS created_at, IFNULL(pdo.d, \"\") AS d, IFNULL(pdo.k,\"\") AS k,", StringConstant.NEW_LINE, "                IFNULL(pdo.p, \"\") AS p, IFNULL(pdo.c, \"\") As c, IFNULL(pdo.o, \"\") as o, IFNULL(pdo.f, \"\") as f, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                IFNULL(pdo.g, \"\") AS g, IFNULL(pdo.s, \"\") AS s, IFNULL(pdo.val1, \"\") AS val1, IFNULL(pdo.val2, \"\") AS val2, ", StringConstant.NEW_LINE, "                IFNULL(pdo.val3, \"\") AS val3, IFNULL(pdo.val4, \"\") AS val4, IFNULL(pdo.val5, \"\") AS val5, IFNULL(pdo.date, \"\") AS date, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                IFNULL(pdo.dff_val1, \"\") AS dff_val1, IFNULL(pdo.dff_val2, \"\") AS dff_val2, IFNULL(pdo.dff_val3, \"\") AS dff_val3, ", StringConstant.NEW_LINE, "                IFNULL(pdo.dff_val4, \"\") AS dff_val4, IFNULL(pdo.dff_val5, \"\") AS dff_val5,", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                /* Select datetime based on the type of smart card", StringConstant.NEW_LINE, "                    1. If Update category use sms_backup_table.date", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    2. If pdo then use datetime if available", StringConstant.NEW_LINE, "                    3. otherwise use sms_backup_table.date", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                 */", StringConstant.NEW_LINE, "                CASE", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    WHEN sbt.updateCategory IS NOT NULL THEN datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE, "                    WHEN d IN ('Bill', 'Travel', 'Delivery')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                        THEN CASE ", StringConstant.NEW_LINE, "                                WHEN d = 'Bill' ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                    AND act_state.as_state IN (2, 4)", StringConstant.NEW_LINE, "                                    THEN act_state.action_datetime", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                WHEN pdo.datetime IS NOT NULL AND pdo.datetime != '' THEN pdo.datetime", StringConstant.NEW_LINE, "                                ELSE datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                             END", StringConstant.NEW_LINE, "                    ELSE datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                END datetime,", StringConstant.NEW_LINE, "                /* Temp datetime is needed for the where conditions since it was colliding with pdo.datetime ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                with empty values or datetime function*/", StringConstant.NEW_LINE, "                 CASE", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    WHEN sbt.updateCategory IS NOT NULL THEN datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE, "                    WHEN d = 'Bill'", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                        THEN CASE", StringConstant.NEW_LINE, "                            WHEN act_state.as_state IN (2, 4)", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                THEN act_state.action_datetime", StringConstant.NEW_LINE, "                            WHEN (pdo.datetime IS NULL OR pdo.datetime = '') AND ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                datetime(sbt.date/1000, 'unixepoch', 'localtime','start of day') = datetime('now','start of day')", StringConstant.NEW_LINE, "                                THEN datetime('now', 'start of day', '+1 day', '-1 second')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                            WHEN pdo.datetime = datetime('now', 'start of day')", StringConstant.NEW_LINE, "                                /* Hack to bring BILL reminders to the top of today's cards in chronological order*/", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                THEN datetime('now', 'start of day', '+1 day', '-1 second')", StringConstant.NEW_LINE, "                            WHEN pdo.datetime IS NOT NULL AND pdo.datetime != '' ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                THEN pdo.datetime", StringConstant.NEW_LINE, "                            ELSE datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                            END", StringConstant.NEW_LINE, "                            ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    WHEN d = 'Delivery'", StringConstant.NEW_LINE, "                        THEN CASE", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                             WHEN pdo.k = 'actionrqd' AND pdo.p = 'selfpickup'", StringConstant.NEW_LINE, "                                THEN CASE ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                    WHEN act_state.as_state = 5", StringConstant.NEW_LINE, "                                        THEN act_state.action_datetime", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                    WHEN pdo.datetime IS NOT NULL AND pdo.datetime != '' AND ", StringConstant.NEW_LINE, "                                        datetime(datetime, 'start of day') = datetime('now', 'start of day')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                        THEN datetime('now', 'start of day', '+1 day', '-1 second')", StringConstant.NEW_LINE, "                                    WHEN pdo.datetime IS NOT NULL AND pdo.datetime != '' ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                        THEN pdo.datetime", StringConstant.NEW_LINE, "                                    ELSE datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                    END", StringConstant.NEW_LINE, "                             ELSE datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                        END ", StringConstant.NEW_LINE, "                    WHEN d = 'Travel'", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                        THEN CASE ", StringConstant.NEW_LINE, "                                WHEN (pdo.datetime IS NULL OR pdo.datetime = '') AND ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                    datetime(sbt.date/1000, 'unixepoch', 'localtime','start of day') = datetime('now','start of day')", StringConstant.NEW_LINE, "                                    THEN datetime('now', 'start of day', '+1 day', '-1 second')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                WHEN datetime IS NOT NULL AND datetime != '' AND", StringConstant.NEW_LINE, "                                    datetime(datetime, 'start of day') = datetime('now', 'start of day')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                    /* Hack to bring travel reminders to the top of today's cards in chronological order*/", StringConstant.NEW_LINE, "                                    THEN datetime('now', 'start of day', '+1 day', '-1 second')", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                WHEN pdo.datetime IS NOT NULL AND pdo.datetime != '' ", StringConstant.NEW_LINE, "                                    THEN pdo.datetime", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                                ELSE datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE, "                             END", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    ELSE datetime(sbt.date/1000, 'unixepoch', 'localtime')", StringConstant.NEW_LINE, "                END datetime_temp,", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                IFNULL(sbt.date, \"\") AS msg_date, IFNULL(pdo.active, \"\") AS active, ", StringConstant.NEW_LINE, "                IFNULL(pdo.state, \"\") AS state, act_state.* FROM sms_backup_table sbt", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                LEFT JOIN (", StringConstant.NEW_LINE, "                    SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category ", StringConstant.NEW_LINE, "                    FROM parsed_data_object_table AS p ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    WHERE messageID >= 0", StringConstant.NEW_LINE, "                    UNION ALL ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    SELECT pt.messageID AS messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, ", StringConstant.NEW_LINE, "                    pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category ", StringConstant.NEW_LINE, "                    FROM (SELECT * FROM parsed_data_object_table ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    WHERE messageID < 0) AS pdo ", StringConstant.NEW_LINE, "                    LEFT JOIN (SELECT synthetic_record_id, messageID FROM parsed_data_object_table ", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    WHERE synthetic_record_id IS NOT NULL GROUP BY 1 ORDER BY msg_date) AS pt", StringConstant.NEW_LINE, "                    ON pdo.messageID = pt.synthetic_record_id", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                ) AS pdo ON sbt.messageID = pdo.messageID", StringConstant.NEW_LINE, "                LEFT JOIN (", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                    SELECT message_id, state AS as_state, extra, datetime(created_at/1000, 'unixepoch', 'localtime') AS action_datetime", StringConstant.NEW_LINE, "                    FROM action_state", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                ) AS act_state ON sbt.messageID = act_state.message_id", StringConstant.NEW_LINE, "                WHERE sbt.spam_category != 4", StringConstant.NEW_LINE);
        m8688M.append("                AND (sbt.updateCategory IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(") OR (sbt.updateCategory IS NULL AND pdo.active = 1 AND pdo.d IN (");
        int size2 = list2.size();
        C25655d.m3086a(m8688M, size2);
        m8688M.append(")))");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("                AND datetime_temp IS NOT NULL");
        m8688M.append(StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                AND CASE", StringConstant.NEW_LINE, "                    WHEN updateCategory IS NOT NULL", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                        THEN datetime_temp <= datetime('now', 'localtime')", StringConstant.NEW_LINE, "                    ELSE 1", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                END", StringConstant.NEW_LINE, "                ORDER BY datetime_temp DESC", StringConstant.NEW_LINE);
        C25686y m3059j = C25686y.m3059j(C22128a.m8610j(m8688M, "            )", StringConstant.NEW_LINE, "    "), size + 0 + size2);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        int i2 = size + 1;
        for (String str2 : list2) {
            if (str2 == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str2);
            }
            i2++;
        }
        C9904i c9904i = new C9904i(m3059j);
        g0 g0Var = t0.d;
        l.e(g0Var, "fetchDispatcher");
        w wVar = new w(c9904i, g0Var);
        l.e(g0Var, "dispatcher");
        l.e(wVar, "delegate");
        return (AbstractC27583k2) wVar.invoke();
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: p */
    public Object mo27033p(long j, d<? super List<? extends SmsBackup>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * FROM sms_backup_table\n            WHERE date >= ?\n            ORDER BY date DESC\n        ", 1);
        m3059j.mo2650l0(1, j);
        return C25650g.m3095b(this.f29611a, false, new CancellationSignal(), new CallableC9903h(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9893j0
    /* renamed from: q */
    public f<List<SmsBackup>> mo27032q(long j, long j2, String str) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT sbt.messageID, sbt.address, sbt.date, IFNULL(sbt.updateCategory, ?) as updateCategory, classified_by, message, transport, parseFailed, errorMessage, retryCount, sbt.deleted, sbt.created_at, conversationId, sbt.spam_category, sbt.confidence_score, sbt.no_of_words FROM sms_backup_table sbt\n            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID\n            WHERE ((updateCategory NOT NULL \n            AND sbt.spam_category != 3) OR (pdo.d = 'Delivery' AND pdo.c NOT NULL))\n            AND sbt.date > ?\n            AND sbt.date <= ?\n            ORDER BY sbt.date DESC\n        ", 3);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        m3059j.mo2650l0(3, j2);
        return C25650g.m3096a(this.f29611a, false, new String[]{"sms_backup_table", "parsed_data_object_table"}, new CallableC9898c(m3059j));
    }
}
