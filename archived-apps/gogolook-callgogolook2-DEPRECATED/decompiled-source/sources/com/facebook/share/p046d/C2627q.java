package com.facebook.share.p046d;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareMessengerActionButton;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.model.ShareMessengerURLActionButton;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.List;
import java.util.Locale;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.share.d.q */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/q.class */
public class C2627q {

    /* renamed from: a */
    public static C2630c f3550a;

    /* renamed from: b */
    public static C2630c f3551b;

    /* renamed from: c */
    public static C2630c f3552c;

    /* renamed from: com.facebook.share.d.q$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/q$b.class */
    public static class C2629b extends C2630c {
        public C2629b() {
            super();
        }

        @Override // com.facebook.share.p046d.C2627q.C2630c
        /* renamed from: a */
        public void mo34069a(ShareStoryContent shareStoryContent) {
            C2627q.m34090b(shareStoryContent, this);
        }
    }

    /* renamed from: com.facebook.share.d.q$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/q$c.class */
    public static class C2630c {

        /* renamed from: a */
        public boolean f3553a;

        public C2630c() {
            this.f3553a = false;
        }

        /* renamed from: a */
        public void m34080a(ShareCameraEffectContent shareCameraEffectContent) {
            C2627q.m34103b(shareCameraEffectContent, this);
        }

        /* renamed from: a */
        public void m34079a(ShareLinkContent shareLinkContent) {
            C2627q.m34101b(shareLinkContent, this);
        }

        /* renamed from: a */
        public void m34078a(ShareMedia shareMedia) {
            C2627q.m34123a(shareMedia, this);
        }

        /* renamed from: a */
        public void mo34067a(ShareMediaContent shareMediaContent) {
            C2627q.m34100b(shareMediaContent, this);
        }

        /* renamed from: a */
        public void m34077a(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) {
            C2627q.m34099b(shareMessengerGenericTemplateContent);
        }

        /* renamed from: a */
        public void m34076a(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
            C2627q.m34098b(shareMessengerMediaTemplateContent);
        }

        /* renamed from: a */
        public void m34075a(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
            C2627q.m34097b(shareMessengerOpenGraphMusicTemplateContent);
        }

        /* renamed from: a */
        public void m34074a(ShareOpenGraphAction shareOpenGraphAction) {
            C2627q.m34096b(shareOpenGraphAction, this);
        }

        /* renamed from: a */
        public void m34073a(ShareOpenGraphContent shareOpenGraphContent) {
            this.f3553a = true;
            C2627q.m34095b(shareOpenGraphContent, this);
        }

        /* renamed from: a */
        public void m34072a(ShareOpenGraphObject shareOpenGraphObject) {
            C2627q.m34094b(shareOpenGraphObject, this);
        }

        /* renamed from: a */
        public void m34071a(ShareOpenGraphValueContainer shareOpenGraphValueContainer, boolean z) {
            C2627q.m34093b(shareOpenGraphValueContainer, this, z);
        }

        /* renamed from: a */
        public void mo34066a(SharePhoto sharePhoto) {
            C2627q.m34083d(sharePhoto, this);
        }

        /* renamed from: a */
        public void m34070a(SharePhotoContent sharePhotoContent) {
            C2627q.m34091b(sharePhotoContent, this);
        }

        /* renamed from: a */
        public void mo34069a(ShareStoryContent shareStoryContent) {
            C2627q.m34090b(shareStoryContent, this);
        }

        /* renamed from: a */
        public void m34068a(ShareVideo shareVideo) {
            C2627q.m34089b(shareVideo, this);
        }

        /* renamed from: a */
        public void mo34065a(ShareVideoContent shareVideoContent) {
            C2627q.m34088b(shareVideoContent, this);
        }

        /* renamed from: a */
        public boolean m34081a() {
            return this.f3553a;
        }
    }

    /* renamed from: com.facebook.share.d.q$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/q$d.class */
    public static class C2631d extends C2630c {
        public C2631d() {
            super();
        }

        @Override // com.facebook.share.p046d.C2627q.C2630c
        /* renamed from: a */
        public void mo34067a(ShareMediaContent shareMediaContent) {
            throw new C6131k("Cannot share ShareMediaContent via web sharing dialogs");
        }

        @Override // com.facebook.share.p046d.C2627q.C2630c
        /* renamed from: a */
        public void mo34066a(SharePhoto sharePhoto) {
            C2627q.m34082e(sharePhoto, this);
        }

