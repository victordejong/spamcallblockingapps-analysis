package p131c.p135b.p136a.p148e;

import android.os.Bundle;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.mopub.mobileads.applovin.BuildConfig;
import com.mopub.network.ImpressionData;
import java.util.Map;
import org.json.JSONObject;
import p131c.p135b.p136a.p142c.C2116c;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p152q.C2365e;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* renamed from: c.b.a.e.h */
/* loaded from: classes-dex2jar.jar:c/b/a/e/h.class */
public class C2327h implements AppLovinCommunicatorPublisher, AppLovinCommunicatorSubscriber {

    /* renamed from: a */
    public final C2341l f8994a;

    /* renamed from: b */
    public final AppLovinCommunicator f8995b;

    public C2327h(C2341l lVar) {
        this.f8994a = lVar;
        this.f8995b = AppLovinCommunicator.getInstance(lVar.m30264d());
        if (!lVar.m30309M()) {
            this.f8995b.m19476a(lVar);
            this.f8995b.subscribe(this, C2116c.f8131a);
        }
    }

    /* renamed from: a */
    public final void m30358a(Bundle bundle, String str) {
        if (!this.f8994a.m30309M()) {
            if (!"log".equals(str)) {
                C2374t d0 = this.f8994a.m30262d0();
                d0.m30044b("CommunicatorService", "Sending message " + bundle + " for topic: " + str + "...");
            }
            this.f8995b.getMessagingService().publish(CommunicatorMessageImpl.create(bundle, str, this, this.f8994a.m30275b(C2251d.C2256e.f8692j4).contains(str)));
        }
    }

    /* renamed from: a */
    public void m30357a(C2135c.AbstractC2137b bVar, String str) {
        boolean w = bVar instanceof C2135c.C2139d ? ((C2135c.C2139d) bVar).mo30931w() : false;
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bundle.putString("id", bVar.mo30882l());
        bundle.putString(ImpressionData.NETWORK_NAME, bVar.m30902d());
        bundle.putString("max_ad_unit_id", bVar.getAdUnitId());
        bundle.putString("third_party_ad_placement_id", bVar.m30968p());
        bundle.putString("ad_format", bVar.getFormat().getLabel());
        bundle.putString("is_fallback_ad", String.valueOf(w));
        m30358a(bundle, "max_ad_events");
    }

    /* renamed from: a */
    public void m30356a(MaxAdapter.InitializationStatus initializationStatus, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("adapter_class", str);
        bundle.putInt("init_status", initializationStatus.getCode());
        m30358a(bundle, "adapter_initialization_status");
    }

    /* renamed from: a */
    public void m30355a(String str, String str2, int i, Object obj) {
        Bundle bundle = new Bundle();
        bundle.putString("id", str);
        bundle.putString("url", str2);
        bundle.putInt("code", i);
        bundle.putBundle("body", C2390i.m29943a(obj));
        m30358a(bundle, "receive_http_response");
    }

    /* renamed from: a */
    public void m30354a(JSONObject jSONObject, boolean z) {
        Bundle c = C2390i.m29909c(C2390i.m29911b(C2390i.m29911b(jSONObject, "communicator_settings", new JSONObject(), this.f8994a), "safedk_settings", new JSONObject(), this.f8994a));
        Bundle bundle = new Bundle();
        bundle.putString(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f8994a.m30269b0());
        bundle.putString("applovin_random_token", this.f8994a.m30303S());
        bundle.putString("device_type", AppLovinSdkUtils.isTablet(this.f8994a.m30264d()) ? "tablet" : "phone");
        bundle.putString("init_success", String.valueOf(z));
        bundle.putBundle("settings", c);
        bundle.putBoolean("debug_mode", ((Boolean) this.f8994a.m30291a(C2251d.C2256e.f8586P3)).booleanValue());
        m30358a(bundle, "safedk_init");
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return BuildConfig.NETWORK_NAME;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("send_http_request".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            Map<String, String> a = C2390i.m29944a(messageData.getBundle("query_params"));
            Map<String, Object> map = BundleUtils.toMap(messageData.getBundle("post_body"));
            Map<String, String> a2 = C2390i.m29944a(messageData.getBundle("headers"));
            String string = messageData.getString("id", "");
            if (!map.containsKey(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY)) {
                map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f8994a.m30269b0());
            }
            C2365e.C2367b bVar = new C2365e.C2367b();
            bVar.m30122a(messageData.getString("url"));
            bVar.m30118b(messageData.getString("backup_url"));
            bVar.m30121a(a);
            bVar.m30114c(map);
            bVar.m30117b(a2);
            bVar.m30120a(((Boolean) this.f8994a.m30291a(C2251d.C2256e.f8586P3)).booleanValue());
            bVar.m30115c(string);
            this.f8994a.m30247l().m30149a(bVar.m30124a());
        }
    }
}
