package com.asus.eabservice;

import com.asus.eabservice.IEABServiceCallback;
import com.asus.eabservice.UserCapInfo;

interface IEABService {
    void publishSelfCap();
    int getSelfCap();
    void refreshUserCap(in List<String> number);
    List<UserCapInfo> subscribeUserCap(in List<String> contactId);
    Map subscribeUserCapInDetail(in List<String> number);
    int getVtGroupCount();
    List<UserCapInfo> getVtGroupMember();
    void setVtToggleValue(boolean isVtToggleOn);
    boolean getVtToggleValue();
    void registerCallback(IEABServiceCallback callback);
    void unregisterCallback(IEABServiceCallback callback);
}