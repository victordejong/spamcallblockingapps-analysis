package p193e.p194a.p372b0.p417k;

import com.tenor.android.core.constant.StringConstant;
import java.util.Calendar;
import java.util.TimeZone;
/* renamed from: e.a.b0.k.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/k/b.class */
public class C8492b extends Calendar {

    /* renamed from: a */
    public static int[] f26261a = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    /* renamed from: b */
    public static int[] f26262b = {31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29};

    /* renamed from: e.a.b0.k.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/k/b$a.class */
    public static class C8493a {

        /* renamed from: a */
        public int f26263a;

        /* renamed from: b */
        public int f26264b;

        /* renamed from: c */
        public int f26265c;

        public C8493a(int i, int i2, int i3) {
            this.f26263a = i;
            this.f26264b = i2;
            this.f26265c = i3;
        }

        /* renamed from: a */
        public String m28449a() {
            switch (this.f26264b) {
                case 0:
                    return "فروردين";
                case 1:
                    return "ارديبهشت";
                case 2:
                    return "خرداد";
                case 3:
                    return "تير";
                case 4:
                    return "مرداد";
                case 5:
                    return "شهريور";
                case 6:
                    return "مهر";
                case 7:
                    return "آبان";
                case 8:
                    return "آذر";
                case 9:
                    return "دی";
                case 10:
                    return "بهمن";
                case 11:
                    return "اسفند";
                default:
                    return "";
            }
        }

        public String toString() {
            return this.f26263a + StringConstant.SLASH + this.f26264b + StringConstant.SLASH + this.f26265c;
        }
    }

    static {
        TimeZone.getDefault();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x009f, code lost:
        if ((r0 % 400) == 0) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p194a.p372b0.p417k.C8492b.C8493a m28450a(p193e.p194a.p372b0.p417k.C8492b.C8493a r7) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p417k.C8492b.m28450a(e.a.b0.k.b$a):e.a.b0.k.b$a");
    }
}
