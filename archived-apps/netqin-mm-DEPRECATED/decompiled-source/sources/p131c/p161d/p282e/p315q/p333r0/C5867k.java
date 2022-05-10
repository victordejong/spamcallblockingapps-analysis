package p131c.p161d.p282e.p315q.p333r0;

import android.text.TextUtils;
import com.google.firebase.inappmessaging.MessagesProto$Content;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p282e.p315q.C5483b0;
import p131c.p161d.p282e.p315q.C5488d0;
import p131c.p161d.p282e.p315q.C5494f0;
import p131c.p161d.p282e.p315q.C5503i0;
import p131c.p161d.p282e.p315q.C5508k0;
import p131c.p161d.p282e.p315q.C5514m0;
import p131c.p161d.p282e.p315q.C5885z;
import p131c.p161d.p282e.p315q.p328q0.C5694l2;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p282e.p315q.p333r0.C5848c;
import p131c.p161d.p282e.p315q.p333r0.C5851d;
import p131c.p161d.p282e.p315q.p333r0.C5855f;
import p131c.p161d.p282e.p315q.p333r0.C5858g;
import p131c.p161d.p282e.p315q.p333r0.C5860h;
import p131c.p161d.p282e.p315q.p333r0.C5864j;
import p131c.p161d.p282e.p315q.p333r0.C5874n;
/* renamed from: c.d.e.q.r0.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/k.class */
public class C5867k {

    /* renamed from: c.d.e.q.r0.k$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/k$a.class */
    public class C5868a extends AbstractC5863i {
        public C5868a(C5854e eVar, MessageType messageType, Map map) {
            super(eVar, messageType, map);
        }
    }

