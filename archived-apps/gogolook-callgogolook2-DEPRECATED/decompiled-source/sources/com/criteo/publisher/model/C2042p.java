package com.criteo.publisher.model;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.p020a0.C1926n;
import com.criteo.publisher.p020a0.C1927o;
import com.criteo.publisher.p020a0.C1930r;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: com.criteo.publisher.model.p */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/p.class */
public class C2042p {

    /* renamed from: d */
    public static final String f2252d = "p";
    @NonNull

    /* renamed from: a */
    public volatile AbstractC2051v f2253a;
    @Nullable

    /* renamed from: b */
    public final Context f2254b;
    @Nullable

    /* renamed from: c */
    public final C1926n f2255c;

    public C2042p() {
        this.f2254b = null;
        this.f2255c = null;
        this.f2253a = AbstractC2051v.m35802g();
    }

    public C2042p(@NonNull Context context, @NonNull C1926n nVar) {
        this.f2254b = context;
        this.f2255c = nVar;
        this.f2253a = m35832g();
    }

    /* renamed from: a */
    public static SharedPreferences m35841a(@NonNull Context context) {
        return context.getSharedPreferences("com.criteo.publisher.sdkSharedPreferences", 0);
    }

    @NonNull
    /* renamed from: a */
    private AbstractC2051v m35839a(@NonNull AbstractC2051v vVar, @NonNull AbstractC2051v vVar2) {
        return AbstractC2051v.m35808a((Boolean) C1927o.m36003b(vVar2.mo35803f(), vVar.mo35803f()), (String) C1927o.m36003b(vVar2.mo35805d(), vVar.mo35805d()), (String) C1927o.m36003b(vVar2.mo35806c(), vVar.mo35806c()), (String) C1927o.m36003b(vVar2.mo35811a(), vVar.mo35811a()), (String) C1927o.m36003b(vVar2.mo35807b(), vVar.mo35807b()), (Boolean) C1927o.m36003b(vVar2.mo35804e(), vVar.mo35804e()));
    }

    /* renamed from: b */
    private void m35837b(@NonNull AbstractC2051v vVar) {
        if (this.f2254b != null && this.f2255c != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                this.f2255c.m36006a(vVar, byteArrayOutputStream);
                String str = new String(byteArrayOutputStream.toByteArray(), Charset.forName("UTF-8"));
                byteArrayOutputStream.close();
                SharedPreferences.Editor edit = m35841a(this.f2254b).edit();
                edit.putString("CriteoCachedConfig", str);
                edit.apply();
            } catch (Exception e) {
            }
        }
    }

    @NonNull
    /* renamed from: g */
    private AbstractC2051v m35832g() {
        AbstractC2051v g = AbstractC2051v.m35802g();
        Context context = this.f2254b;
        AbstractC2051v vVar = g;
        if (context != null) {
            if (this.f2255c == null) {
                vVar = g;
            } else {
                SharedPreferences a = m35841a(context);
                C1930r rVar = new C1930r(a);
                vVar = g;
                if (a.contains("CriteoCachedKillSwitch")) {
                    vVar = g.m35809a(Boolean.valueOf(rVar.m35995a("CriteoCachedKillSwitch", false)));
                }
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(rVar.m35996a("CriteoCachedConfig", "{}").getBytes(Charset.forName("UTF-8")));
                    AbstractC2051v vVar2 = (AbstractC2051v) this.f2255c.m36007a(AbstractC2051v.class, byteArrayInputStream);
                    byteArrayInputStream.close();
                    return m35839a(vVar, vVar2);
                } catch (IOException e) {
                }
            }
        }
        return vVar;
    }

    @NonNull
    /* renamed from: a */
    public String m35842a() {
        return (String) C1927o.m36003b(this.f2253a.mo35811a(), "%%adTagData%%");
    }

    /* renamed from: a */
    public void m35840a(@NonNull AbstractC2051v vVar) {
        this.f2253a = m35839a(this.f2253a, vVar);
        m35837b(this.f2253a);
    }

    @NonNull
    /* renamed from: b */
    public String m35838b() {
        return (String) C1927o.m36003b(this.f2253a.mo35807b(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script>%%adTagData%%</script></body></html>");
    }

    @NonNull
    /* renamed from: c */
    public String m35836c() {
        return (String) C1927o.m36003b(this.f2253a.mo35806c(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script src=\"%%displayUrl%%\"></script></body></html>");
    }

    @NonNull
    /* renamed from: d */
    public String m35835d() {
        return (String) C1927o.m36003b(this.f2253a.mo35805d(), "%%displayUrl%%");
    }

    /* renamed from: e */
    public boolean m35834e() {
        return ((Boolean) C1927o.m36003b(this.f2253a.mo35804e(), true)).booleanValue();
    }

    /* renamed from: f */
    public boolean m35833f() {
        return ((Boolean) C1927o.m36003b(this.f2253a.mo35803f(), false)).booleanValue();
    }
}
