package com.netqin.p525cm.p526ad.family;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.netqin.p525cm.p526ad.config.FitWidthImageView;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6860r;
import p131c.p431l.p478c.C6871a;
/* renamed from: com.netqin.cm.ad.family.BaseNqFamilyAdView */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/family/BaseNqFamilyAdView.class */
public abstract class BaseNqFamilyAdView extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<Pair<String, String>> {
    public View.OnClickListener mClickListener;

    /* renamed from: com.netqin.cm.ad.family.BaseNqFamilyAdView$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/family/BaseNqFamilyAdView$a.class */
    public final class View$OnClickListenerC9019a implements View.OnClickListener {

        /* renamed from: a */
        public final String f35222a;

        /* renamed from: b */
        public final String f35223b;

        public View$OnClickListenerC9019a(String str, String str2) {
            this.f35223b = str;
            this.f35222a = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C6860r.m19540a(BaseNqFamilyAdView.this.getContext(), this.f35222a, this.f35223b);
            C6850i.m19579a("GA_REFERRER", this.f35223b);
            C6871a.m19506a(null, "Ad Clicks", BaseNqFamilyAdView.this.getClickEvent(this.f35223b), 0L, BaseNqFamilyAdView.this.getGaEvent(this.f35222a));
        }
    }

    public BaseNqFamilyAdView(Context context) {
        super(context, "FM");
    }

