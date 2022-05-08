package p081h.p203i.p402h;

import java.util.Map;
import p081h.p203i.p402h.p403j.C10539a;
import p081h.p203i.p402h.p405k.C10549b;
import p081h.p203i.p402h.p407l.C10554a;
import p081h.p203i.p402h.p409m.C10570b;
import p081h.p203i.p402h.p409m.C10572d;
import p081h.p203i.p402h.p409m.C10575f;
import p081h.p203i.p402h.p409m.C10577h;
import p081h.p203i.p402h.p409m.C10579j;
import p081h.p203i.p402h.p409m.C10580k;
import p081h.p203i.p402h.p409m.C10581l;
import p081h.p203i.p402h.p409m.C10584o;
import p081h.p203i.p402h.p409m.C10588s;
import p081h.p203i.p402h.p410n.C10589a;
import p081h.p203i.p402h.p412o.C10598a;
/* renamed from: h.i.h.e */
/* loaded from: classes2-dex2jar.jar:h/i/h/e.class */
public final class C10533e implements AbstractC10537h {

    /* renamed from: h.i.h.e$a */
    /* loaded from: classes2-dex2jar.jar:h/i/h/e$a.class */
    public static /* synthetic */ class C10534a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f23957a = new int[EnumC10529a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a1 -> B:62:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a5 -> B:48:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a9 -> B:44:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ad -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b1 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b5 -> B:58:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bd -> B:64:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c1 -> B:60:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c5 -> B:46:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c9 -> B:42:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cd -> B:52:0x0094). Please submit an issue!!! */
        static {
            try {
                f23957a[EnumC10529a.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f23957a[EnumC10529a.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f23957a[EnumC10529a.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f23957a[EnumC10529a.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f23957a[EnumC10529a.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f23957a[EnumC10529a.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f23957a[EnumC10529a.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f23957a[EnumC10529a.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f23957a[EnumC10529a.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f23957a[EnumC10529a.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f23957a[EnumC10529a.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f23957a[EnumC10529a.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f23957a[EnumC10529a.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    @Override // p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        AbstractC10537h hVar;
        switch (C10534a.f23957a[aVar.ordinal()]) {
            case 1:
                hVar = new C10580k();
                break;
            case 2:
                hVar = new C10588s();
                break;
            case 3:
                hVar = new C10579j();
                break;
            case 4:
                hVar = new C10584o();
                break;
            case 5:
                hVar = new C10598a();
                break;
            case 6:
                hVar = new C10575f();
                break;
            case 7:
                hVar = new C10577h();
                break;
            case 8:
                hVar = new C10572d();
                break;
            case 9:
                hVar = new C10581l();
                break;
            case 10:
                hVar = new C10589a();
                break;
            case 11:
                hVar = new C10570b();
                break;
            case 12:
                hVar = new C10554a();
                break;
            case 13:
                hVar = new C10539a();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(aVar)));
        }
        return hVar.mo11288a(str, aVar, i, i2, map);
    }
}
