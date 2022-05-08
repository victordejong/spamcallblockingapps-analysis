package p065f.p066a.p068b.p069a;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.SparseArray;
import gogolook.callgogolook2.R$xml;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import p065f.p066a.p068b.p069a.AbstractC4242b;
import p065f.p066a.p068b.p069a.C4244c;
/* renamed from: f.a.b.a.f */
/* loaded from: classes-dex2jar.jar:f/a/b/a/f.class */
public class C4249f implements AbstractC4242b {

    /* renamed from: c */
    public static final String[] f10292c = {"type", "mmsc", "mmsproxy", "mmsport"};

    /* renamed from: a */
    public final Context f10293a;

    /* renamed from: b */
    public final SparseArray<List<AbstractC4242b.AbstractC4243a>> f10294b = new SparseArray<>();

    /* renamed from: f.a.b.a.f$a */
    /* loaded from: classes-dex2jar.jar:f/a/b/a/f$a.class */
    public class C4250a implements C4244c.AbstractC4245a {

        /* renamed from: a */
        public final /* synthetic */ int[] f10295a;

        /* renamed from: b */
        public final /* synthetic */ String f10296b;

        /* renamed from: c */
        public final /* synthetic */ List f10297c;

        public C4250a(C4249f fVar, int[] iArr, String str, List list) {
            this.f10295a = iArr;
            this.f10296b = str;
            this.f10297c = list;
        }

        @Override // p065f.p066a.p068b.p069a.C4244c.AbstractC4245a
        /* renamed from: a */
        public void mo29235a(ContentValues contentValues) {
            String d = C4249f.m29236d(contentValues.getAsString("mcc"));
            String d2 = C4249f.m29236d(contentValues.getAsString("mnc"));
            String d3 = C4249f.m29236d(contentValues.getAsString("apn"));
            try {
                if (this.f10295a[0] != Integer.parseInt(d) || this.f10295a[1] != Integer.parseInt(d2)) {
                    return;
                }
                if (TextUtils.isEmpty(this.f10296b) || this.f10296b.equalsIgnoreCase(d3)) {
                    C4252c a = C4252c.m29231a(this.f10297c, contentValues.getAsString("type"), contentValues.getAsString("mmsc"), contentValues.getAsString("mmsproxy"), contentValues.getAsString("mmsport"));
                    if (a != null) {
                        this.f10297c.add(a);
                    }
                }
            } catch (NumberFormatException e) {
            }
        }
    }

    /* renamed from: f.a.b.a.f$b */
    /* loaded from: classes-dex2jar.jar:f/a/b/a/f$b.class */
    public static class C4251b implements AbstractC4242b.AbstractC4243a {

        /* renamed from: a */
        public final String f10298a;

        /* renamed from: b */
        public final String f10299b;

        /* renamed from: c */
        public final int f10300c;

        public C4251b(String str, String str2, int i) {
            this.f10298a = str;
            this.f10299b = str2;
            this.f10300c = i;
        }

