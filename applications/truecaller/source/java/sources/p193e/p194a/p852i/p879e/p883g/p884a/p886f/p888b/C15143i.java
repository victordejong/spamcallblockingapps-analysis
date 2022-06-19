package p193e.p194a.p852i.p879e.p883g.p884a.p886f.p888b;

import android.view.ViewGroup;
import com.truecaller.ads.C2808R;
import com.truecaller.ads.offline.dto.ButtonItemUiComponent;
import com.truecaller.ads.offline.dto.ImageItemUiComponent;
import com.truecaller.ads.offline.dto.OfflineAdType;
import com.truecaller.ads.offline.dto.TextItemUiComponent;
import com.truecaller.ads.offline.dto.UiComponent;
import p193e.p194a.p852i.p879e.p892j.C15153b;
import p193e.p194a.p852i.p879e.p892j.C15154c;
import s1.z.c.l;
/* renamed from: e.a.i.e.g.a.f.b.i */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/g/a/f/b/i.class */
public final class C15143i {
    /* renamed from: a */
    public d m19126a(UiComponent uiComponent, AbstractC15140e abstractC15140e, ViewGroup viewGroup) {
        b bVar;
        l.e(uiComponent, "component");
        l.e(abstractC15140e, "callback");
        l.e(viewGroup, "container");
        String m35963a = uiComponent.m35963a();
        if (m35963a.hashCode() != 2001146706) {
            bVar = null;
        } else {
            bVar = null;
            if (m35963a.equals("Button")) {
                UiComponent uiComponent2 = uiComponent;
                if (!(uiComponent instanceof ButtonItemUiComponent)) {
                    uiComponent2 = null;
                }
                ButtonItemUiComponent buttonItemUiComponent = (ButtonItemUiComponent) uiComponent2;
                bVar = null;
                if (buttonItemUiComponent != null) {
                    bVar = new b(buttonItemUiComponent, abstractC15140e, viewGroup);
                }
            }
        }
        return bVar;
    }