    public BaseNqFamilyAdView(Context context, AttributeSet attributeSet) {
        super(context, "FM", attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public String getClickEvent(String str) {
        char c;
        switch (str.hashCode()) {
            case -2057288285:
                if (str.equals("&referrer=utm_source%3DCallBlocker%26utm_medium%3DMore%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1902753540:
                if (str.equals("&referrer=utm_source%3DCallBlocker%26utm_medium%3DCallList%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1334934499:
                if (str.equals("&referrer=utm_source%3DCallBlocker%26utm_medium%3DSMSList%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1642247580:
                if (str.equals("&referrer=utm_source%3DCallBlocker%26utm_medium%3DRule%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str2 = "More Page CallBlockerself Click";
        if (c != 0) {
            str2 = c != 1 ? c != 2 ? c != 3 ? "More Page CallBlockerself Click" : "Rule Page CallBlockerself Click" : "SMS List Page CallBlockerself Click" : "Call List Page CallBlockerself Click";
        }
        return str2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int getCoverImage(String str) {
        char c;
        switch (str.hashCode()) {
            case -727762840:
                if (str.equals("com.lexing.greenbattery")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -462594275:
                if (str.equals("com.cxzh.antivirus")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -428528183:
                if (str.equals("com.netqin.aotkiller")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 45478749:
                if (str.equals("com.easyx.coolermaster")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 593573643:
                if (str.equals("com.security.wifi.boost")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1752006237:
                if (str.equals("com.nqmobile.antivirus20")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        int i = 2131165336;
        if (c != 0) {
            i = c != 1 ? c != 2 ? c != 3 ? c != 4 ? c != 5 ? 2131165336 : 2131165315 : 2131165550 : 2131165313 : 2131165530 : 2131165497;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public String getGaEvent(String str) {
        char c;
        switch (str.hashCode()) {
            case -727762840:
                if (str.equals("com.lexing.greenbattery")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -462594275:
                if (str.equals("com.cxzh.antivirus")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -428528183:
                if (str.equals("com.netqin.aotkiller")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 45478749:
                if (str.equals("com.easyx.coolermaster")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 593573643:
                if (str.equals("com.security.wifi.boost")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1752006237:
                if (str.equals("com.nqmobile.antivirus20")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str2 = "Cooler_CallBlockerself_Banner";
        if (c != 0) {
            str2 = c != 1 ? c != 2 ? c != 3 ? c != 4 ? c != 5 ? "Cooler_CallBlockerself_Banner" : "Battery_CallBlockerself_Banner" : "WiFi_CallBlockerself_Banner" : "ATF_CallBlockerself_Banner" : "STK_CallBlockerself_Banner" : "NQMS_CallBlockerself_Banner";
        }
        return str2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private String getShowEvent(String str) {
        char c;
        switch (str.hashCode()) {
            case -2057288285:
                if (str.equals("&referrer=utm_source%3DCallBlocker%26utm_medium%3DMore%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1902753540:
                if (str.equals("&referrer=utm_source%3DCallBlocker%26utm_medium%3DCallList%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1334934499:
                if (str.equals("&referrer=utm_source%3DCallBlocker%26utm_medium%3DSMSList%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1642247580:
                if (str.equals("&referrer=utm_source%3DCallBlocker%26utm_medium%3DRule%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str2 = "More Page CallBlockerself Show";
        if (c != 0) {
            str2 = c != 1 ? c != 2 ? c != 3 ? "More Page CallBlockerself Show" : "Rule Page CallBlockerself Show" : "SMS List Page CallBlockerself Show" : "Call List Page CallBlockerself Show";
        }
        return str2;
    }

    private void setClickListener(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                setClickListener((ViewGroup) childAt);
            }
            childAt.setOnClickListener(this.mClickListener);
        }
    }

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public void clearAdData() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int getLogo(String str) {
        char c;
        switch (str.hashCode()) {
            case -727762840:
                if (str.equals("com.lexing.greenbattery")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -462594275:
                if (str.equals("com.cxzh.antivirus")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -428528183:
                if (str.equals("com.netqin.aotkiller")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 45478749:
                if (str.equals("com.easyx.coolermaster")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 593573643:
                if (str.equals("com.security.wifi.boost")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1752006237:
                if (str.equals("com.nqmobile.antivirus20")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        int i = 2131165337;
        if (c != 0) {
            i = c != 1 ? c != 2 ? c != 3 ? c != 4 ? c != 5 ? 2131165337 : 2131165316 : 2131165551 : 2131165314 : 2131165531 : 2131165498;
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int getSubtitle(String str) {
        char c;
        switch (str.hashCode()) {
            case -727762840:
                if (str.equals("com.lexing.greenbattery")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -462594275:
                if (str.equals("com.cxzh.antivirus")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -428528183:
                if (str.equals("com.netqin.aotkiller")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 45478749:
                if (str.equals("com.easyx.coolermaster")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 593573643:
                if (str.equals("com.security.wifi.boost")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1752006237:
                if (str.equals("com.nqmobile.antivirus20")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        int i = 2131558522;
        if (c != 0) {
            i = c != 1 ? c != 2 ? c != 3 ? c != 4 ? c != 5 ? 2131558522 : 2131558481 : 2131558693 : 2131558479 : 2131558684 : 2131558646;
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int getTitle(String str) {
        char c;
        switch (str.hashCode()) {
            case -727762840:
                if (str.equals("com.lexing.greenbattery")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -462594275:
                if (str.equals("com.cxzh.antivirus")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -428528183:
                if (str.equals("com.netqin.aotkiller")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 45478749:
                if (str.equals("com.easyx.coolermaster")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 593573643:
                if (str.equals("com.security.wifi.boost")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1752006237:
                if (str.equals("com.nqmobile.antivirus20")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        int i = 2131558523;
        if (c != 0) {
            i = c != 1 ? c != 2 ? c != 3 ? c != 4 ? c != 5 ? 2131558523 : 2131558482 : 2131558694 : 2131558480 : 2131558685 : 2131558647;
        }
        return i;
    }

    public abstract int getViewId();

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public final void inflateAdView() {
        View.inflate(getContext(), getLayoutId(), this);
    }

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public int[] layoutIds() {
        return new int[]{getViewId()};
    }

    public boolean mediaViewIsShow() {
        return true;
    }

    public void onBindData(Pair<String, String> pair) {
        String str = (String) pair.first;
        String str2 = (String) pair.second;
        if (mediaViewIsShow()) {
            FitWidthImageView fitWidthImageView = new FitWidthImageView(getContext());
            ((FrameLayout) findViewById(2131230794)).addView(fitWidthImageView);
            fitWidthImageView.setImageResource(getCoverImage(str2));
        }
        ((ImageView) findViewById(2131230799)).setImageResource(getLogo(str2));
        ((TextView) findViewById(2131230796)).setText(getTitle(str2));
        ((TextView) findViewById(2131230789)).setText(getSubtitle(str2));
        ((Button) findViewById(2131230790)).setText(getContext().getResources().getString(2131558528));
        this.mClickListener = new View$OnClickListenerC9019a(str, str2);
        setClickListener(this);
        C6871a.m19506a(null, "Ad Impressions", getShowEvent(str), 0L, getGaEvent(str2));
    }
}
