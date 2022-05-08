package com.criteo.info;

import android.content.Context;
import com.criteo.controller.IOHandler;
import com.criteo.utils.Tracer;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/criteo/info/NativeAdInfo.class */
public class NativeAdInfo extends AdInfo implements Serializable {
    public static final String TAG = "criteo.Stories.NativeAdInfo";
    public static final long serialVersionUID = 1;
    public String advertiserDescriptionId;
    public String advertiserDomainId;
    public String advertiserImageId;
    public String advertiserLegalTextId;
    public String advertizeClickUrl;
    public String mCallToAction;
    public String mClickInfo;
    public String mDescription;
    public String mImageUrl;
    public String mImpressionPixelUrl;
    public String mPrice;
    public String mPrivacyClickUrl;
    public String mPrivacyUrl;
    public String mTitle;

    public NativeAdInfo() {
    }

    public NativeAdInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
        super(str);
        Tracer.debug(TAG, "BannerAdInfo: ");
        this.mClickInfo = str2;
        this.mImageUrl = str3;
        this.mTitle = str4;
        this.mDescription = str5;
        this.mCallToAction = str6;
        this.mPrivacyUrl = str7;
        this.mPrivacyClickUrl = str8;
        this.mPrice = str9;
        this.advertiserDescriptionId = str10;
        this.advertiserDomainId = str11;
        this.advertiserImageId = str12;
        this.advertizeClickUrl = str14;
        this.advertiserLegalTextId = str13;
    }

    private String getImageName() {
        Tracer.debug(TAG, "getImageName: ");
        String adId = getAdId();
        for (int i = 0; i < this.mImageUrl.length(); i++) {
            char charAt = this.mImageUrl.charAt(i);
            if (('a' > charAt || charAt > 'z') && ('A' > charAt || charAt > 'Z')) {
                adId = adId;
                if ('0' <= charAt) {
                    adId = adId;
                    if (charAt > '9') {
                    }
                }
            }
            adId = adId + charAt;
        }
        Tracer.debug(TAG, "getImageName: " + adId);
        return adId;
    }

    @Override // com.criteo.info.AdInfo
    public void deleteAllImages(Context context) {
        Tracer.debug(TAG, "deleteAllImages: ");
        IOHandler.deleteFile(context, getImageName());
    }

    public String getAdvertiserDescriptionId() {
        return this.advertiserDescriptionId;
    }

    public String getAdvertiserDomainId() {
        return this.advertiserDomainId;
    }

    public String getAdvertiserImageId() {
        return this.advertiserImageId;
    }

    public String getAdvertiserLegalTextId() {
        return this.advertiserLegalTextId;
    }

    public String getAdvertizeClickUrl() {
        return this.advertizeClickUrl;
    }

    public String getCallToAction() {
        Tracer.debug(TAG, "getCallToAction: " + this.mCallToAction);
        return this.mCallToAction;
    }

    public String getClickInfo() {
        Tracer.debug(TAG, "getClickInfo: " + this.mClickInfo);
        return this.mClickInfo;
    }

    public String getDescription() {
        Tracer.debug(TAG, "getDescription: " + this.mDescription);
        return this.mDescription;
    }

    public String getImageUrl() {
        Tracer.debug(TAG, "getImageUrl: " + this.mImageUrl);
        return this.mImageUrl;
    }

    public String getPrice() {
        Tracer.debug(TAG, "getmPrice: " + this.mTitle);
        return this.mPrice;
    }

    public String getTitle() {
        Tracer.debug(TAG, "getTitle: " + this.mTitle);
        return this.mTitle;
    }

    public String getmPrivacyClickUrl() {
        return this.mPrivacyClickUrl;
    }

    public String getmPrivacyUrl() {
        return this.mPrivacyUrl;
    }

    @Override // com.criteo.info.AdInfo
    public boolean isAdValid(Context context) {
        Tracer.debug(TAG, "isAdValid: ");
        return true;
    }

    @Override // com.criteo.info.AdInfo
    public boolean isImageRequired(Context context) {
        Tracer.debug(TAG, "isImageRequired: ");
        return !IOHandler.isImageExist(context, getImageName());
    }

    public String toString() {
        return "NativeAdInfo{, mImageUrl='" + this.mImageUrl + "', mTitle='" + this.mTitle + "', mDescription='" + this.mDescription + "', mCallToAction='" + this.mCallToAction + "', mPrivacyUrl='" + this.mPrivacyUrl + "', mPrivacyClickUrl='" + this.mPrivacyClickUrl + "', mPrice='" + this.mPrice + "', mImpressionPixelUrl='" + this.mImpressionPixelUrl + "'}";
    }
}
