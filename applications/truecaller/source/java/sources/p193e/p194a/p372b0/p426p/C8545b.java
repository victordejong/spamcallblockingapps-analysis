package p193e.p194a.p372b0.p426p;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1788g.C26188i;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p426p.p427f.C8557d;
/* renamed from: e.a.b0.p.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/b.class */
public class C8545b {

    /* renamed from: c */
    public static final String[] f26335c = {"term", "tag_id", "relevance"};

    /* renamed from: d */
    public static final C8548c f26336d = new C8548c();

    /* renamed from: a */
    public final int f26337a;

    /* renamed from: b */
    public final C8548c f26338b = new C8548c();

    /* renamed from: e.a.b0.p.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/p/b$b.class */
    public static class C8547b {

        /* renamed from: a */
        public final int f26339a;

        /* renamed from: b */
        public final String f26340b;

        /* renamed from: c */
        public final double f26341c;

        public C8547b(int i, String str, double d) {
            this.f26339a = i;
            this.f26340b = str;
            this.f26341c = d;
        }
    }

    /* renamed from: e.a.b0.p.b$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/p/b$c.class */
    public static class C8548c {

        /* renamed from: a */
        public final Map<Character, List<C8549d>> f26342a = new HashMap();

        /* renamed from: b */
        public List<C8547b> f26343b = null;

        /* renamed from: a */
        public C8548c m28406a(CharSequence charSequence) {
            int binarySearch;
            List<C8549d> list = this.f26342a.get(Character.valueOf(Character.toLowerCase(((C8550e) charSequence).charAt(0))));
            if (list != null && (binarySearch = Collections.binarySearch(list, charSequence)) >= 0) {
                return list.get(binarySearch).f26345b;
            }
            return null;
        }
    }

    /* renamed from: e.a.b0.p.b$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/p/b$d.class */
    public static class C8549d implements Comparable<CharSequence> {

        /* renamed from: a */
        public final String f26344a;

        /* renamed from: b */
        public C8548c f26345b;

        public C8549d(String str, C8546a c8546a) {
            this.f26344a = str;
        }

        @Override // java.lang.Comparable
        public int compareTo(CharSequence charSequence) {
            CharSequence charSequence2 = charSequence;
            int length = this.f26344a.length() - charSequence2.length();
            int i = length;
            if (length == 0) {
                i = Character.toLowerCase(this.f26344a.charAt(0)) - Character.toLowerCase(charSequence2.charAt(0));
            }
            int i2 = i;
            if (i == 0) {
                int length2 = this.f26344a.length() - 1;
                i2 = Character.toLowerCase(this.f26344a.charAt(length2)) - Character.toLowerCase(charSequence2.charAt(length2));
            }
            int i3 = i2;
            if (i2 == 0) {
                int length3 = this.f26344a.length();
                int i4 = 1;
                while (true) {
                    i3 = i2;
                    if (i4 >= length3 - 1) {
                        break;
                    }
                    i3 = i2;
                    if (i2 != 0) {
                        break;
                    }
                    i2 = Character.toLowerCase(this.f26344a.charAt(i4)) - Character.toLowerCase(charSequence2.charAt(i4));
                    i4++;
                }
            }
            return i3;
        }
    }

    /* renamed from: e.a.b0.p.b$e */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/p/b$e.class */
    public static class C8550e implements CharSequence {

        /* renamed from: a */
        public final CharSequence f26346a;

        /* renamed from: b */
        public final int f26347b;

        /* renamed from: c */
        public int f26348c;

        /* renamed from: d */
        public int f26349d = -1;

        public C8550e(CharSequence charSequence) {
            this.f26346a = charSequence;
            this.f26347b = charSequence.length();
        }