    /* renamed from: b */
    public AbstractC15141g m19125b(UiComponent uiComponent, ViewGroup viewGroup, OfflineAdType offlineAdType) {
        m mVar;
        l.e(uiComponent, "component");
        l.e(viewGroup, "container");
        l.e(offlineAdType, "adType");
        String m35963a = uiComponent.m35963a();
        switch (m35963a.hashCode()) {
            case -2059652664:
                mVar = null;
                if (m35963a.equals("ArticleBodyImageview")) {
                    UiComponent uiComponent2 = uiComponent;
                    if (!(uiComponent instanceof ImageItemUiComponent)) {
                        uiComponent2 = null;
                    }
                    ImageItemUiComponent imageItemUiComponent = (ImageItemUiComponent) uiComponent2;
                    mVar = null;
                    if (imageItemUiComponent != null) {
                        mVar = new c(imageItemUiComponent, viewGroup, new C15154c(null, C2808R.layout.offline_article_item_imageview, null, null, 13));
                        break;
                    }
                }
                break;
            case -1835002398:
                mVar = null;
                if (m35963a.equals("Heading")) {
                    UiComponent uiComponent3 = uiComponent;
                    if (!(uiComponent instanceof TextItemUiComponent)) {
                        uiComponent3 = null;
                    }
                    TextItemUiComponent textItemUiComponent = (TextItemUiComponent) uiComponent3;
                    mVar = null;
                    if (textItemUiComponent != null) {
                        mVar = new m(new C15153b(viewGroup, textItemUiComponent.c, false, offlineAdType.ordinal() != 2 ? new C15154c(Integer.valueOf(C2808R.style.Ads_LeadGen_TextView_Heading), C2808R.layout.offline_leadgen_item_textview, textItemUiComponent.d, textItemUiComponent.e) : new C15154c(Integer.valueOf(C2808R.style.Ads_Article_TextView_Heading), C2808R.layout.offline_article_item_textview, null, null, 12)));
                        break;
                    }
                }
                break;
            case -273069043:
                mVar = null;
                if (m35963a.equals("HtmlBody")) {
                    UiComponent uiComponent4 = uiComponent;
                    if (!(uiComponent instanceof TextItemUiComponent)) {
                        uiComponent4 = null;
                    }
                    TextItemUiComponent textItemUiComponent2 = (TextItemUiComponent) uiComponent4;
                    mVar = null;
                    if (textItemUiComponent2 != null) {
                        mVar = new m(new C15153b(viewGroup, textItemUiComponent2.c, true, new C15154c(Integer.valueOf(C2808R.style.Ads_Article_TextView_Body), C2808R.layout.offline_article_item_textview, null, null, 12)));
                        break;
                    }
                }
                break;
            case 750214535:
                mVar = null;
                if (m35963a.equals("SponsoredImageView")) {
                    UiComponent uiComponent5 = uiComponent;
                    if (!(uiComponent instanceof ImageItemUiComponent)) {
                        uiComponent5 = null;
                    }
                    ImageItemUiComponent imageItemUiComponent2 = (ImageItemUiComponent) uiComponent5;
                    mVar = null;
                    if (imageItemUiComponent2 != null) {
                        mVar = new c(imageItemUiComponent2, viewGroup, new C15154c(null, C2808R.layout.offline_article_header_imageview, null, null, 13));
                        break;
                    }
                }
                break;
            case 1125864064:
                mVar = null;
                if (m35963a.equals("ImageView")) {
                    UiComponent uiComponent6 = uiComponent;
                    if (!(uiComponent instanceof ImageItemUiComponent)) {
                        uiComponent6 = null;
                    }
                    ImageItemUiComponent imageItemUiComponent3 = (ImageItemUiComponent) uiComponent6;
                    mVar = null;
                    if (imageItemUiComponent3 != null) {
                        mVar = new c(imageItemUiComponent3, viewGroup, new C15154c(null, C2808R.layout.offline_leadgen_item_imageview, null, null, 13));
                        break;
                    }
                }
                break;
            case 1307159490:
                mVar = null;
                if (m35963a.equals("SubHeading")) {
                    UiComponent uiComponent7 = uiComponent;
                    if (!(uiComponent instanceof TextItemUiComponent)) {
                        uiComponent7 = null;
                    }
                    TextItemUiComponent textItemUiComponent3 = (TextItemUiComponent) uiComponent7;
                    mVar = null;
                    if (textItemUiComponent3 != null) {
                        mVar = new m(new C15153b(viewGroup, textItemUiComponent3.c, false, offlineAdType.ordinal() != 2 ? new C15154c(Integer.valueOf(C2808R.style.Ads_LeadGen_TextView_SubHeading), C2808R.layout.offline_leadgen_item_textview, textItemUiComponent3.d, textItemUiComponent3.e) : new C15154c(Integer.valueOf(C2808R.style.Ads_Article_TextView_SubHeading), C2808R.layout.offline_article_item_textview, null, null, 12)));
                        break;
                    }
                }
                break;
            case 1918820564:
                mVar = null;
                if (m35963a.equals("LabelWithLink")) {
                    UiComponent uiComponent8 = uiComponent;
                    if (!(uiComponent instanceof TextItemUiComponent)) {
                        uiComponent8 = null;
                    }
                    TextItemUiComponent textItemUiComponent4 = (TextItemUiComponent) uiComponent8;
                    mVar = null;
                    if (textItemUiComponent4 != null) {
                        mVar = new m(new C15153b(viewGroup, textItemUiComponent4.c, true, offlineAdType.ordinal() != 2 ? new C15154c(Integer.valueOf(C2808R.style.Ads_LeadGen_TextView_LabelWithLink), C2808R.layout.offline_leadgen_item_textview, textItemUiComponent4.d, textItemUiComponent4.e) : new C15154c(Integer.valueOf(C2808R.style.Ads_Article_TextView_LabelWithLink), C2808R.layout.offline_article_item_textview, null, null, 12)));
                        break;
                    }
                }
                break;
            default:
                mVar = null;
                break;
        }
        return mVar;
    }
}