    /* renamed from: c.d.e.q.r0.k$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/k$b.class */
    public static /* synthetic */ class C5869b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19173a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[MessagesProto$Content.MessageDetailsCase.values().length];
            f19173a = iArr;
            try {
                iArr[MessagesProto$Content.MessageDetailsCase.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19173a[MessagesProto$Content.MessageDetailsCase.IMAGE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19173a[MessagesProto$Content.MessageDetailsCase.MODAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19173a[MessagesProto$Content.MessageDetailsCase.CARD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static C5842a.C5844b m22844a(C5885z zVar) {
        C5842a.C5844b c = C5842a.m22912c();
        if (!TextUtils.isEmpty(zVar.m22815v())) {
            c.m22909a(zVar.m22815v());
        }
        return c;
    }

    /* renamed from: a */
    public static C5842a m22843a(C5885z zVar, C5488d0 d0Var) {
        C5842a.C5844b a = m22844a(zVar);
        if (!d0Var.equals(C5488d0.m23685z())) {
            C5851d.C5853b c = C5851d.m22895c();
            if (!TextUtils.isEmpty(d0Var.m23689v())) {
                c.m22892a(d0Var.m23689v());
            }
            if (d0Var.m23687x()) {
                C5874n.C5876b c2 = C5874n.m22828c();
                C5514m0 w = d0Var.m23688w();
                if (!TextUtils.isEmpty(w.m23642w())) {
                    c2.m22825b(w.m23642w());
                }
                if (!TextUtils.isEmpty(w.m23643v())) {
                    c2.m22826a(w.m23643v());
                }
                c.m22893a(c2.m22827a());
            }
            a.m22910a(c.m22894a());
        }
        return a.m22911a();
    }

    /* renamed from: a */
    public static C5848c.C5850b m22849a(C5483b0 b0Var) {
        C5848c.C5850b h = C5848c.m22904h();
        if (!TextUtils.isEmpty(b0Var.m23693w())) {
            h.m22899a(b0Var.m23693w());
        }
        if (!TextUtils.isEmpty(b0Var.m23691y())) {
            C5858g.C5859a b = C5858g.m22871b();
            b.m22869a(b0Var.m23691y());
            h.m22901a(b.m22870a());
        }
        if (b0Var.m23699A()) {
            h.m22903a(m22844a(b0Var.m23694v()).m22911a());
        }
        if (b0Var.m23698C()) {
            h.m22900a(m22845a(b0Var.m23692x()));
        }
        if (b0Var.m23697D()) {
            h.m22898b(m22845a(b0Var.m23690z()));
        }
        return h;
    }

    /* renamed from: a */
    public static C5855f.C5857b m22848a(C5494f0 f0Var) {
        C5855f.C5857b k = C5855f.m22881k();
        if (f0Var.m23672K()) {
            k.m22873b(m22845a(f0Var.m23678E()));
        }
        if (f0Var.m23677F()) {
            k.m22877a(m22845a(f0Var.m23668w()));
        }
        if (!TextUtils.isEmpty(f0Var.m23669v())) {
            k.m22876a(f0Var.m23669v());
        }
        if (f0Var.m23676G() || f0Var.m23675H()) {
            k.m22880a(m22843a(f0Var.m23665z(), f0Var.m23681A()));
        }
        if (f0Var.m23674I() || f0Var.m23673J()) {
            k.m22875b(m22843a(f0Var.m23680C(), f0Var.m23679D()));
        }
        if (!TextUtils.isEmpty(f0Var.m23666y())) {
            C5858g.C5859a b = C5858g.m22871b();
            b.m22869a(f0Var.m23666y());
            k.m22874b(b.m22870a());
        }
        if (!TextUtils.isEmpty(f0Var.m23667x())) {
            C5858g.C5859a b2 = C5858g.m22871b();
            b2.m22869a(f0Var.m23667x());
            k.m22878a(b2.m22870a());
        }
        return k;
    }

    /* renamed from: a */
    public static C5860h.C5862b m22847a(C5503i0 i0Var) {
        C5860h.C5862b e = C5860h.m22867e();
        if (!TextUtils.isEmpty(i0Var.m23659w())) {
            C5858g.C5859a b = C5858g.m22871b();
            b.m22869a(i0Var.m23659w());
            e.m22864a(b.m22870a());
        }
        if (i0Var.m23658x()) {
            e.m22866a(m22844a(i0Var.m23660v()).m22911a());
        }
        return e;
    }

    /* renamed from: a */
    public static AbstractC5863i m22842a(MessagesProto$Content messagesProto$Content, String str, String str2, boolean z, Map<String, String> map) {
        C4933n.m24794a(messagesProto$Content, "FirebaseInAppMessaging content cannot be null.");
        C4933n.m24794a(str, "FirebaseInAppMessaging campaign id cannot be null.");
        C4933n.m24794a(str2, "FirebaseInAppMessaging campaign name cannot be null.");
        C5694l2.m23216a("Decoding message: " + messagesProto$Content.toString());
        C5854e eVar = new C5854e(str, str2, z);
        int i = C5869b.f19173a[messagesProto$Content.m7313y().ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new C5868a(new C5854e(str, str2, z), MessageType.UNSUPPORTED, map) : m22848a(messagesProto$Content.m7315w()).m22879a(eVar, map) : m22846a(messagesProto$Content.m7312z()).m22854a(eVar, map) : m22847a(messagesProto$Content.m7314x()).m22865a(eVar, map) : m22849a(messagesProto$Content.m7316v()).m22902a(eVar, map);
    }

    /* renamed from: a */
    public static C5864j.C5866b m22846a(C5508k0 k0Var) {
        C5864j.C5866b h = C5864j.m22856h();
        if (!TextUtils.isEmpty(k0Var.m23647x())) {
            h.m22851a(k0Var.m23647x());
        }
        if (!TextUtils.isEmpty(k0Var.m23645z())) {
            C5858g.C5859a b = C5858g.m22871b();
            b.m22869a(k0Var.m23645z());
            h.m22853a(b.m22870a());
        }
        if (k0Var.m23654C()) {
            h.m22855a(m22843a(k0Var.m23649v(), k0Var.m23648w()));
        }
        if (k0Var.m23653D()) {
            h.m22852a(m22845a(k0Var.m23646y()));
        }
        if (k0Var.m23652E()) {
            h.m22850b(m22845a(k0Var.m23655A()));
        }
        return h;
    }

    /* renamed from: a */
    public static C5874n m22845a(C5514m0 m0Var) {
        C5874n.C5876b c = C5874n.m22828c();
        if (!TextUtils.isEmpty(m0Var.m23643v())) {
            c.m22826a(m0Var.m23643v());
        }
        if (!TextUtils.isEmpty(m0Var.m23642w())) {
            c.m22825b(m0Var.m23642w());
        }
        return c.m22827a();
    }
}
