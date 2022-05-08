package com.tmobile.services.nameid.model;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CallerDetailsData.class */
public interface CallerDetailsData {
    @NonNull
    Caller buildCaller();

    CallerDetailsData copy();

    @Nullable
    Caller getCaller();

    CallerSetting getCallerSetting();

    int getCategory();

    @StringRes
    int getCategoryRes();

    Contact getContact();

    Date getDate();

    String getDisplayCategory(Context context);

    String getDisplayName();

    String getDisplayNumber(String str);

    String getE164Number();

    String getLocation();

    MessageUserPreference getMessageUserPreference();

    String getPrimaryDisplayInfo(Context context);

    String getSecondaryDisplayInfo(Context context);

    boolean hasCallerName();

    boolean isEmail();

    boolean isPrivate();

    boolean isScammer();

    boolean isValid();

    boolean shouldHighlight();
}
