package p459j.p460a.p582w0;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.SparseArray;
import com.mopub.common.Constants;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.List;
import p459j.p460a.p521j0.p522u.p523d.C12640p0;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p626l.C14986p;
import p626l.p631e0.C14967x;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.s */
/* loaded from: classes3-dex2jar.jar:j/a/w0/s.class */
public final class C14147s {

    /* renamed from: a */
    public static final C14147s f31650a = new C14147s();

    /* renamed from: a */
    public static final SpannableString m2358a(String str) {
        String b;
        SpannableString valueOf = SpannableString.valueOf(str);
        if (!(str == null || (b = C14093n4.m2575b(str)) == null)) {
            try {
                valueOf.setSpan(new StyleSpan(1), 0, b.length(), 33);
            } catch (Exception e) {
                new SpannableString("");
            }
        }
        C15149k.m383a((Object) valueOf, "output");
        return valueOf;
    }

    /* renamed from: a */
    public static final void m2362a(Context context, C12640p0.AbstractC12652l lVar, RowInfo rowInfo, String str, boolean z, HandlerC12947l lVar2, boolean z2, boolean z3, boolean z4, DataUserReport dataUserReport, AbstractC12573l lVar3) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        C15149k.m377b(dataUserReport, "userReport");
        C15149k.m377b(lVar3, "question");
        lVar.mo5654a();
        if (lVar2 != null) {
            lVar2.mo4942b();
        }
        NumberInfo g = rowInfo.m28226g();
        C15149k.m383a((Object) g, "rowInfo.numberInfo");
        List<String> h = g.m28324h();
        C15149k.m383a((Object) h, "rowInfo.numberInfo.askNames");
        Object[] array = h.toArray(new String[0]);
        if (array != null) {
            Intent a = ReportDialogActivity.m28958a(context, dataUserReport, C14108o4.m2474l(str), str, (String[]) array, lVar3.mo5835g(), false, true, z, z2, z3, z4, lVar3.mo5832j(), lVar2);
            C15149k.m383a((Object) a, Constants.INTENT_SCHEME);
            a.setFlags(268435456);
            C14037j3.m2731a().mo2704a(new C13913b1(1));
            context.startActivity(a);
            return;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* renamed from: a */
    public static final void m2361a(Context context, C12640p0.AbstractC12652l lVar, boolean z, boolean z2, boolean z3, HandlerC12947l lVar2, DataUserReport dataUserReport, C14241a.EnumC14244c cVar, ReportDialogActivity.EnumC4379w wVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        C15149k.m377b(dataUserReport, "dataUserReport");
        C15149k.m377b(cVar, "userReportType");
        lVar.mo5654a();
        CallStats h = CallStats.m28534h();
        C15149k.m383a((Object) h, "CallStats.getInstance()");
        CallStats.Call c = h.m28539c();
        C15149k.m383a((Object) c, "CallStats.getInstance().last");
        String h2 = c.m28495h();
        String str = h2;
        if (C14108o4.m2496a(h2, C14108o4.EnumC14110b.CALL)) {
            str = context.getString(R$string.unknown_number);
        }
        C14037j3.m2731a().mo2704a(new C13913b1(1));
        C12928g.m4988a(context, true, z, !z2, str, lVar2, 1, dataUserReport, wVar, z3, cVar);
        C14289m.m1909a(8, 1, C14108o4.m2474l(str));
    }

    /* renamed from: b */
    public static final CharSequence m2357b(RowInfo rowInfo, String str, String str2, boolean z) {
        CharSequence charSequence;
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, LogsGroupRealmObject.DISPLAY_NAME);
        SparseArray<String> a = f31650a.m2360a(rowInfo, str, str2, z);
        StringBuilder sb = new StringBuilder();
        String str3 = a.get(2);
        int size = a.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            if (sb.length() > 0) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            String str4 = a.get(a.keyAt(i));
            C15149k.m383a((Object) str4, "basicInfo.get(key)");
            String str5 = str4;
            boolean z3 = true;
            if (str5 != null) {
                z3 = str5.length() == 0;
            }
            if (!z3) {
                sb.append(str5);
            }
        }
        if (str3 == null || str3.length() == 0) {
            z2 = true;
        }
        if (z2 || !C14017g4.m2835A()) {
            C14147s sVar = f31650a;
            String sb2 = sb.toString();
            C15149k.m383a((Object) sb2, "sb.toString()");
            charSequence = sVar.m2359a(sb2, a);
        } else {
            charSequence = C14123p4.m2438a(sb.toString(), str3, C14167t.m2315a(2131099793));
        }
        return charSequence;
    }

    /* renamed from: a */
    public final SpannableString m2359a(CharSequence charSequence, SparseArray<String> sparseArray) {
        String b;
        SpannableString spannableString = new SpannableString(charSequence);
        String str = sparseArray.get(0);
        if (!(str == null || (b = C14093n4.m2575b(str)) == null)) {
            try {
                int a = C14967x.m703a((CharSequence) charSequence.toString(), b, 0, false, 6, (Object) null);
                spannableString.setSpan(new StyleSpan(1), a, b.length() + a, 33);
            } catch (Exception e) {
            }
        }
        return spannableString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ba, code lost:
        if (r6 != gogolook.callgogolook2.gson.RowInfo.Primary.Type.NUMBER) goto L_0x00bd;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.SparseArray<java.lang.String> m2360a(gogolook.callgogolook2.gson.RowInfo r5, java.lang.String r6, java.lang.String r7, boolean r8) {
        /*
            r4 = this;
            r0 = 0
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0010
            r0 = r5
            gogolook.callgogolook2.gson.NumberInfo r0 = r0.m28226g()
            r10 = r0
            goto L_0x0013
        L_0x0010:
            r0 = 0
            r10 = r0
        L_0x0013:
            j.a.w0.u3 r0 = p459j.p460a.p582w0.C14189u3.m2264c()
            r1 = r6
            r2 = r10
            java.lang.String r0 = r0.m2270a(r1, r2)
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0035
            r0 = r10
            java.lang.String r0 = r0.m28377S()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0035
            r0 = r10
            r6 = r0
            goto L_0x0046
        L_0x0035:
            j.a.w0.u3 r0 = p459j.p460a.p582w0.C14189u3.m2264c()
            r1 = r6
            java.lang.String r2 = ""
            java.lang.String r0 = r0.m2269a(r1, r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "TelecomGeoManager.getIns…errideTelecom(number, \"\")"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
        L_0x0046:
            android.util.SparseArray r0 = new android.util.SparseArray
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = 1
            r12 = r0
            r0 = r11
            if (r0 == 0) goto L_0x006a
            r0 = r11
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0064
            goto L_0x006a
        L_0x0064:
            r0 = 0
            r13 = r0
            goto L_0x006d
        L_0x006a:
            r0 = 1
            r13 = r0
        L_0x006d:
            r0 = r13
            if (r0 != 0) goto L_0x007a
            r0 = r10
            r1 = 1
            r2 = r11
            r0.put(r1, r2)
        L_0x007a:
            r0 = r6
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x008a
            r0 = r12
            r13 = r0
            goto L_0x008d
        L_0x008a:
            r0 = 0
            r13 = r0
        L_0x008d:
            r0 = r13
            if (r0 == 0) goto L_0x0099
            r0 = r10
            r1 = 2
            r2 = r6
            r0.put(r1, r2)
        L_0x0099:
            r0 = r8
            if (r0 != 0) goto L_0x00bd
            r0 = r9
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00b6
            r0 = r5
            gogolook.callgogolook2.gson.RowInfo$Primary r0 = r0.m28224h()
            r5 = r0
            r0 = r9
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00b6
            r0 = r5
            gogolook.callgogolook2.gson.RowInfo$Primary$Type r0 = r0.type
            r6 = r0
        L_0x00b6:
            r0 = r6
            gogolook.callgogolook2.gson.RowInfo$Primary$Type r1 = gogolook.callgogolook2.gson.RowInfo.Primary.Type.NUMBER
            if (r0 == r1) goto L_0x00c4
        L_0x00bd:
            r0 = r10
            r1 = 0
            r2 = r7
            r0.put(r1, r2)
        L_0x00c4:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14147s.m2360a(gogolook.callgogolook2.gson.RowInfo, java.lang.String, java.lang.String, boolean):android.util.SparseArray");
    }
}
