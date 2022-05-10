package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
/* renamed from: c.d.h.h1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/h1.class */
public final class C6321h1 {

    /* renamed from: c.d.h.h1$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/h1$a.class */
    public static final class C6322a implements AbstractC6323b {

        /* renamed from: a */
        public final /* synthetic */ ByteString f19932a;

        public C6322a(ByteString byteString) {
            this.f19932a = byteString;
        }

        @Override // p131c.p161d.p367h.C6321h1.AbstractC6323b
        /* renamed from: a */
        public byte mo21472a(int i) {
            return this.f19932a.byteAt(i);
        }

        @Override // p131c.p161d.p367h.C6321h1.AbstractC6323b
        public int size() {
            return this.f19932a.size();
        }
    }

    /* renamed from: c.d.h.h1$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/h1$b.class */
    public interface AbstractC6323b {
        /* renamed from: a */
        byte mo21472a(int i);

        int size();
    }

    /* renamed from: a */
    public static String m21475a(AbstractC6323b bVar) {
        StringBuilder sb = new StringBuilder(bVar.size());
        for (int i = 0; i < bVar.size(); i++) {
            byte a = bVar.mo21472a(i);
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
    public static String m21474a(ByteString byteString) {
        return m21475a(new C6322a(byteString));
    }

    /* renamed from: a */
    public static String m21473a(String str) {
        return m21474a(ByteString.copyFromUtf8(str));
    }
}