        /* renamed from: a */
        public static C4251b m29233a(String str, String str2, String str3, String str4) {
            if (!C4249f.m29241a(C4249f.m29236d(str), "mms")) {
                return null;
            }
            String d = C4249f.m29236d(str2);
            if (TextUtils.isEmpty(d)) {
                return null;
            }
            String c = C4249f.m29237c(d);
            try {
                new URI(c);
                String d2 = C4249f.m29236d(str3);
                String str5 = d2;
                int i = 80;
                if (!TextUtils.isEmpty(d2)) {
                    String c2 = C4249f.m29237c(d2);
                    String d3 = C4249f.m29236d(str4);
                    str5 = c2;
                    i = 80;
                    if (d3 != null) {
                        try {
                            i = Integer.parseInt(d3);
                            str5 = c2;
                        } catch (NumberFormatException e) {
                            str5 = c2;
                            i = 80;
                        }
                    }
                }
                return new C4251b(c, str5, i);
            } catch (URISyntaxException e2) {
                return null;
            }
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: a */
        public String mo8213a() {
            return this.f10298a;
        }

        /* renamed from: a */
        public boolean m29234a(C4251b bVar) {
            return TextUtils.equals(this.f10298a, bVar.mo8213a()) && TextUtils.equals(this.f10299b, bVar.mo8208d()) && this.f10300c == bVar.mo8209c();
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: b */
        public void mo8210b() {
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: c */
        public int mo8209c() {
            return this.f10300c;
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: d */
        public String mo8208d() {
            return this.f10299b;
        }
    }

    /* renamed from: f.a.b.a.f$c */
    /* loaded from: classes-dex2jar.jar:f/a/b/a/f$c.class */
    public static class C4252c implements AbstractC4242b.AbstractC4243a {

        /* renamed from: a */
        public final List<AbstractC4242b.AbstractC4243a> f10301a;

        /* renamed from: b */
        public final C4251b f10302b;

        public C4252c(List<AbstractC4242b.AbstractC4243a> list, C4251b bVar) {
            this.f10301a = list;
            this.f10302b = bVar;
        }

        /* renamed from: a */
        public static C4252c m29231a(List<AbstractC4242b.AbstractC4243a> list, String str, String str2, String str3, String str4) {
            C4251b a;
            if (list == null || (a = C4251b.m29233a(str, str2, str3, str4)) == null) {
                return null;
            }
            for (AbstractC4242b.AbstractC4243a aVar : list) {
                if ((aVar instanceof C4252c) && ((C4252c) aVar).m29232a(a)) {
                    return null;
                }
            }
            return new C4252c(list, a);
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: a */
        public String mo8213a() {
            return this.f10302b.mo8213a();
        }

        /* renamed from: a */
        public boolean m29232a(C4251b bVar) {
            if (bVar == null) {
                return false;
            }
            return this.f10302b.m29234a(bVar);
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: b */
        public void mo8210b() {
            boolean z;
            synchronized (this.f10301a) {
                z = false;
                if (this.f10301a.get(0) != this) {
                    this.f10301a.remove(this);
                    this.f10301a.add(0, this);
                    z = true;
                }
            }
            if (z) {
                String str = "Set APN [MMSC=" + mo8213a() + ", PROXY=" + mo8208d() + ", PORT=" + mo8209c() + "] to be first";
            }
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: c */
        public int mo8209c() {
            return this.f10302b.mo8209c();
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: d */
        public String mo8208d() {
            return this.f10302b.mo8208d();
        }
    }

    public C4249f(Context context) {
        this.f10293a = context;
    }

    /* renamed from: a */
    public static boolean m29241a(String str, String str2) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        for (String str3 : str.split(",")) {
            if (str3.equals(str2) || str3.equals("*")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static String m29237c(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split("\\.");
        if (split.length != 4) {
            return str;
        }
        StringBuilder sb = new StringBuilder(16);
        for (int i = 0; i < 4; i++) {
            try {
                if (split[i].length() > 3) {
                    return str;
                }
                sb.append(Integer.parseInt(split[i]));
                if (i < 3) {
                    sb.append('.');
                }
            } catch (NumberFormatException e) {
                return str;
            }
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static String m29236d(String str) {
        return str != null ? str.trim() : null;
    }

    /* renamed from: a */
    public final Cursor m29243a(Uri uri, boolean z, String str) {
        String[] strArr;
        String str2 = "Loading APNs from system, checkCurrent=" + z + " apnName=" + str;
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("current");
            sb.append(" IS NOT NULL");
        }
        String d = m29236d(str);
        if (!TextUtils.isEmpty(d)) {
            if (sb.length() > 0) {
                sb.append(" AND ");
            }
            sb.append("apn");
            sb.append("=?");
            strArr = new String[]{d};
        } else {
            strArr = null;
        }
        try {
            Cursor query = this.f10293a.getContentResolver().query(uri, f10292c, sb.toString(), strArr, null);
            if (query != null && query.getCount() >= 1) {
                return query;
            }
            if (query != null) {
                query.close();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Query ");
            sb2.append(uri);
            sb2.append(" with apn ");
            sb2.append(d);
            sb2.append(" and ");
            sb2.append(z ? "checking CURRENT" : "not checking CURRENT");
            sb2.append(" returned empty");
            sb2.toString();
            return null;
        } catch (SQLiteException e) {
            String str3 = "APN table query exception: " + e;
            return null;
        } catch (SecurityException e2) {
            String str4 = "Platform restricts APN table access: " + e2;
            throw e2;
        }
    }

    /* renamed from: a */
    public final void m29244a(int i, String str, List<AbstractC4242b.AbstractC4243a> list) {
        XmlResourceParser xml;
        String str2 = "Loading APNs from resources, apnName=" + str;
        int[] a = C4266q.m29168a(this.f10293a, i);
        if (a[0] != 0 || a[0] != 0) {
            XmlResourceParser xmlResourceParser = null;
            XmlResourceParser xmlResourceParser2 = null;
            try {
                try {
                    xml = this.f10293a.getResources().getXml(R$xml.apns);
                    xmlResourceParser2 = xml;
                    xmlResourceParser = xml;
                    new C4244c(xml, new C4250a(this, a, str, list)).m29175b();
                } catch (Resources.NotFoundException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Can not get apns.xml ");
                    sb.append(e);
                    xmlResourceParser2 = xmlResourceParser;
                    sb.toString();
                    if (xmlResourceParser == null) {
                        return;
                    }
                }
                if (xml != null) {
                    xmlResourceParser = xml;
                    xmlResourceParser.close();
                }
            } catch (Throwable th) {
                if (xmlResourceParser2 != null) {
                    xmlResourceParser2.close();
                }
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final void m29240b(int i, String str, List<AbstractC4242b.AbstractC4243a> list) {
        Uri uri;
        Cursor cursor;
        C4251b a;
        if (!C4266q.m29163c() || i == -1) {
            uri = Telephony.Carriers.CONTENT_URI;
        } else {
            Uri uri2 = Telephony.Carriers.CONTENT_URI;
            uri = Uri.withAppendedPath(uri2, "/subId/" + i);
        }
        try {
            Cursor a2 = m29243a(uri, true, str);
            if (a2 != null) {
                cursor = a2;
            } else {
                cursor = m29243a(uri, false, str);
                if (cursor == null) {
                    cursor = m29243a(uri, true, (String) null);
                    if (cursor == null) {
                        cursor = m29243a(uri, false, (String) null);
                    }
                }
            }
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst() && (a = C4251b.m29233a(cursor.getString(0), cursor.getString(1), cursor.getString(2), cursor.getString(3))) != null) {
                        list.add(a);
                    }
                } finally {
                    cursor.close();
                }
            }
        } catch (SecurityException e) {
        }
    }

    /* renamed from: c */
    public final void m29238c(int i, String str, List<AbstractC4242b.AbstractC4243a> list) {
        m29240b(i, str, list);
        if (list.size() <= 0) {
            m29244a(i, str, list);
            if (list.size() <= 0) {
                m29244a(i, (String) null, list);
            }
        }
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4242b
    public List<AbstractC4242b.AbstractC4243a> get(String str) {
        boolean z;
        ArrayList arrayList;
        int a = C4266q.m29169a(-1);
        synchronized (this) {
            List<AbstractC4242b.AbstractC4243a> list = this.f10294b.get(a);
            if (list == null) {
                ArrayList arrayList2 = new ArrayList();
                this.f10294b.put(a, arrayList2);
                m29238c(a, str, arrayList2);
                z = true;
                arrayList = arrayList2;
            } else {
                z = false;
                arrayList = list;
            }
        }
        if (z) {
            String str2 = "Loaded " + arrayList.size() + " APNs";
        }
        return arrayList;
    }
}
