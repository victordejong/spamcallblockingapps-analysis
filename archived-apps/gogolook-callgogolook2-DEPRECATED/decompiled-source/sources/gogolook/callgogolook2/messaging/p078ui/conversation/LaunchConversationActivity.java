package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.app.Activity;
import android.net.Uri;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import gogolook.callgogolook2.R$string;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p478y.C11625l;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p521j0.p529x.C12810o;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.LaunchConversationActivity */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/LaunchConversationActivity.class */
public class LaunchConversationActivity extends Activity implements C11625l.AbstractC11626a {

    /* renamed from: a */
    public final C11589c<C11625l> f11762a = AbstractC11590d.m9040a(this);

    /* renamed from: b */
    public String f11763b;

    /* renamed from: a */
    public final String m27083a(Uri uri) {
        String[] split;
        if (uri == null) {
            return null;
        }
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        if (!schemeSpecificPart.contains("?")) {
            return null;
        }
        for (String str : schemeSpecificPart.substring(schemeSpecificPart.indexOf(63) + 1).split(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR)) {
            if (str.startsWith("body=")) {
                try {
                    return URLDecoder.decode(str.substring(5), "UTF-8");
                } catch (UnsupportedEncodingException e) {
                }
            }
        }
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11625l.AbstractC11626a
    /* renamed from: a */
    public void mo8770a() {
        C12212s0.m6796a((int) R$string.conversation_creation_failure);
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11625l.AbstractC11626a
    /* renamed from: a */
    public void mo8769a(String str) {
        AbstractC12126w.m7095a().mo7080a(AbstractC11516a.m9413n().mo9412a(), 0, str, this.f11763b, C12810o.m5238g());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0076, code lost:
        if ((!r0) != false) goto L_0x0079;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.conversation.LaunchConversationActivity.onCreate(android.os.Bundle):void");
    }
}
