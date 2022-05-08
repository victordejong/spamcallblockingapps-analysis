package com.facebook.share.p046d;

import android.net.Uri;
import android.os.Bundle;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.aotter.net.trek.model.AdFetch;
import com.facebook.internal.C2408g0;
import com.facebook.share.model.ShareMessengerActionButton;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerGenericTemplateElement;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.model.ShareMessengerURLActionButton;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.share.d.l */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/l.class */
public class C2620l {

    /* renamed from: a */
    public static final Pattern f3543a = Pattern.compile("^(.+)\\.(facebook\\.com)$");

    /* renamed from: com.facebook.share.d.l$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/l$a.class */
    public static /* synthetic */ class C2621a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3544a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f3545b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f3546c = new int[ShareMessengerMediaTemplateContent.EnumC2695b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0048 -> B:4:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004c -> B:7:0x0028). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0050 -> B:21:0x003c). Please submit an issue!!! */
        static {
            try {
                f3546c[ShareMessengerMediaTemplateContent.EnumC2695b.VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            f3545b = new int[ShareMessengerGenericTemplateContent.EnumC2692b.values().length];
            try {
                f3545b[ShareMessengerGenericTemplateContent.EnumC2692b.SQUARE.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            f3544a = new int[ShareMessengerURLActionButton.EnumC2698b.values().length];
            try {
                f3544a[ShareMessengerURLActionButton.EnumC2698b.WebviewHeightRatioCompact.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3544a[ShareMessengerURLActionButton.EnumC2698b.WebviewHeightRatioTall.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static String m34166a(Uri uri) {
        String host = uri.getHost();
        return (C2408g0.m34816d(host) || !f3543a.matcher(host).matches()) ? "IMAGE" : "uri";
    }

    /* renamed from: a */
    public static String m34157a(ShareMessengerGenericTemplateContent.EnumC2692b bVar) {
        return (bVar != null && C2621a.f3545b[bVar.ordinal()] == 1) ? "square" : "horizontal";
    }

    /* renamed from: a */
    public static String m34154a(ShareMessengerMediaTemplateContent.EnumC2695b bVar) {
        return (bVar != null && C2621a.f3546c[bVar.ordinal()] == 1) ? MimeTypes.BASE_TYPE_VIDEO : TtmlNode.TAG_IMAGE;
    }

    /* renamed from: a */
    public static String m34151a(ShareMessengerURLActionButton.EnumC2698b bVar) {
        if (bVar == null) {
            return "full";
        }
        int i = C2621a.f3544a[bVar.ordinal()];
        return i != 1 ? i != 2 ? "full" : "tall" : "compact";
    }

    /* renamed from: a */
    public static String m34150a(ShareMessengerURLActionButton shareMessengerURLActionButton) {
        return shareMessengerURLActionButton.m33871d() ? "hide" : null;
    }

    /* renamed from: a */
    public static JSONObject m34159a(ShareMessengerActionButton shareMessengerActionButton) throws JSONException {
        return m34158a(shareMessengerActionButton, false);
    }

    /* renamed from: a */
    public static JSONObject m34158a(ShareMessengerActionButton shareMessengerActionButton, boolean z) throws JSONException {
        if (shareMessengerActionButton instanceof ShareMessengerURLActionButton) {
            return m34149a((ShareMessengerURLActionButton) shareMessengerActionButton, z);
        }
        return null;
    }

    /* renamed from: a */
    public static JSONObject m34156a(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) throws JSONException {
        return new JSONObject().put("attachment", new JSONObject().put("type", "template").put(AdFetch.AD_PAYLOAD_KEY, new JSONObject().put("template_type", "generic").put("sharable", shareMessengerGenericTemplateContent.m33885i()).put("image_aspect_ratio", m34157a(shareMessengerGenericTemplateContent.m33886h())).put("elements", new JSONArray().put(m34155a(shareMessengerGenericTemplateContent.m33887g())))));
    }

    /* renamed from: a */
    public static JSONObject m34155a(ShareMessengerGenericTemplateElement shareMessengerGenericTemplateElement) throws JSONException {
        JSONObject put = new JSONObject().put("title", shareMessengerGenericTemplateElement.m33880e()).put("subtitle", shareMessengerGenericTemplateElement.m33881d()).put("image_url", C2408g0.m34832b(shareMessengerGenericTemplateElement.m33882c()));
        if (shareMessengerGenericTemplateElement.m33884a() != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(m34159a(shareMessengerGenericTemplateElement.m33884a()));
            put.put("buttons", jSONArray);
        }
        if (shareMessengerGenericTemplateElement.m33883b() != null) {
            put.put("default_action", m34158a(shareMessengerGenericTemplateElement.m33883b(), true));
        }
        return put;
    }

    /* renamed from: a */
    public static JSONObject m34153a(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) throws JSONException {
        return new JSONObject().put("attachment", new JSONObject().put("type", "template").put(AdFetch.AD_PAYLOAD_KEY, new JSONObject().put("template_type", "media").put("elements", new JSONArray().put(m34146b(shareMessengerMediaTemplateContent)))));
    }

    /* renamed from: a */
    public static JSONObject m34152a(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) throws JSONException {
        return new JSONObject().put("attachment", new JSONObject().put("type", "template").put(AdFetch.AD_PAYLOAD_KEY, new JSONObject().put("template_type", "open_graph").put("elements", new JSONArray().put(m34145b(shareMessengerOpenGraphMusicTemplateContent)))));
    }

    /* renamed from: a */
    public static JSONObject m34149a(ShareMessengerURLActionButton shareMessengerURLActionButton, boolean z) throws JSONException {
        return new JSONObject().put("type", "web_url").put("title", z ? null : shareMessengerURLActionButton.m33888a()).put("url", C2408g0.m34832b(shareMessengerURLActionButton.m33870e())).put("webview_height_ratio", m34151a(shareMessengerURLActionButton.m33869f())).put("messenger_extensions", shareMessengerURLActionButton.m33872c()).put("fallback_url", C2408g0.m34832b(shareMessengerURLActionButton.m33873b())).put("webview_share_button", m34150a(shareMessengerURLActionButton));
    }

    /* renamed from: a */
    public static void m34165a(Bundle bundle, ShareMessengerActionButton shareMessengerActionButton, boolean z) throws JSONException {
        if (shareMessengerActionButton != null && (shareMessengerActionButton instanceof ShareMessengerURLActionButton)) {
            m34160a(bundle, (ShareMessengerURLActionButton) shareMessengerActionButton, z);
        }
    }

    /* renamed from: a */
    public static void m34164a(Bundle bundle, ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) throws JSONException {
        m34163a(bundle, shareMessengerGenericTemplateContent.m33887g());
        C2408g0.m34869a(bundle, "MESSENGER_PLATFORM_CONTENT", m34156a(shareMessengerGenericTemplateContent));
    }

    /* renamed from: a */
    public static void m34163a(Bundle bundle, ShareMessengerGenericTemplateElement shareMessengerGenericTemplateElement) throws JSONException {
        if (shareMessengerGenericTemplateElement.m33884a() != null) {
            m34165a(bundle, shareMessengerGenericTemplateElement.m33884a(), false);
        } else if (shareMessengerGenericTemplateElement.m33883b() != null) {
            m34165a(bundle, shareMessengerGenericTemplateElement.m33883b(), true);
        }
        C2408g0.m34870a(bundle, "IMAGE", shareMessengerGenericTemplateElement.m33882c());
        C2408g0.m34868a(bundle, "PREVIEW_TYPE", "DEFAULT");
        C2408g0.m34868a(bundle, "TITLE", shareMessengerGenericTemplateElement.m33880e());
        C2408g0.m34868a(bundle, "SUBTITLE", shareMessengerGenericTemplateElement.m33881d());
    }

    /* renamed from: a */
    public static void m34162a(Bundle bundle, ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) throws JSONException {
        m34148b(bundle, shareMessengerMediaTemplateContent);
        C2408g0.m34869a(bundle, "MESSENGER_PLATFORM_CONTENT", m34153a(shareMessengerMediaTemplateContent));
    }

    /* renamed from: a */
    public static void m34161a(Bundle bundle, ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) throws JSONException {
        m34147b(bundle, shareMessengerOpenGraphMusicTemplateContent);
        C2408g0.m34869a(bundle, "MESSENGER_PLATFORM_CONTENT", m34152a(shareMessengerOpenGraphMusicTemplateContent));
    }

    /* renamed from: a */
    public static void m34160a(Bundle bundle, ShareMessengerURLActionButton shareMessengerURLActionButton, boolean z) throws JSONException {
        String str;
        if (z) {
            str = C2408g0.m34832b(shareMessengerURLActionButton.m33870e());
        } else {
            str = shareMessengerURLActionButton.m33888a() + " - " + C2408g0.m34832b(shareMessengerURLActionButton.m33870e());
        }
        C2408g0.m34868a(bundle, "TARGET_DISPLAY", str);
        C2408g0.m34870a(bundle, "ITEM_URL", shareMessengerURLActionButton.m33870e());
    }

    /* renamed from: b */
    public static JSONObject m34146b(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) throws JSONException {
        JSONObject put = new JSONObject().put("attachment_id", shareMessengerMediaTemplateContent.m33879g()).put("url", C2408g0.m34832b(shareMessengerMediaTemplateContent.m33876j())).put("media_type", m34154a(shareMessengerMediaTemplateContent.m33877i()));
        if (shareMessengerMediaTemplateContent.m33878h() != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(m34159a(shareMessengerMediaTemplateContent.m33878h()));
            put.put("buttons", jSONArray);
        }
        return put;
    }

    /* renamed from: b */
    public static JSONObject m34145b(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) throws JSONException {
        JSONObject put = new JSONObject().put("url", C2408g0.m34832b(shareMessengerOpenGraphMusicTemplateContent.m33874h()));
        if (shareMessengerOpenGraphMusicTemplateContent.m33875g() != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(m34159a(shareMessengerOpenGraphMusicTemplateContent.m33875g()));
            put.put("buttons", jSONArray);
        }
        return put;
    }

    /* renamed from: b */
    public static void m34148b(Bundle bundle, ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) throws JSONException {
        m34165a(bundle, shareMessengerMediaTemplateContent.m33878h(), false);
        C2408g0.m34868a(bundle, "PREVIEW_TYPE", "DEFAULT");
        C2408g0.m34868a(bundle, "ATTACHMENT_ID", shareMessengerMediaTemplateContent.m33879g());
        if (shareMessengerMediaTemplateContent.m33876j() != null) {
            C2408g0.m34870a(bundle, m34166a(shareMessengerMediaTemplateContent.m33876j()), shareMessengerMediaTemplateContent.m33876j());
        }
        C2408g0.m34868a(bundle, "type", m34154a(shareMessengerMediaTemplateContent.m33877i()));
    }

    /* renamed from: b */
    public static void m34147b(Bundle bundle, ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) throws JSONException {
        m34165a(bundle, shareMessengerOpenGraphMusicTemplateContent.m33875g(), false);
        C2408g0.m34868a(bundle, "PREVIEW_TYPE", "OPEN_GRAPH");
        C2408g0.m34870a(bundle, "OPEN_GRAPH_URL", shareMessengerOpenGraphMusicTemplateContent.m33874h());
    }
}