        @Override // com.facebook.share.p046d.C2627q.C2630c
        /* renamed from: a */
        public void mo34065a(ShareVideoContent shareVideoContent) {
            throw new C6131k("Cannot share ShareVideoContent via web sharing dialogs");
        }
    }

    /* renamed from: a */
    public static C2630c m34128a() {
        if (f3551b == null) {
            f3551b = new C2630c();
        }
        return f3551b;
    }

    /* renamed from: a */
    public static void m34126a(ShareContent shareContent) {
        m34125a(shareContent, m34128a());
    }

    /* renamed from: a */
    public static void m34125a(ShareContent shareContent, C2630c cVar) throws C6131k {
        if (shareContent == null) {
            throw new C6131k("Must provide non-null content to share");
        } else if (shareContent instanceof ShareLinkContent) {
            cVar.m34079a((ShareLinkContent) shareContent);
        } else if (shareContent instanceof SharePhotoContent) {
            cVar.m34070a((SharePhotoContent) shareContent);
        } else if (shareContent instanceof ShareVideoContent) {
            cVar.mo34065a((ShareVideoContent) shareContent);
        } else if (shareContent instanceof ShareOpenGraphContent) {
            cVar.m34073a((ShareOpenGraphContent) shareContent);
        } else if (shareContent instanceof ShareMediaContent) {
            cVar.mo34067a((ShareMediaContent) shareContent);
        } else if (shareContent instanceof ShareCameraEffectContent) {
            cVar.m34080a((ShareCameraEffectContent) shareContent);
        } else if (shareContent instanceof ShareMessengerOpenGraphMusicTemplateContent) {
            cVar.m34075a((ShareMessengerOpenGraphMusicTemplateContent) shareContent);
        } else if (shareContent instanceof ShareMessengerMediaTemplateContent) {
            cVar.m34076a((ShareMessengerMediaTemplateContent) shareContent);
        } else if (shareContent instanceof ShareMessengerGenericTemplateContent) {
            cVar.m34077a((ShareMessengerGenericTemplateContent) shareContent);
        } else if (shareContent instanceof ShareStoryContent) {
            cVar.mo34069a((ShareStoryContent) shareContent);
        }
    }

    /* renamed from: a */
    public static void m34123a(ShareMedia shareMedia, C2630c cVar) {
        if (shareMedia instanceof SharePhoto) {
            cVar.mo34066a((SharePhoto) shareMedia);
        } else if (shareMedia instanceof ShareVideo) {
            cVar.m34068a((ShareVideo) shareMedia);
        } else {
            throw new C6131k(String.format(Locale.ROOT, "Invalid media type: %s", shareMedia.getClass().getSimpleName()));
        }
    }

    /* renamed from: a */
    public static void m34121a(ShareMessengerActionButton shareMessengerActionButton) {
        if (shareMessengerActionButton != null) {
            if (C2408g0.m34816d(shareMessengerActionButton.m33888a())) {
                throw new C6131k("Must specify title for ShareMessengerActionButton");
            } else if (shareMessengerActionButton instanceof ShareMessengerURLActionButton) {
                m34117a((ShareMessengerURLActionButton) shareMessengerActionButton);
            }
        }
    }

    /* renamed from: a */
    public static void m34117a(ShareMessengerURLActionButton shareMessengerURLActionButton) {
        if (shareMessengerURLActionButton.m33870e() == null) {
            throw new C6131k("Must specify url for ShareMessengerURLActionButton");
        }
    }

    /* renamed from: a */
    public static void m34112a(SharePhoto sharePhoto) {
        if (sharePhoto != null) {
            Bitmap c = sharePhoto.m33854c();
            Uri e = sharePhoto.m33852e();
            if (c == null && e == null) {
                throw new C6131k("SharePhoto does not have a Bitmap or ImageUrl specified");
            }
            return;
        }
        throw new C6131k("Cannot share a null SharePhoto");
    }

    /* renamed from: a */
    public static void m34106a(Object obj, C2630c cVar) {
        if (obj instanceof ShareOpenGraphObject) {
            cVar.m34072a((ShareOpenGraphObject) obj);
        } else if (obj instanceof SharePhoto) {
            cVar.mo34066a((SharePhoto) obj);
        }
    }

    /* renamed from: a */
    public static void m34105a(String str, boolean z) {
        if (z) {
            String[] split = str.split(":");
            if (split.length >= 2) {
                for (String str2 : split) {
                    if (str2.isEmpty()) {
                        throw new C6131k("Invalid key found in Open Graph dictionary: %s", str);
                    }
                }
                return;
            }
            throw new C6131k("Open Graph keys must be namespaced: %s", str);
        }
    }

