package p081h.p093b.p113e;

import android.accounts.Account;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.ads.ExtraHints;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p081h.p093b.p113e.C5704m;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.b.e.b */
/* loaded from: classes-dex2jar.jar:h/b/e/b.class */
public class C5673b {

    /* renamed from: r */
    public static final Map<String, Integer> f14185r = new HashMap();

    /* renamed from: s */
    public static final List<String> f14186s = Collections.unmodifiableList(new ArrayList(0));

    /* renamed from: a */
    public final C5683j f14187a = new C5683j();

    /* renamed from: b */
    public List<C5687n> f14188b;

    /* renamed from: c */
    public List<C5678e> f14189c;

    /* renamed from: d */
    public List<C5689p> f14190d;

    /* renamed from: e */
    public List<C5686m> f14191e;

    /* renamed from: f */
    public List<C5682i> f14192f;

    /* renamed from: g */
    public List<C5688o> f14193g;

    /* renamed from: h */
    public List<C5692s> f14194h;

    /* renamed from: i */
    public List<C5690q> f14195i;

    /* renamed from: j */
    public List<C5684k> f14196j;

    /* renamed from: k */
    public List<C5685l> f14197k;

    /* renamed from: l */
    public List<C5675b> f14198l;

    /* renamed from: m */
    public C5677d f14199m;

    /* renamed from: n */
    public C5676c f14200n;

    /* renamed from: o */
    public List<Pair<String, String>> f14201o;

    /* renamed from: p */
    public final int f14202p;

    /* renamed from: q */
    public List<C5673b> f14203q;

    /* renamed from: h.b.e.b$b */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$b.class */
    public static class C5675b implements AbstractC5679f {

        /* renamed from: a */
        public final String f14204a;

        /* renamed from: b */
        public final List<String> f14205b;

        public C5675b(String str, List<String> list) {
            this.f14204a = str;
            this.f14205b = list;
        }

