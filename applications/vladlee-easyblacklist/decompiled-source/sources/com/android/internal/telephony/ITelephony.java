package com.android.internal.telephony;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/android/internal/telephony/ITelephony.class */
public interface ITelephony {
    void answerRingingCall();

    void call(String str);

    void cancelMissedCallsNotification();

    void dial(String str);

    int disableApnType(String str);

    boolean disableDataConnectivity();

    void disableLocationUpdates();

    int enableApnType(String str);

    boolean enableDataConnectivity();

    void enableLocationUpdates();

    boolean endCall();

    int getActiveCallsCount();

    int getActivePhoneType();

    long getCallBaseTime();

    int getCallState();

    long getCallTime();

    String getCallerName();

    int getCdmaEriIconIndex();

    int getCdmaEriIconMode();

    String getCdmaEriText();

    boolean getCdmaNeedsProvisioning();

    Bundle getCellLocation();

    int getDataActivity();

    int getDataState();

    boolean getDataStatebyApnType(String str);

    int getHoldCallsCount();

    boolean getMsisdnavailable();

    boolean getMute();

    int getNetworkType();

    int getSimPinRetry();

    int getSimPukRetry();

    int getVoiceMessageCount();

    boolean handlePinMmi(String str);

    boolean hasIccCard();

    void initiateFakecall();

    boolean isDataConnectivityPossible();

    boolean isIdle();

    boolean isOffhook();

    boolean isRadioOn();

    boolean isRinging();

    boolean isSimFDNEnabled();

    boolean isSimPinEnabled();

    boolean isVideoCall();

    void setMute(boolean z);

    boolean setRadio(boolean z);

    boolean showCallScreen();

    boolean showCallScreenWithDialpad(boolean z);

    void silenceRinger();

    boolean supplyPin(String str);

    boolean supplyPin2(String str);

    boolean supplyPuk(String str, String str2);

    void switchHoldingAndActive();

    void toggleRadioOnOff();

    void turnOnSpeaker(boolean z);

    void updateServiceLocation();
}