    /* renamed from: b */
    public static C2630c m34104b() {
        if (f3552c == null) {
            f3552c = new C2629b();
        }
        return f3552c;
    }

    /* renamed from: b */
    public static void m34103b(ShareCameraEffectContent shareCameraEffectContent, C2630c cVar) {
        if (C2408g0.m34816d(shareCameraEffectContent.m33926h())) {
            throw new C6131k("Must specify a non-empty effectId");
        }
    }

    /* renamed from: b */
    public static void m34102b(ShareContent shareContent) {
        m34125a(shareContent, m34128a());
    }

    /* renamed from: b */
    public static void m34101b(ShareLinkContent shareLinkContent, C2630c cVar) {
        Uri i = shareLinkContent.m33896i();
        if (i != null && !C2408g0.m34813e(i)) {
            throw new C6131k("Image Url must be an http:// or https:// url");
        }
    }

    /* renamed from: b */
    public static void m34100b(ShareMediaContent shareMediaContent, C2630c cVar) {
        List<ShareMedia> g = shareMediaContent.m33889g();
        if (g == null || g.isEmpty()) {
            throw new C6131k("Must specify at least one medium in ShareMediaContent.");
        } else if (g.size() <= 6) {
            for (ShareMedia shareMedia : g) {
                cVar.m34078a(shareMedia);
            }
        } else {
            throw new C6131k(String.format(Locale.ROOT, "Cannot add more than %d media.", 6));
        }
    }

    /* renamed from: b */
    public static void m34099b(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) {
        if (C2408g0.m34816d(shareMessengerGenericTemplateContent.m33922b())) {
            throw new C6131k("Must specify Page Id for ShareMessengerGenericTemplateContent");
        } else if (shareMessengerGenericTemplateContent.m33887g() == null) {
            throw new C6131k("Must specify element for ShareMessengerGenericTemplateContent");
        } else if (!C2408g0.m34816d(shareMessengerGenericTemplateContent.m33887g().m33880e())) {
            m34121a(shareMessengerGenericTemplateContent.m33887g().m33884a());
        } else {
            throw new C6131k("Must specify title for ShareMessengerGenericTemplateElement");
        }
    }

    /* renamed from: b */
    public static void m34098b(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
        if (C2408g0.m34816d(shareMessengerMediaTemplateContent.m33922b())) {
            throw new C6131k("Must specify Page Id for ShareMessengerMediaTemplateContent");
        } else if (shareMessengerMediaTemplateContent.m33876j() != null || !C2408g0.m34816d(shareMessengerMediaTemplateContent.m33879g())) {
            m34121a(shareMessengerMediaTemplateContent.m33878h());
        } else {
            throw new C6131k("Must specify either attachmentId or mediaURL for ShareMessengerMediaTemplateContent");
        }
    }

    /* renamed from: b */
    public static void m34097b(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
        if (C2408g0.m34816d(shareMessengerOpenGraphMusicTemplateContent.m33922b())) {
            throw new C6131k("Must specify Page Id for ShareMessengerOpenGraphMusicTemplateContent");
        } else if (shareMessengerOpenGraphMusicTemplateContent.m33874h() != null) {
            m34121a(shareMessengerOpenGraphMusicTemplateContent.m33875g());
        } else {
            throw new C6131k("Must specify url for ShareMessengerOpenGraphMusicTemplateContent");
        }
    }

    /* renamed from: b */
    public static void m34096b(ShareOpenGraphAction shareOpenGraphAction, C2630c cVar) {
        if (shareOpenGraphAction == null) {
            throw new C6131k("Must specify a non-null ShareOpenGraphAction");
        } else if (!C2408g0.m34816d(shareOpenGraphAction.m33868c())) {
            cVar.m34071a(shareOpenGraphAction, false);
        } else {
            throw new C6131k("ShareOpenGraphAction must have a non-empty actionType");
        }
    }

    /* renamed from: b */
    public static void m34095b(ShareOpenGraphContent shareOpenGraphContent, C2630c cVar) {
        cVar.m34074a(shareOpenGraphContent.m33863g());
        String h = shareOpenGraphContent.m33862h();
        if (C2408g0.m34816d(h)) {
            throw new C6131k("Must specify a previewPropertyName.");
        } else if (shareOpenGraphContent.m33863g().m33860a(h) == null) {
            throw new C6131k("Property \"" + h + "\" was not found on the action. The name of the preview property must match the name of an action property.");
        }
    }