        /* renamed from: a */
        public boolean m28405a() {
            boolean z = true;
            int i = this.f26349d + 1;
            this.f26349d = i;
            this.f26348c = i;
            while (true) {
                int i2 = this.f26349d;
                if (i2 >= this.f26347b) {
                    if (this.f26348c == i2) {
                        z = false;
                    }
                    return z;
                }
                if (Character.isWhitespace(this.f26346a.charAt(i2))) {
                    int i3 = this.f26348c;
                    int i4 = this.f26349d;
                    if (i3 != i4) {
                        return true;
                    }
                    this.f26348c = i4 + 1;
                }
                this.f26349d++;
            }
        }

        @Override // java.lang.CharSequence
        public char charAt(int i) {
            return this.f26346a.charAt(i + this.f26348c);
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.f26349d - this.f26348c;
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i, int i2) {
            CharSequence charSequence = this.f26346a;
            int i3 = this.f26348c;
            return charSequence.subSequence(i + i3, i3 + i2);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            return this.f26346a.subSequence(this.f26348c, this.f26349d).toString();
        }
    }

    /* JADX WARN: Finally extract failed */
    public C8545b(Context context) {
        if (!C18334g0.m15277B("featureAutoTagging", false)) {
            this.f26337a = -1;
            return;
        }
        int m15261J = (int) C18334g0.m15261J("tagsKeywordsVersion", -1L);
        Cursor query = C8557d.m28392a(context).getReadableDatabase().query("tag_keywords", f26335c, null, null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    try {
                        m28408a(new C8547b(query.getInt(1), query.getString(0), query.getDouble(2)));
                    } catch (SQLiteException e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                        C8548c c8548c = this.f26338b;
                        c8548c.f26342a.clear();
                        List<C8547b> list = c8548c.f26343b;
                        if (list != null) {
                            list.clear();
                        }
                        query.close();
                        m15261J = -1;
                    }
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
            query.close();
        }
        this.f26337a = m15261J;
    }

    /* renamed from: a */
    public final void m28408a(C8547b c8547b) {
        C8548c c8548c;
        C8549d c8549d;
        C8550e c8550e = new C8550e(c8547b.f26340b);
        C8548c c8548c2 = this.f26338b;
        while (true) {
            c8548c = c8548c2;
            if (!c8550e.m28405a()) {
                break;
            }
            Objects.requireNonNull(c8548c);
            char lowerCase = Character.toLowerCase(c8550e.charAt(0));
            List<C8549d> list = c8548c.f26342a.get(Character.valueOf(lowerCase));
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                C8549d c8549d2 = new C8549d(c8550e.toString(), null);
                c8549d2.f26345b = new C8548c();
                arrayList.add(c8549d2);
                c8548c.f26342a.put(Character.valueOf(lowerCase), arrayList);
                c8548c2 = c8549d2.f26345b;
            } else {
                int binarySearch = Collections.binarySearch(list, c8550e);
                if (binarySearch < 0) {
                    c8549d = new C8549d(c8550e.toString(), null);
                    c8549d.f26345b = new C8548c();
                    list.add((-binarySearch) - 1, c8549d);
                } else {
                    c8549d = list.get(binarySearch);
                }
                c8548c2 = c8549d.f26345b;
            }
        }
        if (c8548c.f26343b == null) {
            c8548c.f26343b = new ArrayList();
        }
        c8548c.f26343b.add(c8547b);
    }

    /* renamed from: b */
    public final void m28407b(C8548c c8548c, C26188i<C8544a> c26188i) {
        List<C8547b> list = c8548c.f26343b;
        int size = list == null ? 0 : list.size();
        for (int i = 0; i < size; i++) {
            C8547b c8547b = c8548c.f26343b.get(i);
            C8544a m2567f = c26188i.m2567f(c8547b.f26339a);
            if (m2567f != null) {
                m2567f.f26334c += c8547b.f26341c;
            } else {
                int i2 = c8547b.f26339a;
                c26188i.m2571a(i2, new C8544a(i2, c8547b.f26341c, this.f26337a));
            }
        }
    }
}
