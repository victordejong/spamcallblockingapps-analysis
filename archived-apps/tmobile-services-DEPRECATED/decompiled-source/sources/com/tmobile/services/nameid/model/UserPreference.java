package com.tmobile.services.nameid.model;

import io.realm.Realm;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreference.class */
public interface UserPreference {
    void addCallerForSetting(String str, @Nullable Realm realm);

    int getAction();

    Caller getCaller();

    String getCallerId();

    int getCommEventType();

    String getE164Number();

    String getPreferenceId();

    boolean isPending();

    boolean isUpdateFailed();

    boolean isValid();

    void setAction(int i);

    void setCallerId(String str);

    void setCommEventType(int i);

    void setE164Number(String str);

    void setPending(boolean z);

    void setPreferenceId(String str);

    void setUpdateFailed(boolean z);

    String tryGetDisplayString();
}