        /* renamed from: a */
        public static C5675b m24800a(List<String> list) {
            List<String> list2;
            String str = null;
            if (list == null) {
                list2 = null;
            } else if (list.size() < 2) {
                str = list.get(0);
                list2 = null;
            } else {
                int i = 16;
                if (list.size() < 16) {
                    i = list.size();
                }
                str = list.get(0);
                list2 = list.subList(1, i);
            }
            return new C5675b(str, list2);
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public EnumC5681h mo24740a() {
            return EnumC5681h.ANDROID_CUSTOM;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5675b)) {
                return false;
            }
            C5675b bVar = (C5675b) obj;
            if (!TextUtils.equals(this.f14204a, bVar.f14204a)) {
                return false;
            }
            List<String> list = this.f14205b;
            if (list == null) {
                if (bVar.f14205b != null) {
                    z = false;
                }
                return z;
            }
            int size = list.size();
            if (size != bVar.f14205b.size()) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (!TextUtils.equals(this.f14205b.get(i), bVar.f14205b.get(i))) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            String str = this.f14204a;
            int hashCode = str != null ? str.hashCode() : 0;
            List<String> list = this.f14205b;
            int i = hashCode;
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (true) {
                    i = hashCode;
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    hashCode = (hashCode * 31) + (next != null ? next.hashCode() : 0);
                }
            }
            return i;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("android-custom: " + this.f14204a + ", data: ");
            List<String> list = this.f14205b;
            sb.append(list == null ? C14247d.f31851f : Arrays.toString(list.toArray()));
            return sb.toString();
        }
    }

    /* renamed from: h.b.e.b$c */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$c.class */
    public static class C5676c implements AbstractC5679f {

        /* renamed from: a */
        public final String f14206a;

        public C5676c(String str) {
            this.f14206a = str;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public EnumC5681h mo24740a() {
            return EnumC5681h.ANNIVERSARY;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5676c)) {
                return false;
            }
            return TextUtils.equals(this.f14206a, ((C5676c) obj).f14206a);
        }

        public int hashCode() {
            String str = this.f14206a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return "anniversary: " + this.f14206a;
        }
    }

    /* renamed from: h.b.e.b$d */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$d.class */
    public static class C5677d implements AbstractC5679f {

        /* renamed from: a */
        public final String f14207a;

        public C5677d(String str) {
            this.f14207a = str;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public EnumC5681h mo24740a() {
            return EnumC5681h.BIRTHDAY;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5677d)) {
                return false;
            }
            return TextUtils.equals(this.f14207a, ((C5677d) obj).f14207a);
        }

        public int hashCode() {
            String str = this.f14207a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return "birthday: " + this.f14207a;
        }
    }

    /* renamed from: h.b.e.b$e */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$e.class */
    public static class C5678e implements AbstractC5679f {

        /* renamed from: a */
        public final String f14208a;

        /* renamed from: b */
        public final int f14209b;

        /* renamed from: c */
        public final String f14210c;

        /* renamed from: d */
        public final boolean f14211d;

        public C5678e(String str, int i, String str2, boolean z) {
            this.f14209b = i;
            this.f14208a = str;
            this.f14210c = str2;
            this.f14211d = z;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public final EnumC5681h mo24740a() {
            return EnumC5681h.EMAIL;
        }

        /* renamed from: b */
        public String m24797b() {
            return this.f14208a;
        }

        /* renamed from: c */
        public String m24796c() {
            return this.f14210c;
        }

        /* renamed from: d */
        public int m24795d() {
            return this.f14209b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5678e)) {
                return false;
            }
            C5678e eVar = (C5678e) obj;
            if (this.f14209b != eVar.f14209b || !TextUtils.equals(this.f14208a, eVar.f14208a) || !TextUtils.equals(this.f14210c, eVar.f14210c) || this.f14211d != eVar.f14211d) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f14209b;
            String str = this.f14208a;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f14210c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return (((((i * 31) + hashCode) * 31) + i2) * 31) + (this.f14211d ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, data: %s, label: %s, isPrimary: %s", Integer.valueOf(this.f14209b), this.f14208a, this.f14210c, Boolean.valueOf(this.f14211d));
        }
    }

    /* renamed from: h.b.e.b$f */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$f.class */
    public interface AbstractC5679f {
        /* renamed from: a */
        EnumC5681h mo24740a();
    }

    /* renamed from: h.b.e.b$g */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$g.class */
    public interface AbstractC5680g {
        /* renamed from: a */
        void mo24745a();

        /* renamed from: a */
        void mo24743a(EnumC5681h hVar);

        /* renamed from: a */
        boolean mo24744a(AbstractC5679f fVar);

        /* renamed from: b */
        void mo24742b();

        /* renamed from: c */
        void mo24741c();
    }

    /* renamed from: h.b.e.b$h */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$h.class */
    public enum EnumC5681h {
        NAME,
        PHONE,
        EMAIL,
        POSTAL_ADDRESS,
        ORGANIZATION,
        IM,
        PHOTO,
        WEBSITE,
        SIP,
        NICKNAME,
        NOTE,
        BIRTHDAY,
        ANNIVERSARY,
        ANDROID_CUSTOM
    }

    /* renamed from: h.b.e.b$i */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$i.class */
    public static class C5682i implements AbstractC5679f {

        /* renamed from: a */
        public final String f14227a;

        /* renamed from: b */
        public final int f14228b;

        /* renamed from: c */
        public final String f14229c;

        /* renamed from: d */
        public final int f14230d;

        /* renamed from: e */
        public final boolean f14231e;

        public C5682i(int i, String str, String str2, int i2, boolean z) {
            this.f14228b = i;
            this.f14229c = str;
            this.f14230d = i2;
            this.f14227a = str2;
            this.f14231e = z;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public final EnumC5681h mo24740a() {
            return EnumC5681h.IM;
        }

        /* renamed from: b */
        public String m24794b() {
            return this.f14227a;
        }

        /* renamed from: c */
        public int m24793c() {
            return this.f14228b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5682i)) {
                return false;
            }
            C5682i iVar = (C5682i) obj;
            if (!(this.f14230d == iVar.f14230d && this.f14228b == iVar.f14228b && TextUtils.equals(this.f14229c, iVar.f14229c) && TextUtils.equals(this.f14227a, iVar.f14227a) && this.f14231e == iVar.f14231e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f14230d;
            int i2 = this.f14228b;
            String str = this.f14229c;
            int i3 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f14227a;
            if (str2 != null) {
                i3 = str2.hashCode();
            }
            return (((((((i * 31) + i2) * 31) + hashCode) * 31) + i3) * 31) + (this.f14231e ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s", Integer.valueOf(this.f14230d), Integer.valueOf(this.f14228b), this.f14229c, this.f14227a, Boolean.valueOf(this.f14231e));
        }
    }

    /* renamed from: h.b.e.b$j */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$j.class */
    public static class C5683j implements AbstractC5679f {

        /* renamed from: a */
        public String f14232a;

        /* renamed from: b */
        public String f14233b;

        /* renamed from: c */
        public String f14234c;

        /* renamed from: d */
        public String f14235d;

        /* renamed from: e */
        public String f14236e;

        /* renamed from: f */
        public String f14237f;

        /* renamed from: g */
        public String f14238g;

        /* renamed from: h */
        public String f14239h;

        /* renamed from: i */
        public String f14240i;

        /* renamed from: j */
        public String f14241j;

        /* renamed from: k */
        public String f14242k;

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public final EnumC5681h mo24740a() {
            return EnumC5681h.NAME;
        }

        /* renamed from: b */
        public boolean m24790b() {
            return TextUtils.isEmpty(this.f14238g) && TextUtils.isEmpty(this.f14239h) && TextUtils.isEmpty(this.f14240i);
        }

        /* renamed from: c */
        public boolean m24787c() {
            return TextUtils.isEmpty(this.f14232a) && TextUtils.isEmpty(this.f14233b) && TextUtils.isEmpty(this.f14234c) && TextUtils.isEmpty(this.f14235d) && TextUtils.isEmpty(this.f14236e);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5683j)) {
                return false;
            }
            C5683j jVar = (C5683j) obj;
            if (!TextUtils.equals(this.f14232a, jVar.f14232a) || !TextUtils.equals(this.f14234c, jVar.f14234c) || !TextUtils.equals(this.f14233b, jVar.f14233b) || !TextUtils.equals(this.f14235d, jVar.f14235d) || !TextUtils.equals(this.f14236e, jVar.f14236e) || !TextUtils.equals(this.f14237f, jVar.f14237f) || !TextUtils.equals(this.f14238g, jVar.f14238g) || !TextUtils.equals(this.f14240i, jVar.f14240i) || !TextUtils.equals(this.f14239h, jVar.f14239h) || !TextUtils.equals(this.f14241j, jVar.f14241j)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String[] strArr = {this.f14232a, this.f14234c, this.f14233b, this.f14235d, this.f14236e, this.f14237f, this.f14238g, this.f14240i, this.f14239h, this.f14241j};
            int length = strArr.length;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                String str = strArr[i2];
                i = (i * 31) + (str != null ? str.hashCode() : 0);
            }
            return i;
        }

        public String toString() {
            return String.format("family: %s, given: %s, middle: %s, prefix: %s, suffix: %s", this.f14232a, this.f14233b, this.f14234c, this.f14235d, this.f14236e);
        }
    }

    /* renamed from: h.b.e.b$k */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$k.class */
    public static class C5684k implements AbstractC5679f {

        /* renamed from: a */
        public final String f14243a;

        public C5684k(String str) {
            this.f14243a = str;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public EnumC5681h mo24740a() {
            return EnumC5681h.NICKNAME;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C5684k)) {
                return false;
            }
            return TextUtils.equals(this.f14243a, ((C5684k) obj).f14243a);
        }

        public int hashCode() {
            String str = this.f14243a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return "nickname: " + this.f14243a;
        }
    }

    /* renamed from: h.b.e.b$l */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$l.class */
    public static class C5685l implements AbstractC5679f {

        /* renamed from: a */
        public final String f14244a;

        public C5685l(String str) {
            this.f14244a = str;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public EnumC5681h mo24740a() {
            return EnumC5681h.NOTE;
        }

        /* renamed from: b */
        public String m24771b() {
            return this.f14244a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5685l)) {
                return false;
            }
            return TextUtils.equals(this.f14244a, ((C5685l) obj).f14244a);
        }

        public int hashCode() {
            String str = this.f14244a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return "note: " + this.f14244a;
        }
    }

    /* renamed from: h.b.e.b$m */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$m.class */
    public static class C5686m implements AbstractC5679f {

        /* renamed from: a */
        public String f14245a;

        /* renamed from: b */
        public String f14246b;

        /* renamed from: c */
        public String f14247c;

        /* renamed from: d */
        public final int f14248d;

        /* renamed from: e */
        public boolean f14249e;

        public C5686m(String str, String str2, String str3, String str4, int i, boolean z) {
            this.f14248d = i;
            this.f14245a = str;
            this.f14246b = str2;
            this.f14247c = str3;
            this.f14249e = z;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public final EnumC5681h mo24740a() {
            return EnumC5681h.ORGANIZATION;
        }

        /* renamed from: b */
        public String m24767b() {
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(this.f14245a)) {
                sb.append(this.f14245a);
            }
            if (!TextUtils.isEmpty(this.f14246b)) {
                if (sb.length() > 0) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
                sb.append(this.f14246b);
            }
            if (!TextUtils.isEmpty(this.f14247c)) {
                if (sb.length() > 0) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
                sb.append(this.f14247c);
            }
            return sb.toString();
        }

        /* renamed from: c */
        public String m24764c() {
            return this.f14245a;
        }

        /* renamed from: d */
        public int m24761d() {
            return this.f14248d;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5686m)) {
                return false;
            }
            C5686m mVar = (C5686m) obj;
            if (this.f14248d != mVar.f14248d || !TextUtils.equals(this.f14245a, mVar.f14245a) || !TextUtils.equals(this.f14246b, mVar.f14246b) || !TextUtils.equals(this.f14247c, mVar.f14247c) || this.f14249e != mVar.f14249e) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f14248d;
            String str = this.f14245a;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f14246b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f14247c;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.f14249e ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, organization: %s, department: %s, title: %s, isPrimary: %s", Integer.valueOf(this.f14248d), this.f14245a, this.f14246b, this.f14247c, Boolean.valueOf(this.f14249e));
        }
    }

    /* renamed from: h.b.e.b$n */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$n.class */
    public static class C5687n implements AbstractC5679f {

        /* renamed from: a */
        public final String f14250a;

        /* renamed from: b */
        public final int f14251b;

        /* renamed from: c */
        public final String f14252c;

        /* renamed from: d */
        public boolean f14253d;

        public C5687n(String str, int i, String str2, boolean z) {
            this.f14250a = str;
            this.f14251b = i;
            this.f14252c = str2;
            this.f14253d = z;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public final EnumC5681h mo24740a() {
            return EnumC5681h.PHONE;
        }

        /* renamed from: b */
        public String m24759b() {
            return this.f14252c;
        }

        /* renamed from: c */
        public String m24758c() {
            return this.f14250a;
        }

        /* renamed from: d */
        public int m24757d() {
            return this.f14251b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5687n)) {
                return false;
            }
            C5687n nVar = (C5687n) obj;
            if (this.f14251b != nVar.f14251b || !TextUtils.equals(this.f14250a, nVar.f14250a) || !TextUtils.equals(this.f14252c, nVar.f14252c) || this.f14253d != nVar.f14253d) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f14251b;
            String str = this.f14250a;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f14252c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return (((((i * 31) + hashCode) * 31) + i2) * 31) + (this.f14253d ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, data: %s, label: %s, isPrimary: %s", Integer.valueOf(this.f14251b), this.f14250a, this.f14252c, Boolean.valueOf(this.f14253d));
        }
    }

    /* renamed from: h.b.e.b$o */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$o.class */
    public static class C5688o implements AbstractC5679f {

        /* renamed from: a */
        public final String f14254a;

        /* renamed from: b */
        public final boolean f14255b;

        /* renamed from: c */
        public final byte[] f14256c;

        /* renamed from: d */
        public Integer f14257d = null;

        public C5688o(String str, byte[] bArr, boolean z) {
            this.f14254a = str;
            this.f14256c = bArr;
            this.f14255b = z;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public final EnumC5681h mo24740a() {
            return EnumC5681h.PHOTO;
        }

        /* renamed from: b */
        public byte[] m24756b() {
            return this.f14256c;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5688o)) {
                return false;
            }
            C5688o oVar = (C5688o) obj;
            if (!TextUtils.equals(this.f14254a, oVar.f14254a) || !Arrays.equals(this.f14256c, oVar.f14256c) || this.f14255b != oVar.f14255b) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            Integer num = this.f14257d;
            if (num != null) {
                return num.intValue();
            }
            String str = this.f14254a;
            int i = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            byte[] bArr = this.f14256c;
            int i2 = hashCode;
            if (bArr != null) {
                int length = bArr.length;
                while (true) {
                    i2 = hashCode;
                    if (i >= length) {
                        break;
                    }
                    hashCode += bArr[i];
                    i++;
                }
            }
            int i3 = (i2 * 31) + (this.f14255b ? 1231 : 1237);
            this.f14257d = Integer.valueOf(i3);
            return i3;
        }

        public String toString() {
            return String.format("format: %s: size: %d, isPrimary: %s", this.f14254a, Integer.valueOf(this.f14256c.length), Boolean.valueOf(this.f14255b));
        }
    }

    /* renamed from: h.b.e.b$p */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$p.class */
    public static class C5689p implements AbstractC5679f {

        /* renamed from: a */
        public final String f14258a;

        /* renamed from: b */
        public final String f14259b;

        /* renamed from: c */
        public final String f14260c;

        /* renamed from: d */
        public final String f14261d;

        /* renamed from: e */
        public final String f14262e;

        /* renamed from: f */
        public final String f14263f;

        /* renamed from: g */
        public final String f14264g;

        /* renamed from: h */
        public final int f14265h;

        /* renamed from: i */
        public final String f14266i;

        /* renamed from: j */
        public boolean f14267j;

        public C5689p(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, String str8, boolean z, int i2) {
            this.f14265h = i;
            this.f14258a = str;
            this.f14259b = str2;
            this.f14260c = str3;
            this.f14261d = str4;
            this.f14262e = str5;
            this.f14263f = str6;
            this.f14264g = str7;
            this.f14266i = str8;
            this.f14267j = z;
        }

        /* renamed from: a */
        public static C5689p m24754a(List<String> list, int i, String str, boolean z, int i2) {
            int i3;
            String[] strArr = new String[7];
            int size = list.size();
            int i4 = size;
            if (size > 7) {
                i4 = 7;
            }
            Iterator<String> it = list.iterator();
            int i5 = 0;
            do {
                i3 = i5;
                if (!it.hasNext()) {
                    break;
                }
                strArr[i5] = it.next();
                i3 = i5 + 1;
                i5 = i3;
            } while (i3 < i4);
            while (i3 < 7) {
                strArr[i3] = null;
                i3++;
            }
            return new C5689p(strArr[0], strArr[1], strArr[2], strArr[3], strArr[4], strArr[5], strArr[6], i, str, z, i2);
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public final EnumC5681h mo24740a() {
            return EnumC5681h.POSTAL_ADDRESS;
        }

        /* renamed from: a */
        public String m24755a(int i) {
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            boolean z2 = true;
            String[] strArr = {this.f14258a, this.f14259b, this.f14260c, this.f14261d, this.f14262e, this.f14263f, this.f14264g};
            if (C5672a.m24838b(i)) {
                for (int i2 = 6; i2 >= 0; i2--) {
                    String str = strArr[i2];
                    z2 = z2;
                    if (!TextUtils.isEmpty(str)) {
                        if (!z2) {
                            sb.append(' ');
                        } else {
                            z2 = false;
                        }
                        sb.append(str);
                    }
                }
            } else {
                for (int i3 = 0; i3 < 7; i3++) {
                    String str2 = strArr[i3];
                    z = z;
                    if (!TextUtils.isEmpty(str2)) {
                        if (!z) {
                            sb.append(' ');
                        } else {
                            z = false;
                        }
                        sb.append(str2);
                    }
                }
            }
            return sb.toString().trim();
        }

        /* renamed from: b */
        public String m24753b() {
            return this.f14264g;
        }

        /* renamed from: c */
        public String m24752c() {
            return this.f14259b;
        }

        /* renamed from: d */
        public String m24751d() {
            return this.f14261d;
        }

        /* renamed from: e */
        public String m24750e() {
            return this.f14258a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5689p)) {
                return false;
            }
            C5689p pVar = (C5689p) obj;
            int i = this.f14265h;
            if (i != pVar.f14265h || ((i == 0 && !TextUtils.equals(this.f14266i, pVar.f14266i)) || this.f14267j != pVar.f14267j || !TextUtils.equals(this.f14258a, pVar.f14258a) || !TextUtils.equals(this.f14259b, pVar.f14259b) || !TextUtils.equals(this.f14260c, pVar.f14260c) || !TextUtils.equals(this.f14261d, pVar.f14261d) || !TextUtils.equals(this.f14262e, pVar.f14262e) || !TextUtils.equals(this.f14263f, pVar.f14263f) || !TextUtils.equals(this.f14264g, pVar.f14264g))) {
                z = false;
            }
            return z;
        }

        /* renamed from: f */
        public String m24749f() {
            return this.f14263f;
        }

        /* renamed from: g */
        public String m24748g() {
            return this.f14262e;
        }

        /* renamed from: h */
        public String m24747h() {
            return this.f14260c;
        }

        public int hashCode() {
            int i = this.f14265h;
            String str = this.f14266i;
            int hashCode = str != null ? str.hashCode() : 0;
            int i2 = this.f14267j ? 1231 : 1237;
            String[] strArr = {this.f14258a, this.f14259b, this.f14260c, this.f14261d, this.f14262e, this.f14263f, this.f14264g};
            int length = strArr.length;
            int i3 = (((i * 31) + hashCode) * 31) + i2;
            for (int i4 = 0; i4 < length; i4++) {
                String str2 = strArr[i4];
                i3 = (i3 * 31) + (str2 != null ? str2.hashCode() : 0);
            }
            return i3;
        }

        /* renamed from: i */
        public int m24746i() {
            return this.f14265h;
        }

        public String toString() {
            return String.format("type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s", Integer.valueOf(this.f14265h), this.f14266i, Boolean.valueOf(this.f14267j), this.f14258a, this.f14259b, this.f14260c, this.f14261d, this.f14262e, this.f14263f, this.f14264g);
        }
    }

    /* renamed from: h.b.e.b$q */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$q.class */
    public static class C5690q implements AbstractC5679f {

        /* renamed from: a */
        public final String f14268a;

        /* renamed from: b */
        public final int f14269b;

        /* renamed from: c */
        public final String f14270c;

        /* renamed from: d */
        public final boolean f14271d;

        public C5690q(String str, int i, String str2, boolean z) {
            if (str.startsWith("sip:")) {
                this.f14268a = str.substring(4);
            } else {
                this.f14268a = str;
            }
            this.f14269b = i;
            this.f14270c = str2;
            this.f14271d = z;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public EnumC5681h mo24740a() {
            return EnumC5681h.SIP;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5690q)) {
                return false;
            }
            C5690q qVar = (C5690q) obj;
            if (this.f14269b != qVar.f14269b || !TextUtils.equals(this.f14270c, qVar.f14270c) || !TextUtils.equals(this.f14268a, qVar.f14268a) || this.f14271d != qVar.f14271d) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f14269b;
            String str = this.f14270c;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f14268a;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return (((((i * 31) + hashCode) * 31) + i2) * 31) + (this.f14271d ? 1231 : 1237);
        }

        public String toString() {
            return "sip: " + this.f14268a;
        }
    }

    /* renamed from: h.b.e.b$r */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$r.class */
    public class C5691r implements AbstractC5680g {

        /* renamed from: a */
        public StringBuilder f14272a;

        /* renamed from: b */
        public boolean f14273b;

        public C5691r() {
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5680g
        /* renamed from: a */
        public void mo24745a() {
            this.f14272a.append("\n");
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5680g
        /* renamed from: a */
        public void mo24743a(EnumC5681h hVar) {
            StringBuilder sb = this.f14272a;
            sb.append(hVar.toString() + ": ");
            this.f14273b = true;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5680g
        /* renamed from: a */
        public boolean mo24744a(AbstractC5679f fVar) {
            if (!this.f14273b) {
                this.f14272a.append(UserProfile.CARD_CATE_SEPARATOR);
                this.f14273b = false;
            }
            StringBuilder sb = this.f14272a;
            sb.append("[");
            sb.append(fVar.toString());
            sb.append("]");
            return true;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5680g
        /* renamed from: b */
        public void mo24742b() {
            this.f14272a.append("]]\n");
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5680g
        /* renamed from: c */
        public void mo24741c() {
            this.f14272a = new StringBuilder();
            StringBuilder sb = this.f14272a;
            sb.append("[[hash: " + C5673b.this.hashCode() + "\n");
        }

        public String toString() {
            return this.f14272a.toString();
        }
    }

    /* renamed from: h.b.e.b$s */
    /* loaded from: classes-dex2jar.jar:h/b/e/b$s.class */
    public static class C5692s implements AbstractC5679f {

        /* renamed from: a */
        public final String f14275a;

        public C5692s(String str) {
            this.f14275a = str;
        }

        @Override // p081h.p093b.p113e.C5673b.AbstractC5679f
        /* renamed from: a */
        public EnumC5681h mo24740a() {
            return EnumC5681h.WEBSITE;
        }

        /* renamed from: b */
        public String m24739b() {
            return this.f14275a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5692s)) {
                return false;
            }
            return TextUtils.equals(this.f14275a, ((C5692s) obj).f14275a);
        }

        public int hashCode() {
            String str = this.f14275a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return "website: " + this.f14275a;
        }
    }

    static {
        f14185r.put("X-AIM", 0);
        f14185r.put("X-MSN", 1);
        f14185r.put("X-YAHOO", 2);
        f14185r.put("X-ICQ", 6);
        f14185r.put("X-JABBER", 7);
        f14185r.put("X-SKYPE-USERNAME", 3);
        f14185r.put("X-GOOGLE-TALK", 5);
        f14185r.put("X-GOOGLE TALK", 5);
    }

    public C5673b(int i, Account account) {
        this.f14202p = i;
    }

    /* renamed from: a */
    public final String m24818a(Map<String, Collection<String>> map) {
        Collection<String> collection = map.get("SORT-AS");
        if (collection == null || collection.size() == 0) {
            return null;
        }
        if (collection.size() > 1) {
            String str = "Incorrect multiple SORT_AS parameters detected: " + Arrays.toString(collection.toArray());
        }
        List<String> a = C5704m.m24673a(collection.iterator().next(), this.f14202p);
        StringBuilder sb = new StringBuilder();
        for (String str2 : a) {
            sb.append(str2);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public void m24833a() {
        this.f14187a.f14242k = m24817b();
    }

    /* renamed from: a */
    public final void m24832a(int i, String str, String str2, int i2, boolean z) {
        if (this.f14192f == null) {
            this.f14192f = new ArrayList();
        }
        this.f14192f.add(new C5682i(i, str, str2, i2, z));
    }

    /* renamed from: a */
    public final void m24831a(int i, String str, String str2, boolean z) {
        if (this.f14189c == null) {
            this.f14189c = new ArrayList();
        }
        this.f14189c.add(new C5678e(str, i, str2, z));
    }

    /* renamed from: a */
    public final void m24830a(int i, List<String> list, String str, boolean z) {
        if (this.f14190d == null) {
            this.f14190d = new ArrayList(0);
        }
        this.f14190d.add(C5689p.m24754a(list, i, str, z, this.f14202p));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24829a(int r9, java.util.List<java.lang.String> r10, java.util.Map<java.lang.String, java.util.Collection<java.lang.String>> r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p093b.p113e.C5673b.m24829a(int, java.util.List, java.util.Map, boolean):void");
    }

    /* renamed from: a */
    public final void m24828a(AbstractC5680g gVar) {
        gVar.mo24741c();
        gVar.mo24743a(this.f14187a.mo24740a());
        gVar.mo24744a(this.f14187a);
        gVar.mo24745a();
        m24820a(this.f14188b, gVar);
        m24820a(this.f14189c, gVar);
        m24820a(this.f14190d, gVar);
        m24820a(this.f14191e, gVar);
        m24820a(this.f14192f, gVar);
        m24820a(this.f14193g, gVar);
        m24820a(this.f14194h, gVar);
        m24820a(this.f14195i, gVar);
        m24820a(this.f14196j, gVar);
        m24820a(this.f14197k, gVar);
        m24820a(this.f14198l, gVar);
        C5677d dVar = this.f14199m;
        if (dVar != null) {
            gVar.mo24743a(dVar.mo24740a());
            gVar.mo24744a(this.f14199m);
            gVar.mo24745a();
        }
        C5676c cVar = this.f14200n;
        if (cVar != null) {
            gVar.mo24743a(cVar.mo24740a());
            gVar.mo24744a(this.f14200n);
            gVar.mo24745a();
        }
        gVar.mo24742b();
    }

    /* renamed from: a */
    public void m24827a(C5673b bVar) {
        if (this.f14203q == null) {
            this.f14203q = new ArrayList();
        }
        this.f14203q.add(bVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x041a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo8716a(p081h.p093b.p113e.C5702k r8) {
        /*
            Method dump skipped, instructions count: 1878
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p093b.p113e.C5673b.mo8716a(h.b.e.k):void");
    }

    /* renamed from: a */
    public final void m24826a(String str) {
        if (this.f14196j == null) {
            this.f14196j = new ArrayList();
        }
        this.f14196j.add(new C5684k(str));
    }

    /* renamed from: a */
    public final void m24825a(String str, int i, String str2, boolean z) {
        if (this.f14195i == null) {
            this.f14195i = new ArrayList();
        }
        this.f14195i.add(new C5690q(str, i, str2, z));
    }

    /* renamed from: a */
    public final void m24824a(String str, String str2, String str3, String str4, int i, boolean z) {
        if (this.f14191e == null) {
            this.f14191e = new ArrayList();
        }
        this.f14191e.add(new C5686m(str, str2, str3, str4, i, z));
    }

    /* renamed from: a */
    public final void m24823a(String str, Collection<String> collection) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = str;
            if (str.startsWith("sip:")) {
                String substring = str.substring(4);
                str2 = substring;
                if (substring.length() == 0) {
                    return;
                }
            }
            String str3 = null;
            str3 = null;
            boolean z = false;
            int i = -1;
            if (collection != null) {
                z = false;
                i = -1;
                for (String str4 : collection) {
                    String upperCase = str4.toUpperCase();
                    if (upperCase.equals("PREF")) {
                        z = true;
                    } else if (upperCase.equals("HOME")) {
                        i = 1;
                    } else if (upperCase.equals("WORK")) {
                        i = 2;
                    } else if (i < 0) {
                        str3 = upperCase.startsWith("X-") ? str4.substring(2) : str4;
                        i = 0;
                    }
                }
            }
            int i2 = i;
            if (i < 0) {
                i2 = 3;
            }
            m24825a(str2, i2, str3, z);
        }
    }

    /* renamed from: a */
    public final void m24822a(String str, byte[] bArr, boolean z) {
        if (this.f14193g == null) {
            this.f14193g = new ArrayList(1);
        }
        this.f14193g.add(new C5688o(str, bArr, z));
    }

    /* renamed from: a */
    public final void m24821a(List<String> list) {
        if (this.f14198l == null) {
            this.f14198l = new ArrayList();
        }
        this.f14198l.add(C5675b.m24800a(list));
    }

    /* renamed from: a */
    public final void m24820a(List<? extends AbstractC5679f> list, AbstractC5680g gVar) {
        if (list != null && list.size() > 0) {
            gVar.mo24743a(((AbstractC5679f) list.get(0)).mo24740a());
            for (AbstractC5679f fVar : list) {
                gVar.mo24744a(fVar);
            }
            gVar.mo24745a();
        }
    }

    /* renamed from: a */
    public final void m24819a(List<String> list, Map<String, Collection<String>> map) {
        int size;
        m24813b(map);
        if (list != null && (size = list.size()) >= 1) {
            int i = size;
            if (size > 5) {
                i = 5;
            }
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            this.f14187a.f14236e = list.get(4);
                        }
                        this.f14187a.f14232a = list.get(0);
                    }
                    this.f14187a.f14235d = list.get(3);
                }
                this.f14187a.f14234c = list.get(2);
            }
            this.f14187a.f14233b = list.get(1);
            this.f14187a.f14232a = list.get(0);
        }
    }

    /* renamed from: b */
    public final String m24817b() {
        String str;
        if (!TextUtils.isEmpty(this.f14187a.f14237f)) {
            str = this.f14187a.f14237f;
        } else if (!this.f14187a.m24787c()) {
            str = C5704m.m24675a(this.f14202p, this.f14187a.f14232a, this.f14187a.f14234c, this.f14187a.f14233b, this.f14187a.f14235d, this.f14187a.f14236e);
        } else if (!this.f14187a.m24790b()) {
            str = C5704m.m24676a(this.f14202p, this.f14187a.f14238g, this.f14187a.f14240i, this.f14187a.f14239h);
        } else {
            List<C5678e> list = this.f14189c;
            if (list == null || list.size() <= 0) {
                List<C5687n> list2 = this.f14188b;
                if (list2 == null || list2.size() <= 0) {
                    List<C5689p> list3 = this.f14190d;
                    if (list3 == null || list3.size() <= 0) {
                        List<C5686m> list4 = this.f14191e;
                        str = (list4 == null || list4.size() <= 0) ? null : this.f14191e.get(0).m24767b();
                    } else {
                        str = this.f14190d.get(0).m24755a(this.f14202p);
                    }
                } else {
                    str = this.f14188b.get(0).f14250a;
                }
            } else {
                str = this.f14189c.get(0).f14208a;
            }
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: b */
    public final void m24816b(int i, String str, String str2, boolean z) {
        if (this.f14188b == null) {
            this.f14188b = new ArrayList();
        }
        StringBuilder sb = new StringBuilder();
        String trim = str.trim();
        String str3 = trim;
        if (i != 6) {
            if (C5672a.m24834f(this.f14202p)) {
                str3 = trim;
            } else {
                int length = trim.length();
                boolean z2 = false;
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = trim.charAt(i2);
                    if (charAt == 'p' || charAt == 'P') {
                        sb.append(',');
                    } else if (charAt == 'w' || charAt == 'W') {
                        sb.append(';');
                    } else {
                        if ('0' > charAt || charAt > '9') {
                            z2 = z2;
                            if (i2 == 0) {
                                z2 = z2;
                                if (charAt != '+') {
                                }
                            }
                        }
                        sb.append(charAt);
                        z2 = z2;
                    }
                    z2 = true;
                }
                str3 = !z2 ? C5704m.C5706b.m24666a(sb.toString(), C5704m.m24677a(this.f14202p)) : sb.toString();
            }
        }
        this.f14188b.add(new C5687n(str3, i, str2, z));
    }

    /* renamed from: b */
    public final void m24815b(String str) {
        if (this.f14197k == null) {
            this.f14197k = new ArrayList(1);
        }
        this.f14197k.add(new C5685l(str));
    }

    /* renamed from: b */
    public final void m24814b(List<String> list) {
        int size;
        boolean z;
        if (TextUtils.isEmpty(this.f14187a.f14238g) && TextUtils.isEmpty(this.f14187a.f14240i) && TextUtils.isEmpty(this.f14187a.f14239h) && list != null && (size = list.size()) >= 1) {
            int i = size;
            if (size > 3) {
                i = 3;
            }
            if (list.get(0).length() > 0) {
                int i2 = 1;
                while (true) {
                    if (i2 >= i) {
                        z = true;
                        break;
                    } else if (list.get(i2).length() > 0) {
                        z = false;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z) {
                    String[] split = list.get(0).split(" ");
                    int length = split.length;
                    if (length == 3) {
                        this.f14187a.f14238g = split[0];
                        this.f14187a.f14240i = split[1];
                        this.f14187a.f14239h = split[2];
                        return;
                    } else if (length == 2) {
                        this.f14187a.f14238g = split[0];
                        this.f14187a.f14239h = split[1];
                        return;
                    } else {
                        this.f14187a.f14239h = list.get(0);
                        return;
                    }
                }
            }
            if (i != 2) {
                if (i == 3) {
                    this.f14187a.f14240i = list.get(2);
                }
                this.f14187a.f14238g = list.get(0);
            }
            this.f14187a.f14239h = list.get(1);
            this.f14187a.f14238g = list.get(0);
        }
    }

    /* renamed from: b */
    public final void m24813b(Map<String, Collection<String>> map) {
        Collection<String> collection;
        if ((!C5672a.m24836d(this.f14202p) || (TextUtils.isEmpty(this.f14187a.f14238g) && TextUtils.isEmpty(this.f14187a.f14240i) && TextUtils.isEmpty(this.f14187a.f14239h))) && (collection = map.get("SORT-AS")) != null && collection.size() != 0) {
            if (collection.size() > 1) {
                String str = "Incorrect multiple SORT_AS parameters detected: " + Arrays.toString(collection.toArray());
            }
            List<String> a = C5704m.m24673a(collection.iterator().next(), this.f14202p);
            int size = a.size();
            int i = size;
            if (size > 3) {
                i = 3;
            }
            if (i != 2) {
                if (i == 3) {
                    this.f14187a.f14240i = a.get(2);
                }
                this.f14187a.f14238g = a.get(0);
            }
            this.f14187a.f14239h = a.get(1);
            this.f14187a.f14238g = a.get(0);
        }
    }

    /* renamed from: c */
    public final String m24812c() {
        C5677d dVar = this.f14199m;
        return dVar != null ? dVar.f14207a : null;
    }

    /* renamed from: c */
    public final String m24810c(List<String> list) {
        int size = list.size();
        if (size <= 1) {
            return size == 1 ? list.get(0) : "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            sb.append(str);
            if (size - 1 > 0) {
                sb.append(ExtraHints.KEYWORD_SEPARATOR);
            }
        }
        return sb.toString();
    }

    /* renamed from: c */
    public final void m24811c(String str) {
        List<C5686m> list = this.f14191e;
        if (list == null) {
            m24824a(null, null, str, null, 1, false);
            return;
        }
        for (C5686m mVar : list) {
            if (mVar.f14247c == null) {
                mVar.f14247c = str;
                return;
            }
        }
        m24824a(null, null, str, null, 1, false);
    }

    /* renamed from: d */
    public String m24809d() {
        C5683j jVar = this.f14187a;
        if (jVar.f14242k == null) {
            jVar.f14242k = m24817b();
        }
        return this.f14187a.f14242k;
    }

    /* renamed from: e */
    public final List<C5678e> m24808e() {
        return this.f14189c;
    }

    /* renamed from: f */
    public final List<C5682i> m24807f() {
        return this.f14192f;
    }

    /* renamed from: g */
    public final List<C5685l> m24806g() {
        return this.f14197k;
    }

    /* renamed from: h */
    public final List<C5686m> m24805h() {
        return this.f14191e;
    }

    /* renamed from: i */
    public final List<C5687n> m24804i() {
        return this.f14188b;
    }

    /* renamed from: j */
    public final List<C5688o> m24803j() {
        return this.f14193g;
    }

    /* renamed from: k */
    public final List<C5689p> m24802k() {
        return this.f14190d;
    }

    /* renamed from: l */
    public final List<C5692s> m24801l() {
        return this.f14194h;
    }

    public String toString() {
        C5691r rVar = new C5691r();
        m24828a(rVar);
        return rVar.toString();
    }
}
