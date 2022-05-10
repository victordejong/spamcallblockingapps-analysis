package p131c.p431l.p432a.p461i.p462e;
/* renamed from: c.l.a.i.e.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/i/e/b.class */
public class C6827b {

    /* renamed from: a */
    public String f21006a;

    /* renamed from: b */
    public String f21007b;

    /* renamed from: c */
    public int f21008c;

    /* renamed from: d */
    public int f21009d;

    /* renamed from: e */
    public long f21010e;

    /* renamed from: f */
    public int f21011f;

    /* renamed from: g */
    public int f21012g;

    /* renamed from: h */
    public String f21013h;

    /* renamed from: i */
    public int f21014i;

    /* renamed from: j */
    public int f21015j;

    /* renamed from: k */
    public int f21016k;

    public C6827b(int i, String str, String str2, int i2, int i3, String str3) {
        this.f21010e = 0L;
        this.f21016k = i;
        this.f21006a = str;
        this.f21007b = str2;
        this.f21011f = i2;
        this.f21013h = str3;
        this.f21015j = i3;
    }

    public C6827b(int i, String str, String str2, long j, int i2, int i3, int i4, int i5) {
        this.f21010e = 0L;
        this.f21016k = i;
        this.f21006a = str;
        this.f21007b = str2;
        this.f21010e = j;
        this.f21008c = i2;
        this.f21012g = i3;
        this.f21009d = i4;
        this.f21014i = i5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6827b.class != obj.getClass()) {
            return false;
        }
        C6827b bVar = (C6827b) obj;
        String str = this.f21007b;
        return str == null ? bVar.f21007b == null : str.equals(bVar.f21007b);
    }

    public int hashCode() {
        String str = this.f21007b;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "name:" + this.f21006a + ",phone:" + this.f21007b + ", callOrSms:" + this.f21014i;
    }
}
