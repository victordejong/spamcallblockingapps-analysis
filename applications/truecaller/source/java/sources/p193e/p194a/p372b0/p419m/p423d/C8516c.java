package p193e.p194a.p372b0.p419m.p423d;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.payments.senderinfo.SenderInfo;
import e.m.e.k;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.common.payments.senderinfo.SenderInfoManagerImpl$readAndMapSmsData$1", f = "SenderInfoManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.b0.m.d.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/m/d/c.class */
public final class C8516c extends i implements p<i0, d<? super HashMap<String, List<? extends SenderInfo>>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C8517d f26305e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8516c(C8517d c8517d, d dVar) {
        super(2, dVar);
        this.f26305e = c8517d;
    }

    /* renamed from: i */
    public final d<s> m28424i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8516c(this.f26305e, dVar);
    }

    /* renamed from: k */
    public final Object m28423k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8516c(this.f26305e, dVar).m28422s(s.a);
    }

    /* renamed from: s */
    public final Object m28422s(Object obj) {
        s1.u.s sVar;
        C25225a.m3932a3(obj);
        C8521g c8521g = (C8521g) this.f26305e.f26311f;
        Objects.requireNonNull(c8521g);
        HashMap hashMap = new HashMap();
        try {
            Context context = c8521g.f26313a;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e("common_sender_id.json", "fileName");
            InputStream open = context.getAssets().open("common_sender_id.json");
            l.d(open, "context.assets.open(fileName)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            l.e(bufferedReader, "reader");
            StringBuilder sb = new StringBuilder();
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append(StringConstant.NEW_LINE);
                } catch (IOException e) {
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e2) {
                    }
                    throw th;
                }
            }
            try {
                bufferedReader.close();
            } catch (IOException e3) {
            }
            String sb2 = sb.toString();
            l.d(sb2, "output.toString()");
            Type type = new C8520f().getType();
            k kVar = new k();
            JSONObject jSONObject = new JSONObject(sb2);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                }
                String str = next;
                String string = jSONObject.getString(str);
                JSONArray jSONArray = jSONObject.getJSONObject(str).getJSONArray("sender_ids");
                Object g = kVar.g(string, type);
                l.d(g, "gson.fromJson(value, targetClassType)");
                SenderInfo senderInfo = (SenderInfo) g;
                senderInfo.setSymbol(str);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    String string2 = jSONArray.getString(i);
                    if (hashMap.containsKey(string2)) {
                        l.d(string2, "senderId");
                        List list = (List) hashMap.get(string2);
                        if (list != null) {
                            List a1 = s1.u.i.a1(list);
                            ((ArrayList) a1).add(senderInfo);
                            sVar = s1.u.i.r(a1);
                        } else {
                            sVar = s1.u.s.a;
                        }
                        hashMap.put(string2, sVar);
                    } else {
                        l.d(string2, "senderId");
                        hashMap.put(string2, C25225a.m3962T1(senderInfo));
                    }
                }
            }
        } catch (Throwable th2) {
            C10480a.m26061I1(th2);
        }
        return hashMap;
    }
}
