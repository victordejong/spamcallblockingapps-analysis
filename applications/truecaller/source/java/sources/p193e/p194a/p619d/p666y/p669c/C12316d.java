package p193e.p194a.p619d.p666y.p669c;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.d.y.c.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/d.class */
public final class C12316d implements AbstractC12319f {

    /* renamed from: a */
    public final Context f35965a;

    /* renamed from: b */
    public final AbstractC11421j1 f35966b;

    @e(c = "com.truecaller.voip.notification.missed.MissedVoipCallsModel", f = "MissedVoipCallsModel.kt", l = {32, 42}, m = "getMissedCalls")
    /* renamed from: e.a.d.y.c.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/y/c/d$a.class */
    public static final class C12317a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35967d;

        /* renamed from: e */
        public int f35968e;

        /* renamed from: g */
        public Object f35970g;

        /* renamed from: h */
        public Object f35971h;

        /* renamed from: i */
        public Object f35972i;

        /* renamed from: j */
        public Object f35973j;

        /* renamed from: k */
        public Object f35974k;

        /* renamed from: l */
        public Object f35975l;

        /* renamed from: m */
        public Object f35976m;

        /* renamed from: n */
        public Object f35977n;

        /* renamed from: o */
        public Object f35978o;

        /* renamed from: p */
        public Object f35979p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12317a(d dVar) {
            super(dVar);
            C12316d.this = r4;
        }

        /* renamed from: s */
        public final Object m23274s(Object obj) {
            this.f35967d = obj;
            this.f35968e |= Integer.MIN_VALUE;
            return C12316d.this.m23275a(this);
        }
    }

    @Inject
    public C12316d(Context context, AbstractC11421j1 abstractC11421j1) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC11421j1, "support");
        this.f35965a = context;
        this.f35966b = abstractC11421j1;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(2:4|(9:6|8|152|(2:10|(2:12|(35:14|15|16|93|94|(6:96|97|98|99|100|101)|102|103|104|105|106|107|108|109|110|(19:116|118|(1:120)(1:121)|122|123|(2:125|126)(1:127)|128|(1:130)(2:131|132)|133|134|135|136|137|138|139|140|34|35|(53:37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|(2:90|91)(14:92|93|94|(0)|102|103|104|105|106|107|108|109|110|(21:112|113|116|118|(0)(0)|122|123|(0)(0)|128|(0)(0)|133|134|135|136|137|138|139|140|34|35|(8:141|142|143|144|(3:146|150|151)|149|150|151)(0))))(0))|117|118|(0)(0)|122|123|(0)(0)|128|(0)(0)|133|134|135|136|137|138|139|140|34|35|(0)(0))(2:17|18))(2:19|20))(4:21|22|23|(2:25|26)(1:27))|28|(7:30|31|32|33|34|35|(0)(0))|149|150|151))|7|8|152|(0)(0)|28|(0)|149|150|151) */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x039f, code lost:
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x03a0, code lost:
        com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r12);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0126 A[Catch: SQLException -> 0x039f, TRY_ENTER, TRY_LEAVE, TryCatch #2 {SQLException -> 0x039f, blocks: (B:20:0x00cd, B:22:0x00da, B:28:0x011c, B:30:0x0126, B:144:0x0382, B:146:0x038b, B:15:0x00a8, B:32:0x0133, B:35:0x0151, B:39:0x015e, B:41:0x0168, B:43:0x0170, B:45:0x0178, B:47:0x0181, B:49:0x0189, B:51:0x0191, B:53:0x019a, B:55:0x01a2, B:57:0x01aa, B:59:0x01b3, B:61:0x01bd, B:63:0x01c6, B:65:0x01ce, B:67:0x01d8, B:69:0x01e2, B:71:0x01ec, B:73:0x01f6, B:75:0x0200, B:77:0x020a, B:79:0x0214, B:81:0x021e, B:83:0x0228, B:85:0x0232, B:87:0x023b, B:94:0x026a, B:97:0x0278, B:99:0x0284, B:101:0x0290, B:104:0x029c, B:106:0x02a5, B:108:0x02ac, B:110:0x02be, B:113:0x02d8, B:123:0x02f9, B:132:0x0318, B:135:0x0321, B:137:0x0328, B:139:0x035f, B:142:0x037a), top: B:152:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0276  */
    /* JADX WARN: Type inference failed for: r0v189, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v195, types: [java.io.Closeable] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x0253 -> B:93:0x0268). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m23275a(s1.w.d<? super java.util.List<p193e.p194a.p619d.p666y.p669c.C12318e>> r12) {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p666y.p669c.C12316d.m23275a(s1.w.d):java.lang.Object");
    }
}
