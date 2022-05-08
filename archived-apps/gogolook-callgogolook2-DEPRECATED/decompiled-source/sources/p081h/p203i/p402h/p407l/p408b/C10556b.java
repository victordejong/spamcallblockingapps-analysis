package p081h.p203i.p402h.p407l.p408b;
/* renamed from: h.i.h.l.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/b.class */
public final class C10556b implements AbstractC10561g {
    /* renamed from: a */
    public static char m11415a(char c, int i) {
        int i2 = c + ((i * 149) % 255) + 1;
        return i2 <= 255 ? (char) i2 : (char) (i2 - 256);
    }

    /* renamed from: a */
    public int m11416a() {
        return 5;
    }

    @Override // p081h.p203i.p402h.p407l.p408b.AbstractC10561g
    /* renamed from: a */
    public void mo11346a(C10562h hVar) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!hVar.m11382i()) {
                break;
            }
            sb.append(hVar.m11389c());
            hVar.f24041f++;
            if (C10564j.m11372a(hVar.m11387d(), hVar.f24041f, m11416a()) != m11416a()) {
                hVar.m11390b(0);
                break;
            }
        }
        int length = sb.length() - 1;
        int a = hVar.m11397a() + length + 1;
        hVar.m11388c(a);
        boolean z = hVar.m11384g().m11360a() - a > 0;
        if (hVar.m11382i() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else if (length <= 1555) {
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            } else {
                throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            hVar.m11396a(m11415a(sb.charAt(i), hVar.m11397a() + 1));
        }
    }
}
