package p012b.p076s.p078b.p079a.p096u0;

import androidx.media2.exoplayer.external.Format;
import p012b.p076s.p078b.p079a.p096u0.p097f.C1521a;
import p012b.p076s.p078b.p079a.p096u0.p098g.C1522a;
import p012b.p076s.p078b.p079a.p096u0.p099h.C1524b;
import p012b.p076s.p078b.p079a.p096u0.p100i.C1527a;
/* renamed from: b.s.b.a.u0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/u0/b.class */
public interface AbstractC1516b {

    /* renamed from: b.s.b.a.u0.b$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/u0/b$a.class */
    public class C1517a implements AbstractC1516b {
        @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1516b
        /* renamed from: a */
        public boolean mo32137a(Format format) {
            String str = format.f1562i;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1516b
        /* renamed from: b */
        public AbstractC1515a mo32136b(Format format) {
            char c;
            String str = format.f1562i;
            switch (str.hashCode()) {
                case -1348231605:
                    if (str.equals("application/x-icy")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1248341703:
                    if (str.equals("application/id3")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1154383568:
                    if (str.equals("application/x-emsg")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1652648887:
                    if (str.equals("application/x-scte35")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c == 0) {
                return new C1524b();
            }
            if (c == 1) {
                return new C1521a();
            }
            if (c == 2) {
                return new C1527a();
            }
            if (c == 3) {
                return new C1522a();
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
        }
    }

    static {
        new C1517a();
    }

    /* renamed from: a */
    boolean mo32137a(Format format);

    /* renamed from: b */
    AbstractC1515a mo32136b(Format format);
}