    /* renamed from: b */
    public static void m34094b(ShareOpenGraphObject shareOpenGraphObject, C2630c cVar) {
        if (shareOpenGraphObject != null) {
            cVar.m34071a(shareOpenGraphObject, true);
            return;
        }
        throw new C6131k("Cannot share a null ShareOpenGraphObject");
    }

    /* renamed from: b */
    public static void m34093b(ShareOpenGraphValueContainer shareOpenGraphValueContainer, C2630c cVar, boolean z) {
        for (String str : shareOpenGraphValueContainer.m33859b()) {
            m34105a(str, z);
            Object a = shareOpenGraphValueContainer.m33860a(str);
            if (a instanceof List) {
                for (Object obj : (List) a) {
                    if (obj != null) {
                        m34106a(obj, cVar);
                    } else {
                        throw new C6131k("Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions");
                    }
                }
                continue;
            } else {
                m34106a(a, cVar);
            }
        }
    }

    /* renamed from: b */
    public static void m34091b(SharePhotoContent sharePhotoContent, C2630c cVar) {
        List<SharePhoto> g = sharePhotoContent.m33835g();
        if (g == null || g.isEmpty()) {
            throw new C6131k("Must specify at least one Photo in SharePhotoContent.");
        } else if (g.size() <= 6) {
            for (SharePhoto sharePhoto : g) {
                cVar.mo34066a(sharePhoto);
            }
        } else {
            throw new C6131k(String.format(Locale.ROOT, "Cannot add more than %d photos.", 6));
        }
    }

    /* renamed from: b */
    public static void m34090b(ShareStoryContent shareStoryContent, C2630c cVar) {
        if (shareStoryContent == null || (shareStoryContent.m33826h() == null && shareStoryContent.m33824j() == null)) {
            throw new C6131k("Must pass the Facebook app a background asset, a sticker asset, or both");
        }
        if (shareStoryContent.m33826h() != null) {
            cVar.m34078a(shareStoryContent.m33826h());
        }
        if (shareStoryContent.m33824j() != null) {
            cVar.mo34066a(shareStoryContent.m33824j());
        }
    }

    /* renamed from: b */
    public static void m34089b(ShareVideo shareVideo, C2630c cVar) {
        if (shareVideo != null) {
            Uri c = shareVideo.m33822c();
            if (c == null) {
                throw new C6131k("ShareVideo does not have a LocalUrl specified");
            } else if (!C2408g0.m34823c(c) && !C2408g0.m34817d(c)) {
                throw new C6131k("ShareVideo must reference a video that is on the device");
            }
        } else {
            throw new C6131k("Cannot share a null ShareVideo");
        }
    }

    /* renamed from: b */
    public static void m34088b(ShareVideoContent shareVideoContent, C2630c cVar) {
        cVar.m34068a(shareVideoContent.m33813j());
        SharePhoto i = shareVideoContent.m33814i();
        if (i != null) {
            cVar.mo34066a(i);
        }
    }

    /* renamed from: c */
    public static C2630c m34087c() {
        if (f3550a == null) {
            f3550a = new C2631d();
        }
        return f3550a;
    }

    /* renamed from: c */
    public static void m34086c(ShareContent shareContent) {
        m34125a(shareContent, m34104b());
    }

    /* renamed from: c */
    public static void m34085c(SharePhoto sharePhoto, C2630c cVar) {
        m34112a(sharePhoto);
        Bitmap c = sharePhoto.m33854c();
        Uri e = sharePhoto.m33852e();
        if (c == null && C2408g0.m34813e(e) && !cVar.m34081a()) {
            throw new C6131k("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
        }
    }

    /* renamed from: d */
    public static void m34084d(ShareContent shareContent) {
        m34125a(shareContent, m34087c());
    }

    /* renamed from: d */
    public static void m34083d(SharePhoto sharePhoto, C2630c cVar) {
        m34085c(sharePhoto, cVar);
        if (sharePhoto.m33854c() != null || !C2408g0.m34813e(sharePhoto.m33852e())) {
            C2416h0.m34793a(C6135n.m23746e());
        }
    }

    /* renamed from: e */
    public static void m34082e(SharePhoto sharePhoto, C2630c cVar) {
        m34112a(sharePhoto);
    }
}
