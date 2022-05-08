package p000a.p001a.p002a.p003a.p004a.p012g;

import android.content.res.Resources;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Locale;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.C0149n;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
import p000a.p001a.p002a.p003a.p004a.p006b.C0013ac;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
import p000a.p001a.p002a.p003a.p004a.p010e.EnumC0092d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.g.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/g/a.class */
public abstract class AbstractC0109a extends AbstractC0007a {
    public AbstractC0109a(AbstractC0147l lVar, String str, String str2, AbstractC0101h hVar, EnumC0092d dVar) {
        super(lVar, str, str2, hVar, dVar);
    }

    /* renamed from: a */
    private C0093e m10187a(C0093e eVar, C0112d dVar) {
        C0093e b = eVar.m10223b("app[identifier]", dVar.f224b).m10223b("app[name]", dVar.f228f).m10223b("app[display_version]", dVar.f225c).m10223b("app[build_version]", dVar.f226d).m10232a("app[source]", Integer.valueOf(dVar.f229g)).m10223b("app[minimum_sdk_version]", dVar.f230h).m10223b("app[built_sdk_version]", dVar.f231i);
        if (!C0026j.m10325d(dVar.f227e)) {
            b.m10223b("app[instance_identifier]", dVar.f227e);
        }
        if (dVar.f232j != null) {
            InputStream inputStream = null;
            InputStream inputStream2 = null;
            try {
                try {
                    InputStream openRawResource = this.kit.getContext().getResources().openRawResource(dVar.f232j.f258b);
                    inputStream2 = openRawResource;
                    inputStream = openRawResource;
                    b.m10223b("app[icon][hash]", dVar.f232j.f257a).m10228a("app[icon][data]", "icon.png", "application/octet-stream", openRawResource).m10232a("app[icon][width]", Integer.valueOf(dVar.f232j.f259c)).m10232a("app[icon][height]", Integer.valueOf(dVar.f232j.f260d));
                    inputStream = openRawResource;
                } catch (Resources.NotFoundException e) {
                    AbstractC0150o c = C0137d.m10155c();
                    StringBuilder sb = new StringBuilder("Failed to find app icon with resource ID: ");
                    sb.append(dVar.f232j.f258b);
                    inputStream2 = inputStream;
                    c.mo10130c("Fabric", sb.toString(), e);
                }
            } finally {
                C0026j.m10349a((Closeable) inputStream2, "Failed to close app icon InputStream.");
            }
        }
        if (dVar.f233k != null) {
            for (C0149n nVar : dVar.f233k) {
                b.m10223b(String.format(Locale.US, "app[build][libraries][%s][version]", nVar.m10141a()), nVar.m10140b());
                b.m10223b(String.format(Locale.US, "app[build][libraries][%s][type]", nVar.m10141a()), nVar.m10139c());
            }
        }
        return b;
    }

    /* renamed from: a */
    public boolean mo10167a(C0112d dVar) {
        C0093e a = m10187a(getHttpRequest().m10231a(AbstractC0007a.HEADER_API_KEY, dVar.f223a).m10231a(AbstractC0007a.HEADER_CLIENT_TYPE, AbstractC0007a.ANDROID_CLIENT_TYPE).m10231a(AbstractC0007a.HEADER_CLIENT_VERSION, this.kit.getVersion()), dVar);
        AbstractC0150o c = C0137d.m10155c();
        c.mo10135a("Fabric", "Sending app info to " + getUrl());
        if (dVar.f232j != null) {
            AbstractC0150o c2 = C0137d.m10155c();
            c2.mo10135a("Fabric", "App icon hash is " + dVar.f232j.f257a);
            AbstractC0150o c3 = C0137d.m10155c();
            c3.mo10135a("Fabric", "App icon size is " + dVar.f232j.f259c + "x" + dVar.f232j.f260d);
        }
        int b = a.m10227b();
        String str = "POST".equals(a.m10217d()) ? "Create" : "Update";
        AbstractC0150o c4 = C0137d.m10155c();
        c4.mo10135a("Fabric", str + " app request ID: " + a.m10233a(AbstractC0007a.HEADER_REQUEST_ID));
        C0137d.m10155c().mo10135a("Fabric", "Result was ".concat(String.valueOf(b)));
        return C0013ac.m10379a(b) == 0;
    }
}
