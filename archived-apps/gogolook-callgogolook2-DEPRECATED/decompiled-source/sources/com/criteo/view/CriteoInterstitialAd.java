package com.criteo.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.room.FtsOptions;
import com.criteo.Criteo;
import com.criteo.Gdpr;
import com.criteo.controller.FetchInterstitialAdController;
import com.criteo.controller.FindDeviceLMT;
import com.criteo.info.AppConfigInfo;
import com.criteo.parser.JsonParser;
import com.criteo.sync.sdk.CriteoSync;
import com.criteo.sync.sdk.CriteoSyncOptions;
import com.criteo.utils.CriteoCacheHelper;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
import com.criteo.utils.Utils;
/* loaded from: classes-dex2jar.jar:com/criteo/view/CriteoInterstitialAd.class */
public class CriteoInterstitialAd extends FrameLayout implements FetchInterstitialAdController.OnFetchInterstitialAdController, FindDeviceLMT.OnFindDeviceLMTListener {
    public static int CLOSE_BUTTON_LOCATION_BOTTOM_LEFT = 3;
    public static int CLOSE_BUTTON_LOCATION_BOTTOM_RIGHT = 4;
    public static int CLOSE_BUTTON_LOCATION_TOP_LEFT = 1;
    public static int CLOSE_BUTTON_LOCATION_TOP_RIGHT = 2;
    public static final String TAG = "criteo.Stories.CriteoInterstitialAd";
    public Context mContext;
    public Criteo.OnCriteoAdListener mOnCriteoAdListener;
    public boolean mTestMode;
    public String mZoneId;
    public boolean isSetbackground = false;
    public int btnLocaction = 0;
    public BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.criteo.view.CriteoInterstitialAd.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CriteoInterstitialAd.this.mOnCriteoAdListener != null) {
                CriteoInterstitialAd.this.mOnCriteoAdListener.onAdClicked(Criteo.ADType.INTERSTITIAL);
            }
            CriteoInterstitialAd.this.mContext.unregisterReceiver(CriteoInterstitialAd.this.mReceiver);
        }
    };
    public BroadcastReceiver mon_Close_Receiver = new BroadcastReceiver() { // from class: com.criteo.view.CriteoInterstitialAd.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CriteoInterstitialAd.this.mOnCriteoAdListener != null) {
                CriteoInterstitialAd.this.mOnCriteoAdListener.onAdClosed(Criteo.ADType.INTERSTITIAL);
            }
            CriteoInterstitialAd.this.mContext.unregisterReceiver(CriteoInterstitialAd.this.mon_Close_Receiver);
        }
    };

    public CriteoInterstitialAd(Context context) {
        super(context);
        init();
    }

    public CriteoInterstitialAd(Context context, int i) {
        super(context);
        this.mContext = context;
        this.mZoneId = String.valueOf(i);
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo == null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId("PublisherSDK"));
        } else if (appConfigInfo.isSync_enabled() && JsonParser.appConfigInfo.getIntegrationid() != null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId(JsonParser.appConfigInfo.getIntegrationid()));
        }
    }

    public CriteoInterstitialAd(Context context, int i, Criteo.OnCriteoAdListener onCriteoAdListener) {
        super(context);
        this.mContext = context;
        this.mZoneId = String.valueOf(i);
        this.mOnCriteoAdListener = onCriteoAdListener;
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo == null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId("PublisherSDK"));
        } else if (appConfigInfo.isSync_enabled() && JsonParser.appConfigInfo.getIntegrationid() != null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId(JsonParser.appConfigInfo.getIntegrationid()));
        }
    }

    public CriteoInterstitialAd(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public CriteoInterstitialAd(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public void displayAd() {
        Tracer.debug(TAG, "showAd: ");
        boolean z = this.mTestMode;
        if (!z) {
            StringBuilder retrieveInterstitial = CriteoCacheHelper.retrieveInterstitial(this.mContext, Utils.CACHE_KEY_INTERSTITIAL, Criteo.ADType.INTERSTITIAL, this.mZoneId);
            if (this.mContext == null) {
                return;
            }
            if (!TextUtils.isEmpty(retrieveInterstitial)) {
                if (getOnCriteoAdListener() != null) {
                    getOnCriteoAdListener().onAdDisplayed(Criteo.ADType.INTERSTITIAL);
                }
                Intent intent = this.isSetbackground ? new Intent(this.mContext, DialogInterstialHtmlAdActivity.class) : new Intent(this.mContext, InterstialHtmlAdActivity.class);
                intent.putExtra("ZONE_ID", this.mZoneId);
                intent.putExtra("TEST_MODE", this.mTestMode);
                intent.putExtra("BTN_LOC", this.btnLocaction);
                intent.putExtra("dfp", FtsOptions.TOKENIZER_SIMPLE);
                intent.putExtra("cache", retrieveInterstitial.toString());
                this.mContext.startActivity(intent);
                BroadcastReceiver broadcastReceiver = this.mReceiver;
                if (broadcastReceiver != null) {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction(InterstialHtmlAdActivity.BROADCAST_ACTION);
                    this.mContext.registerReceiver(this.mReceiver, intentFilter);
                } else {
                    this.mContext.unregisterReceiver(broadcastReceiver);
                }
                BroadcastReceiver broadcastReceiver2 = this.mon_Close_Receiver;
                if (broadcastReceiver2 != null) {
                    IntentFilter intentFilter2 = new IntentFilter();
                    intentFilter2.addAction(InterstialHtmlAdActivity.BROADCAST_ON_CLOSE_ACTION);
                    this.mContext.registerReceiver(this.mon_Close_Receiver, intentFilter2);
                } else {
                    this.mContext.unregisterReceiver(broadcastReceiver2);
                }
                requestAd();
            } else if ((retrieveInterstitial == null || retrieveInterstitial.toString().equals("")) && getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdDisplayNoAd(Criteo.ADType.INTERSTITIAL);
            }
        } else if (z) {
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdDisplayed(Criteo.ADType.INTERSTITIAL);
            }
            Intent intent2 = this.isSetbackground ? new Intent(this.mContext, DialogInterstialHtmlAdActivity.class) : new Intent(this.mContext, InterstialHtmlAdActivity.class);
            intent2.putExtra("TEST_MODE", this.mTestMode);
            intent2.putExtra("ZONE_ID", this.mZoneId);
            intent2.putExtra("BTN_LOC", this.btnLocaction);
            intent2.putExtra("dfp", FtsOptions.TOKENIZER_SIMPLE);
            this.mContext.startActivity(intent2);
            BroadcastReceiver broadcastReceiver3 = this.mReceiver;
            if (broadcastReceiver3 != null) {
                IntentFilter intentFilter3 = new IntentFilter();
                intentFilter3.addAction(InterstialHtmlAdActivity.BROADCAST_ACTION);
                this.mContext.registerReceiver(this.mReceiver, intentFilter3);
            } else {
                this.mContext.unregisterReceiver(broadcastReceiver3);
            }
            BroadcastReceiver broadcastReceiver4 = this.mon_Close_Receiver;
            if (broadcastReceiver4 != null) {
                IntentFilter intentFilter4 = new IntentFilter();
                intentFilter4.addAction(InterstialHtmlAdActivity.BROADCAST_ON_CLOSE_ACTION);
                this.mContext.registerReceiver(this.mon_Close_Receiver, intentFilter4);
                return;
            }
            this.mContext.unregisterReceiver(broadcastReceiver4);
        }
    }

    public Criteo.OnCriteoAdListener getOnCriteoAdListener() {
        Tracer.debug(TAG, "getOnCriteoAdListener: " + this.mOnCriteoAdListener);
        return this.mOnCriteoAdListener;
    }

    public void init() {
        Tracer.debug(TAG, "init: ");
    }

    public void isTestMode(boolean z) {
        this.mTestMode = z;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = configuration.orientation;
        if (i == 2) {
            this.mContext.unregisterReceiver(this.mReceiver);
            this.mContext.unregisterReceiver(this.mon_Close_Receiver);
        } else if (i == 1) {
            this.mContext.unregisterReceiver(this.mReceiver);
            this.mContext.unregisterReceiver(this.mon_Close_Receiver);
        }
    }

    public void onDestroy() {
        BroadcastReceiver broadcastReceiver = this.mon_Close_Receiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
        }
        BroadcastReceiver broadcastReceiver2 = this.mReceiver;
        if (broadcastReceiver2 != null) {
            this.mContext.unregisterReceiver(broadcastReceiver2);
        }
    }

    @Override // com.criteo.controller.FetchInterstitialAdController.OnFetchInterstitialAdController
    public void onFetchInterstitialAdFailed(int i, String str, String str2) {
        if (getOnCriteoAdListener() != null) {
            getOnCriteoAdListener().onAdRequestFailed(Criteo.ADType.INTERSTITIAL);
        }
    }

    @Override // com.criteo.controller.FetchInterstitialAdController.OnFetchInterstitialAdController
    public void onFetchInterstitialAdSuccess() {
        if (getOnCriteoAdListener() != null) {
            getOnCriteoAdListener().onAdFetched(Criteo.ADType.INTERSTITIAL);
        }
    }

    @Override // com.criteo.controller.FindDeviceLMT.OnFindDeviceLMTListener
    public void onFindDeviceLMTFailed() {
        if (getOnCriteoAdListener() != null) {
            getOnCriteoAdListener().onAdRequestFailed(Criteo.ADType.INTERSTITIAL);
        }
    }

    @Override // com.criteo.controller.FindDeviceLMT.OnFindDeviceLMTListener
    public void onFindDeviceLMTSuccess(String str) {
        new FetchInterstitialAdController(getContext(), this, this.mZoneId, this.mOnCriteoAdListener).fetchInterstitialAd();
    }

    public void onResume() {
        BroadcastReceiver broadcastReceiver = this.mon_Close_Receiver;
        if (broadcastReceiver != null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(InterstialHtmlAdActivity.BROADCAST_ON_CLOSE_ACTION);
            this.mContext.registerReceiver(this.mon_Close_Receiver, intentFilter);
        } else {
            this.mContext.unregisterReceiver(broadcastReceiver);
        }
        BroadcastReceiver broadcastReceiver2 = this.mReceiver;
        if (broadcastReceiver2 != null) {
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction(InterstialHtmlAdActivity.BROADCAST_ACTION);
            this.mContext.registerReceiver(this.mReceiver, intentFilter2);
            return;
        }
        this.mContext.unregisterReceiver(broadcastReceiver2);
    }

    public void requestAd() {
        Tracer.debug(TAG, "requestAd: ");
        PreferenceDataUtils.clearStoreByKey(this.mContext, PreferenceDataUtils.LMT);
        PreferenceDataUtils.clearStoreByKey(this.mContext, PreferenceDataUtils.GAID);
        new Gdpr().getGdprCompliance(this.mContext);
        boolean z = this.mTestMode;
        if (!z) {
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdRequest(Criteo.ADType.INTERSTITIAL);
            }
            String lmt = PreferenceDataUtils.getLMT(this.mContext);
            StringBuilder retrieveInterstitial = CriteoCacheHelper.retrieveInterstitial(this.mContext, Utils.CACHE_KEY_INTERSTITIAL, Criteo.ADType.INTERSTITIAL, this.mZoneId);
            if (lmt == null || lmt.trim().isEmpty()) {
                if (JsonParser.appConfigInfo != null) {
                    if (retrieveInterstitial == null || retrieveInterstitial.toString().equals("")) {
                        new FindDeviceLMT(this.mContext, this).fetchLMT();
                    } else if (!JsonParser.appConfigInfo.isEnabled()) {
                        new FindDeviceLMT(this.mContext, this).fetchLMT();
                    } else if (getOnCriteoAdListener() != null) {
                        getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
                    }
                } else if (retrieveInterstitial == null || retrieveInterstitial.toString().equals("")) {
                    new FindDeviceLMT(this.mContext, this).fetchLMT();
                } else if (getOnCriteoAdListener() != null) {
                    getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
                }
            } else if (JsonParser.appConfigInfo != null) {
                if (retrieveInterstitial == null || retrieveInterstitial.toString().equals("")) {
                    new FetchInterstitialAdController(getContext(), this, this.mZoneId, this.mOnCriteoAdListener).fetchInterstitialAd();
                } else if (!JsonParser.appConfigInfo.isEnabled()) {
                    new FetchInterstitialAdController(getContext(), this, this.mZoneId, this.mOnCriteoAdListener).fetchInterstitialAd();
                } else if (getOnCriteoAdListener() != null) {
                    getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
                }
            } else if (retrieveInterstitial == null || retrieveInterstitial.toString().equals("")) {
                new FetchInterstitialAdController(getContext(), this, this.mZoneId, this.mOnCriteoAdListener).fetchInterstitialAd();
            } else if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
            }
        } else if (z) {
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdRequest(Criteo.ADType.INTERSTITIAL);
            }
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdFetched(Criteo.ADType.INTERSTITIAL);
            }
        }
    }

    public void setCloseButtonLocation(int i) {
        this.btnLocaction = i;
    }

    public void setTransparentBackground() {
        this.isSetbackground = true;
    }
}
