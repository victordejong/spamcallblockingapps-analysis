package p081h.p203i.p325c.p337n.p338d.p348n.p350d;

import androidx.annotation.Nullable;
import androidx.lifecycle.SavedStateHandle;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.io.File;
import java.io.IOException;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9531a;
import p081h.p203i.p325c.p337n.p338d.p341h.C9541e0;
import p081h.p203i.p325c.p337n.p338d.p341h.C9601m;
import p081h.p203i.p325c.p337n.p338d.p345k.C9766b;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p345k.EnumC9765a;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.C9791a;
/* renamed from: h.i.c.n.d.n.d.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/d/d.class */
public class C9800d extends AbstractC9531a implements AbstractC9798b {

    /* renamed from: f */
    public final String f22233f;

    public C9800d(String str, String str2, C9767c cVar, String str3) {
        super(str, str2, cVar, EnumC9765a.POST);
        this.f22233f = str3;
    }

    /* renamed from: a */
    public final C9766b m14183a(C9766b bVar, String str) {
        bVar.m14349a("User-Agent", "Crashlytics Android SDK/" + C9601m.m14742e());
        bVar.m14349a("X-CRASHLYTICS-API-CLIENT-TYPE", IJSExecutor.JS_FUNCTION_GROUP);
        bVar.m14349a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f22233f);
        bVar.m14349a("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        return bVar;
    }

    /* renamed from: a */
    public final C9766b m14182a(C9766b bVar, @Nullable String str, AbstractC9793c cVar) {
        File[] e;
        if (str != null) {
            bVar.m14345b("org_id", str);
        }
        bVar.m14345b("report_id", cVar.mo14189b());
        for (File file : cVar.mo14186e()) {
            if (file.getName().equals("minidump")) {
                bVar.m14348a("minidump_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals(TtmlNode.TAG_METADATA)) {
                bVar.m14348a("crash_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("binaryImages")) {
                bVar.m14348a("binary_images_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("session")) {
                bVar.m14348a("session_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("app")) {
                bVar.m14348a("app_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("device")) {
                bVar.m14348a("device_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("os")) {
                bVar.m14348a("os_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("user")) {
                bVar.m14348a("user_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("logs")) {
                bVar.m14348a("logs_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals(SavedStateHandle.KEYS)) {
                bVar.m14348a("keys_file", file.getName(), "application/octet-stream", file);
            }
        }
        return bVar;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p350d.AbstractC9798b
    /* renamed from: a */
    public boolean mo14181a(C9791a aVar, boolean z) {
        if (z) {
            C9766b a = m14974a();
            m14183a(a, aVar.f22220b);
            m14182a(a, aVar.f22219a, aVar.f22221c);
            C9513b a2 = C9513b.m15015a();
            a2.m15013a("Sending report to: " + m14971b());
            try {
                int b = a.m14346b().m14338b();
                C9513b a3 = C9513b.m15015a();
                a3.m15013a("Result was: " + b);
                return C9541e0.m14951a(b) == 0;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            throw new RuntimeException("An invalid data collection token was used.");
        }
    }
}
