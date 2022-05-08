package p081h.p203i.p401g;
/* renamed from: h.i.g.a1 */
/* loaded from: classes2-dex2jar.jar:h/i/g/a1.class */
public final class C10224a1 {

    /* renamed from: h.i.g.a1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/a1$a.class */
    public static final class C10225a implements AbstractC10227c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10253g f23056a;

        public C10225a(AbstractC10253g gVar) {
            this.f23056a = gVar;
        }

        @Override // p081h.p203i.p401g.C10224a1.AbstractC10227c
        /* renamed from: a */
        public byte mo13063a(int i) {
            return this.f23056a.mo12950g(i);
        }

        @Override // p081h.p203i.p401g.C10224a1.AbstractC10227c
        public int size() {
            return this.f23056a.size();
        }
    }

    /* renamed from: h.i.g.a1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/a1$b.class */
    public static final class C10226b implements AbstractC10227c {

        /* renamed from: a */
        public final /* synthetic */ byte[] f23057a;

        public C10226b(byte[] bArr) {
            this.f23057a = bArr;
        }

        @Override // p081h.p203i.p401g.C10224a1.AbstractC10227c
        /* renamed from: a */
        public byte mo13063a(int i) {
            return this.f23057a[i];
        }

        @Override // p081h.p203i.p401g.C10224a1.AbstractC10227c
        public int size() {
            return this.f23057a.length;
        }
    }

    /* renamed from: h.i.g.a1$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/a1$c.class */
    public interface AbstractC10227c {
        /* renamed from: a */
        byte mo13063a(int i);

        int size();
    }

    /* renamed from: a */
    public static String m13068a(AbstractC10227c cVar) {
        StringBuilder sb = new StringBuilder(cVar.size());
        for (int i = 0; i < cVar.size(); i++) {
            byte a = cVar.mo13063a(i);
            if (a == 34) {
                sb.append("\\\"");
            } else if (a == 39) {
                sb.append("\\'");
            } else if (a != 92) {
                switch (a) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (a < 32 || a > 126) {
                            sb.append('\\');
                            sb.append((char) (((a >>> 6) & 3) + 48));
                            sb.append((char) (((a >>> 3) & 7) + 48));
                            sb.append((char) ((a & 7) + 48));
                            break;
                        } else {
                            sb.append((char) a);
                            continue;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m13067a(AbstractC10253g gVar) {
        return m13068a(new C10225a(gVar));
    }

    /* renamed from: a */
    public static String m13066a(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    /* renamed from: a */
    public static String m13065a(byte[] bArr) {
        return m13068a(new C10226b(bArr));
    }

    /* renamed from: b */
    public static String m13064b(String str) {
        return m13067a(AbstractC10253g.m12975a(str));
    }
}
