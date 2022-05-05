package p000a.p001a.p002a.p003a.p004a.p012g;

import com.crashlytics.android.beta.BuildConfig;
import com.google.android.gms.common.internal.ImagesContract;
import org.json.JSONObject;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0032m;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.g.k */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/g/k.class */
public final class C0119k implements AbstractC0131v {
    @Override // p000a.p001a.p002a.p003a.p004a.p012g.AbstractC0131v
    /* renamed from: a */
    public final C0129t mo10169a(AbstractC0032m mVar, JSONObject jSONObject) {
        C0111c cVar;
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("app");
        String string = jSONObject2.getString("identifier");
        String string2 = jSONObject2.getString("status");
        String string3 = jSONObject2.getString(ImagesContract.URL);
        String string4 = jSONObject2.getString("reports_url");
        String string5 = jSONObject2.getString("ndk_reports_url");
        boolean optBoolean = jSONObject2.optBoolean("update_required", false);
        if (!jSONObject2.has("icon") || !jSONObject2.getJSONObject("icon").has("hash")) {
            cVar = null;
        } else {
            JSONObject jSONObject3 = jSONObject2.getJSONObject("icon");
            cVar = new C0111c(jSONObject3.getString("hash"), jSONObject3.getInt("width"), jSONObject3.getInt("height"));
        }
        C0113e eVar = new C0113e(string, string2, string3, string4, string5, optBoolean, cVar);
        JSONObject jSONObject4 = jSONObject.getJSONObject("session");
        C0124p pVar = new C0124p(jSONObject4.optInt("log_buffer_size", 64000), jSONObject4.optInt("max_chained_exception_depth", 8), jSONObject4.optInt("max_custom_exception_events", 64), jSONObject4.optInt("max_custom_key_value_pairs", 64), jSONObject4.optInt("identifier_mask", 255), jSONObject4.optBoolean("send_session_without_crash", false), jSONObject4.optInt("max_complete_sessions_count", 4));
        JSONObject jSONObject5 = jSONObject.getJSONObject("prompt");
        C0123o oVar = new C0123o(jSONObject5.optString("title", "Send Crash Report?"), jSONObject5.optString("message", "Looks like we crashed! Please help us fix the problem by sending a crash report."), jSONObject5.optString("send_button_title", "Send"), jSONObject5.optBoolean("show_cancel_button", true), jSONObject5.optString("cancel_button_title", "Don't Send"), jSONObject5.optBoolean("show_always_send_button", true), jSONObject5.optString("always_send_button_title", "Always Send"));
        JSONObject jSONObject6 = jSONObject.getJSONObject("features");
        C0121m mVar2 = new C0121m(jSONObject6.optBoolean("prompt_enabled", false), jSONObject6.optBoolean("collect_logged_exceptions", true), jSONObject6.optBoolean("collect_reports", true), jSONObject6.optBoolean("collect_analytics", false), jSONObject6.optBoolean("firebase_crashlytics_enabled", false));
        JSONObject jSONObject7 = jSONObject.getJSONObject("analytics");
        C0110b bVar = new C0110b(jSONObject7.optString(ImagesContract.URL, "https://e.crashlytics.com/spi/v2/events"), jSONObject7.optInt("flush_interval_secs", 600), jSONObject7.optInt("max_byte_size_per_file", AbstractC0079b.MAX_BYTE_SIZE_PER_FILE), jSONObject7.optInt("max_file_count_per_send", 1), jSONObject7.optInt("max_pending_send_file_count", 100), jSONObject7.optBoolean("forward_to_google_analytics", false), jSONObject7.optBoolean("include_purchase_events_in_forwarded_events", false), jSONObject7.optBoolean("track_custom_events", true), jSONObject7.optBoolean("track_predefined_events", true), jSONObject7.optInt("sampling_rate", 1), jSONObject7.optBoolean("flush_on_background", true));
        JSONObject jSONObject8 = jSONObject.getJSONObject(BuildConfig.ARTIFACT_ID);
        return new C0129t(jSONObject.has("expires_at") ? jSONObject.getLong("expires_at") : mVar.mo10310a() + (optInt2 * 1000), eVar, pVar, oVar, mVar2, bVar, new C0114f(jSONObject8.optString("update_endpoint", C0130u.f293a), jSONObject8.optInt("update_suspend_duration", 3600)), optInt, optInt2);
    }
}
