package p060e.p061a.p064c;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: e.a.c.b */
/* loaded from: classes-dex2jar.jar:e/a/c/b.class */
public class C4231b {

    /* renamed from: a */
    public int f10281a;

    /* renamed from: b */
    public int f10282b;

    /* renamed from: c */
    public InputStream f10283c;

    /* renamed from: a */
    public static void m29247a(short[] sArr) {
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = (short) 1024;
        }
    }

    /* renamed from: a */
    public final int m29249a(int i) throws IOException {
        int i2 = 0;
        while (i != 0) {
            this.f10281a >>>= 1;
            int i3 = this.f10282b;
            int i4 = this.f10281a;
            int i5 = (i3 - i4) >>> 31;
            this.f10282b = i3 - ((i5 - 1) & i4);
            i2 = (i2 << 1) | (1 - i5);
            if (((-16777216) & i4) == 0) {
                this.f10282b = (this.f10282b << 8) | this.f10283c.read();
                this.f10281a <<= 8;
            }
            i--;
        }
        return i2;
    }

    /* renamed from: a */
    public int m29246a(short[] sArr, int i) throws IOException {
        short s = sArr[i];
        int i2 = this.f10281a;
        int i3 = (i2 >>> 11) * s;
        int i4 = this.f10282b;
        if ((i4 ^ Integer.MIN_VALUE) < (Integer.MIN_VALUE ^ i3)) {
            this.f10281a = i3;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
            if ((this.f10281a & (-16777216)) != 0) {
                return 0;
            }
            this.f10282b = (i4 << 8) | this.f10283c.read();
            this.f10281a <<= 8;
            return 0;
        }
        this.f10281a = i2 - i3;
        this.f10282b = i4 - i3;
        sArr[i] = (short) (s - (s >>> 5));
        if ((this.f10281a & (-16777216)) != 0) {
            return 1;
        }
        this.f10282b = (this.f10282b << 8) | this.f10283c.read();
        this.f10281a <<= 8;
        return 1;
    }

    /* renamed from: a */
    public final void m29250a() {
        this.f10283c = null;
    }

    /* renamed from: a */
    public final void m29248a(InputStream inputStream) {
        this.f10283c = inputStream;
    }

    /* renamed from: b */
    public final void m29245b() throws IOException {
        this.f10282b = 0;
        this.f10281a = -1;
        for (int i = 0; i < 5; i++) {
            this.f10282b = (this.f10282b << 8) | this.f10283c.read();
        }
    }
}
