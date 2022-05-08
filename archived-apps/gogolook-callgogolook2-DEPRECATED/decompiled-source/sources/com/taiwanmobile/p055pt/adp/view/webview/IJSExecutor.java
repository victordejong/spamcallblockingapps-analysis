package com.taiwanmobile.p055pt.adp.view.webview;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.IJSExecutor */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/IJSExecutor.class */
public interface IJSExecutor {
    public static final int AUDIO_MUTE = 1;
    public static final int AUDIO_NOT_MUTE = 0;
    public static final String JS_FUNCTION_GROUP = "android";

    void addCalendarEvent(String str, String str2, String str3, String str4, String str5);

    void audioSwitch(int i);

    @Deprecated
    void captureThumbnail();

    void captureThumbnail(String str);

    void clickAd();

    void clickInterstitial();

    void closeWebView();

    void countProximityWithinTime(float f);

    void disableCloseButton();

    void extraClickAd(String str);

    void flashEffect(float f, int i);

    void flashSwitch(int i);

    void floatDisplay(int i);

    @Deprecated
    String getAdFormat();

    String getAdTargetUrl();

    @Deprecated
    String getAdType();

    String getFloatInfo();

    String getOMInformation();

    String getSdkVersion();

    void isOverDecibel(float f, int i);

    void maxDecibel(float f);

    void microphoneSwitch(int i);

    @Deprecated
    void noticePlay();

    @Deprecated
    void noticePlay(String str);

    void noticePlay(String str, String str2);

    void openUrl(String str);

    void passElementOffset(String str);

    void reportVideoProgress(String str, String str2);

    void requestProximityWithTimeAndTouches(float f, int i);

    void setRequestedOrientation(int i);

    @Deprecated
    void vibrate(long j);

    void vibrate2(long[] jArr);
}
