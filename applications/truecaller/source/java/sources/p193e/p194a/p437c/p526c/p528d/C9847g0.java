package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.insights.source.SmartSMSFeatureStatus;
import com.truecaller.insights.source.SourceType;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
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
import p193e.p194a.p437c.p531c0.C10020g;
import p193e.p194a.p437c.p580r.p588i.C10566a;
import q3.a.x2.f;
import s1.f0.v;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.c.c.d.g0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0.class */
public final class C9847g0 implements AbstractC9845f0 {

    /* renamed from: a */
    public final AbstractC25677q f29526a;

    /* renamed from: b */
    public final AbstractC25663k<C10566a> f29527b;

    /* renamed from: c */
    public final C10020g f29528c = new C10020g();

    /* renamed from: d */
    public final AbstractC25646c0 f29529d;

    /* renamed from: e */
    public final AbstractC25646c0 f29530e;

    /* renamed from: f */
    public final AbstractC25646c0 f29531f;

    /* renamed from: g */
    public final AbstractC25646c0 f29532g;

    /* renamed from: e.a.c.c.d.g0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$a.class */
    public class CallableC9848a implements Callable<List<C10566a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29533a;

        public CallableC9848a(C25686y c25686y) {
            C9847g0.this = r4;
            this.f29533a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C10566a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9847g0.this.f29526a, this.f29533a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.SENDER);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "sender_name");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "sender_type");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "smart_features_status");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "grammars_enabled");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "source_type");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "country_code");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    String string = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string2 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    String string3 = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                    String string4 = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                    Objects.requireNonNull(C9847g0.this.f29528c);
                    SmartSMSFeatureStatus valueOf = string4 != null ? SmartSMSFeatureStatus.valueOf(string4) : null;
                    String string5 = m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06);
                    Objects.requireNonNull(C9847g0.this.f29528c);
                    l.e(string5, "string");
                    List U = v.U(string5, new String[]{","}, false, 0, 6);
                    String string6 = m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07);
                    Objects.requireNonNull(C9847g0.this.f29528c);
                    arrayList.add(new C10566a(j, string, string2, string3, valueOf, U, string6 != null ? SourceType.valueOf(string6) : null, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08)));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29533a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.g0$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$b.class */
    public class C9849b extends AbstractC25663k<C10566a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9849b(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9847g0.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C10566a c10566a) {
            C10566a c10566a2 = c10566a;
            abstractC26154f.mo2650l0(1, c10566a2.f31493a);
            String str = c10566a2.f31494b;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            String str2 = c10566a2.f31495c;
            if (str2 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, str2);
            }
            String str3 = c10566a2.f31496d;
            if (str3 == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, str3);
            }
            String m26904f = C9847g0.this.f29528c.m26904f(c10566a2.f31497e);
            if (m26904f == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, m26904f);
            }
            C10020g c10020g = C9847g0.this.f29528c;
            List<String> list = c10566a2.f31498f;
            Objects.requireNonNull(c10020g);
            l.e(list, "list");
            abstractC26154f.mo2651f0(6, i.O(list, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62));
            String m26903g = C9847g0.this.f29528c.m26903g(c10566a2.f31499g);
            if (m26903g == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2651f0(7, m26903g);
            }
            String str4 = c10566a2.f31500h;
            if (str4 == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2651f0(8, str4);
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `sender_info` (`id`,`sender`,`sender_name`,`sender_type`,`smart_features_status`,`grammars_enabled`,`source_type`,`country_code`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.g0$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$c.class */
    public class C9850c extends AbstractC25646c0 {
        public C9850c(C9847g0 c9847g0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n        UPDATE sender_info SET smart_features_status = ? \n        WHERE sender = ? AND \n        (sender_type = ? OR\n            (sender_type IS NULL AND ? is NULL)\n        ) AND \n        source_type = ? AND \n        (country_code = ? OR\n            (country_code IS NULL AND ? is NULL))\n    ";
        }
    }

    /* renamed from: e.a.c.c.d.g0$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$d.class */
    public class C9851d extends AbstractC25646c0 {
        public C9851d(C9847g0 c9847g0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n        UPDATE sender_info SET grammars_enabled = ?\n        WHERE \n        sender = ? AND \n       (sender_type = ? OR\n            (sender_type IS NULL AND ? is NULL)\n        ) AND \n        smart_features_status = ? AND\n        source_type = ? AND \n        (country_code = ? OR\n            (country_code IS NULL AND ? is NULL))\n    ";
        }
    }

    /* renamed from: e.a.c.c.d.g0$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$e.class */
    public class C9852e extends AbstractC25646c0 {
        public C9852e(C9847g0 c9847g0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n        UPDATE sender_info SET smart_features_status = ? \n        WHERE sender = ? AND\n        source_type = ? AND \n        (country_code = ? OR\n            (country_code IS NULL AND ? is NULL))\n    ";
        }
    }

    /* renamed from: e.a.c.c.d.g0$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$f.class */
    public class C9853f extends AbstractC25646c0 {
        public C9853f(C9847g0 c9847g0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n        UPDATE sender_info SET grammars_enabled = ?\n        WHERE \n        sender = ? AND \n        smart_features_status = ? AND\n        source_type = ? AND \n        (country_code = ? OR\n            (country_code IS NULL AND ? is NULL))\n        ";
        }
    }

    /* renamed from: e.a.c.c.d.g0$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$g.class */
    public class CallableC9854g implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ C10566a f29536a;

        public CallableC9854g(C10566a c10566a) {
            C9847g0.this = r4;
            this.f29536a = c10566a;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C9847g0.this.f29526a.beginTransaction();
            try {
                C9847g0.this.f29527b.insert((AbstractC25663k<C10566a>) this.f29536a);
                C9847g0.this.f29526a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9847g0.this.f29526a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.g0$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$h.class */
    public class CallableC9855h implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ SmartSMSFeatureStatus f29538a;

        /* renamed from: b */
        public final /* synthetic */ String f29539b;

        /* renamed from: c */
        public final /* synthetic */ String f29540c;

        /* renamed from: d */
        public final /* synthetic */ SourceType f29541d;

        /* renamed from: e */
        public final /* synthetic */ String f29542e;

        public CallableC9855h(SmartSMSFeatureStatus smartSMSFeatureStatus, String str, String str2, SourceType sourceType, String str3) {
            C9847g0.this = r4;
            this.f29538a = smartSMSFeatureStatus;
            this.f29539b = str;
            this.f29540c = str2;
            this.f29541d = sourceType;
            this.f29542e = str3;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9847g0.this.f29529d.acquire();
            String m26904f = C9847g0.this.f29528c.m26904f(this.f29538a);
            if (m26904f == null) {
                acquire.mo2648y0(1);
            } else {
                acquire.mo2651f0(1, m26904f);
            }
            String str = this.f29539b;
            if (str == null) {
                acquire.mo2648y0(2);
            } else {
                acquire.mo2651f0(2, str);
            }
            String str2 = this.f29540c;
            if (str2 == null) {
                acquire.mo2648y0(3);
            } else {
                acquire.mo2651f0(3, str2);
            }
            String str3 = this.f29540c;
            if (str3 == null) {
                acquire.mo2648y0(4);
            } else {
                acquire.mo2651f0(4, str3);
            }
            String m26903g = C9847g0.this.f29528c.m26903g(this.f29541d);
            if (m26903g == null) {
                acquire.mo2648y0(5);
            } else {
                acquire.mo2651f0(5, m26903g);
            }
            String str4 = this.f29542e;
            if (str4 == null) {
                acquire.mo2648y0(6);
            } else {
                acquire.mo2651f0(6, str4);
            }
            String str5 = this.f29542e;
            if (str5 == null) {
                acquire.mo2648y0(7);
            } else {
                acquire.mo2651f0(7, str5);
            }
            C9847g0.this.f29526a.beginTransaction();
            try {
                acquire.m2673A();
                C9847g0.this.f29526a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9847g0.this.f29526a.endTransaction();
                C9847g0.this.f29529d.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.g0$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$i.class */
    public class CallableC9856i implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ String f29544a;

        /* renamed from: b */
        public final /* synthetic */ String f29545b;

        /* renamed from: c */
        public final /* synthetic */ String f29546c;

        /* renamed from: d */
        public final /* synthetic */ SmartSMSFeatureStatus f29547d;

        /* renamed from: e */
        public final /* synthetic */ SourceType f29548e;

        /* renamed from: f */
        public final /* synthetic */ String f29549f;

        public CallableC9856i(String str, String str2, String str3, SmartSMSFeatureStatus smartSMSFeatureStatus, SourceType sourceType, String str4) {
            C9847g0.this = r4;
            this.f29544a = str;
            this.f29545b = str2;
            this.f29546c = str3;
            this.f29547d = smartSMSFeatureStatus;
            this.f29548e = sourceType;
            this.f29549f = str4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9847g0.this.f29530e.acquire();
            String str = this.f29544a;
            if (str == null) {
                acquire.mo2648y0(1);
            } else {
                acquire.mo2651f0(1, str);
            }
            String str2 = this.f29545b;
            if (str2 == null) {
                acquire.mo2648y0(2);
            } else {
                acquire.mo2651f0(2, str2);
            }
            String str3 = this.f29546c;
            if (str3 == null) {
                acquire.mo2648y0(3);
            } else {
                acquire.mo2651f0(3, str3);
            }
            String str4 = this.f29546c;
            if (str4 == null) {
                acquire.mo2648y0(4);
            } else {
                acquire.mo2651f0(4, str4);
            }
            String m26904f = C9847g0.this.f29528c.m26904f(this.f29547d);
            if (m26904f == null) {
                acquire.mo2648y0(5);
            } else {
                acquire.mo2651f0(5, m26904f);
            }
            String m26903g = C9847g0.this.f29528c.m26903g(this.f29548e);
            if (m26903g == null) {
                acquire.mo2648y0(6);
            } else {
                acquire.mo2651f0(6, m26903g);
            }
            String str5 = this.f29549f;
            if (str5 == null) {
                acquire.mo2648y0(7);
            } else {
                acquire.mo2651f0(7, str5);
            }
            String str6 = this.f29549f;
            if (str6 == null) {
                acquire.mo2648y0(8);
            } else {
                acquire.mo2651f0(8, str6);
            }
            C9847g0.this.f29526a.beginTransaction();
            try {
                acquire.m2673A();
                C9847g0.this.f29526a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9847g0.this.f29526a.endTransaction();
                C9847g0.this.f29530e.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.g0$j */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/g0$j.class */
    public class CallableC9857j implements Callable<List<C10566a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29551a;

        public CallableC9857j(C25686y c25686y) {
            C9847g0.this = r4;
            this.f29551a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C10566a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9847g0.this.f29526a, this.f29551a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.SENDER);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "sender_name");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "sender_type");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "smart_features_status");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "grammars_enabled");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "source_type");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "country_code");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    long j = m3090b.getLong(m43237g0);
                    String string = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string2 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    String string3 = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                    String string4 = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                    Objects.requireNonNull(C9847g0.this.f29528c);
                    SmartSMSFeatureStatus valueOf = string4 != null ? SmartSMSFeatureStatus.valueOf(string4) : null;
                    String string5 = m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06);
                    Objects.requireNonNull(C9847g0.this.f29528c);
                    l.e(string5, "string");
                    List U = v.U(string5, new String[]{","}, false, 0, 6);
                    String string6 = m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07);
                    Objects.requireNonNull(C9847g0.this.f29528c);
                    arrayList.add(new C10566a(j, string, string2, string3, valueOf, U, string6 != null ? SourceType.valueOf(string6) : null, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29551a.m3057l();
            }
        }
    }

    public C9847g0(AbstractC25677q abstractC25677q) {
        this.f29526a = abstractC25677q;
        this.f29527b = new C9849b(abstractC25677q);
        this.f29529d = new C9850c(this, abstractC25677q);
        this.f29530e = new C9851d(this, abstractC25677q);
        this.f29531f = new C9852e(this, abstractC25677q);
        this.f29532g = new C9853f(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9845f0
    /* renamed from: a */
    public f<List<C10566a>> mo27080a(String str) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * FROM sender_info WHERE sender LIKE '%' || ? || '%'\n        ", 1);
        m3059j.mo2651f0(1, str);
        return C25650g.m3096a(this.f29526a, false, new String[]{"sender_info"}, new CallableC9848a(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9845f0
    /* renamed from: b */
    public Object mo27079b(C10566a c10566a, d<? super s> dVar) {
        return C25650g.m3094c(this.f29526a, true, new CallableC9854g(c10566a), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9845f0
    /* renamed from: c */
    public Object mo27078c(String str, String str2, SmartSMSFeatureStatus smartSMSFeatureStatus, SourceType sourceType, String str3, d<? super s> dVar) {
        return C25650g.m3094c(this.f29526a, true, new CallableC9855h(smartSMSFeatureStatus, str, str2, sourceType, str3), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9845f0
    /* renamed from: d */
    public void mo27077d(List<String> list, SourceType sourceType, String str) {
        this.f29526a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("        DELETE FROM sender_info ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        WHERE sender NOT IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") AND ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        source_type = ");
        sb.append("?");
        C22128a.m8666T0(sb, " AND ", StringConstant.NEW_LINE, "        (country_code = ", "?");
        C22128a.m8666T0(sb, " OR", StringConstant.NEW_LINE, "            (country_code IS NULL AND ", "?");
        AbstractC26154f compileStatement = this.f29526a.compileStatement(C22128a.m8610j(sb, " is NULL))", StringConstant.NEW_LINE, "    "));
        int i = 1;
        for (String str2 : list) {
            if (str2 == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2651f0(i, str2);
            }
            i++;
        }
        int i2 = size + 1;
        String m26903g = this.f29528c.m26903g(sourceType);
        if (m26903g == null) {
            compileStatement.mo2648y0(i2);
        } else {
            compileStatement.mo2651f0(i2, m26903g);
        }
        int i3 = size + 2;
        if (str == null) {
            compileStatement.mo2648y0(i3);
        } else {
            compileStatement.mo2651f0(i3, str);
        }
        int i4 = size + 3;
        if (str == null) {
            compileStatement.mo2648y0(i4);
        } else {
            compileStatement.mo2651f0(i4, str);
        }
        this.f29526a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29526a.setTransactionSuccessful();
        } finally {
            this.f29526a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9845f0
    /* renamed from: e */
    public void mo27076e(String str, SmartSMSFeatureStatus smartSMSFeatureStatus, SourceType sourceType, String str2) {
        this.f29526a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29531f.acquire();
        String m26904f = this.f29528c.m26904f(smartSMSFeatureStatus);
        if (m26904f == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, m26904f);
        }
        acquire.mo2651f0(2, str);
        String m26903g = this.f29528c.m26903g(sourceType);
        if (m26903g == null) {
            acquire.mo2648y0(3);
        } else {
            acquire.mo2651f0(3, m26903g);
        }
        if (str2 == null) {
            acquire.mo2648y0(4);
        } else {
            acquire.mo2651f0(4, str2);
        }
        if (str2 == null) {
            acquire.mo2648y0(5);
        } else {
            acquire.mo2651f0(5, str2);
        }
        this.f29526a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29526a.setTransactionSuccessful();
        } finally {
            this.f29526a.endTransaction();
            this.f29531f.release(acquire);
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9845f0
    /* renamed from: f */
    public Object mo27075f(String str, String str2, SmartSMSFeatureStatus smartSMSFeatureStatus, String str3, SourceType sourceType, String str4, d<? super s> dVar) {
        return C25650g.m3094c(this.f29526a, true, new CallableC9856i(str3, str, str2, smartSMSFeatureStatus, sourceType, str4), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9845f0
    /* renamed from: g */
    public Object mo27074g(String str, String str2, d<? super List<C10566a>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT * FROM sender_info WHERE sender = ? AND \n        (country_code = ? OR\n            (country_code IS NULL AND ? is NULL))\n    ", 3);
        m3059j.mo2651f0(1, str);
        if (str2 == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2651f0(2, str2);
        }
        if (str2 == null) {
            m3059j.mo2648y0(3);
        } else {
            m3059j.mo2651f0(3, str2);
        }
        return C25650g.m3095b(this.f29526a, false, new CancellationSignal(), new CallableC9857j(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9845f0
    /* renamed from: h */
    public void mo27073h(String str, SmartSMSFeatureStatus smartSMSFeatureStatus, String str2, SourceType sourceType, String str3) {
        this.f29526a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29532g.acquire();
        acquire.mo2651f0(1, str2);
        acquire.mo2651f0(2, str);
        String m26904f = this.f29528c.m26904f(smartSMSFeatureStatus);
        if (m26904f == null) {
            acquire.mo2648y0(3);
        } else {
            acquire.mo2651f0(3, m26904f);
        }
        String m26903g = this.f29528c.m26903g(sourceType);
        if (m26903g == null) {
            acquire.mo2648y0(4);
        } else {
            acquire.mo2651f0(4, m26903g);
        }
        if (str3 == null) {
            acquire.mo2648y0(5);
        } else {
            acquire.mo2651f0(5, str3);
        }
        if (str3 == null) {
            acquire.mo2648y0(6);
        } else {
            acquire.mo2651f0(6, str3);
        }
        this.f29526a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29526a.setTransactionSuccessful();
        } finally {
            this.f29526a.endTransaction();
            this.f29532g.release(acquire);
        }
    }
}
