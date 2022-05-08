package com.tmobile.services.nameid.model.activity;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerDetailsData;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import io.realm.AbstractC2166xc2c28add;
import io.realm.Realm;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.annotations.Ignore;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/activity/ActivityItem.class */
public class ActivityItem extends RealmObject implements RecentActivityDisplayable, CallerDetailsData, ActivityDisplayable, AbstractC2166xc2c28add {
    private static final String LOG_TAG = "ActivityItem#";
    private int bucketId;
    private String callerName;
    private String callerType;
    @Ignore
    private Contact contact;
    @PrimaryKey
    private int controlNumber;
    @NonNull
    private Date date;
    private String e164Number;

    /* renamed from: id */
    private String f13615id;
    private boolean isEmail;
    private int type;
    private boolean unread;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/activity/ActivityItem$Type.class */
    public enum Type {
        INCOMING(0),
        BLOCKED(1),
        UNUSED(2),
        VOICEMAIL(3),
        UNKNOWN(4),
        APPROVED(5),
        OUTGOING(6);
        
        private final int value;

        Type(int i) {
            this.value = i;
        }

        public static Type fromValue(int i) {
            return (i <= 0 || i >= values().length) ? UNKNOWN : values()[i];
        }

        public int getValue() {
            return this.value;
        }
    }

    public ActivityItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$date(new Date());
        realmSet$type(Type.UNKNOWN.getValue());
        realmSet$unread(false);
        realmSet$isEmail(false);
        realmSet$bucketId(-1);
        this.contact = null;
    }

    private boolean hasCategory() {
        return realmGet$bucketId() != CategorySetting.BucketId.NONE.getValue();
    }

    private Caller toCaller() {
        Caller caller = new Caller();
        caller.setE164Number(realmGet$e164Number());
        caller.setName(realmGet$callerName());
        caller.setNumberAsInput(realmGet$e164Number());
        caller.setIsEmail(false);
        caller.setCategorySuppressed(false);
        caller.setNameSuppressed(false);
        caller.setBucketId(realmGet$bucketId());
        caller.setDate(realmGet$date());
        return caller;
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @NonNull
    public Caller buildCaller() {
        Caller caller = getCaller();
        if (caller != null) {
            return caller;
        }
        Caller caller2 = toCaller();
        ApiUtils.m6861f0(caller2);
        return caller2;
    }

    public int compareTo(ActivityItem activityItem) {
        return getTimeStamp().compareTo(activityItem.getTimeStamp());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int compareTo(RecentActivityDisplayable recentActivityDisplayable) {
        return getTimeStamp().compareTo(recentActivityDisplayable.getTimeStamp());
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public ActivityItem copy() {
        ActivityItem activityItem = new ActivityItem();
        activityItem.setDate(getDate());
        activityItem.setUnread(isUnread());
        activityItem.setE164Number(getE164Number());
        activityItem.setType(getType());
        activityItem.setId(getId());
        activityItem.setIsEmail(isEmail());
        activityItem.setName(realmGet$callerName());
        activityItem.setBucketId(getBucketId());
        activityItem.setCallerType(getCallerType());
        activityItem.setControlNumber(getControlNumber());
        return activityItem;
    }

    public boolean equals(@Nullable RecentActivityDisplayable recentActivityDisplayable) {
        boolean z = true;
        boolean z2 = true;
        if (recentActivityDisplayable instanceof ActivityItem) {
            if (realmGet$controlNumber() != ((ActivityItem) recentActivityDisplayable).realmGet$controlNumber()) {
                z2 = false;
            }
            return z2;
        }
        if (recentActivityDisplayable == null || !recentActivityDisplayable.getTimeStamp().equals(getTimeStamp()) || recentActivityDisplayable.getCommEventType() != getCommEventType() || recentActivityDisplayable.getDisposition() != getDisposition()) {
            z = false;
        }
        return z;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ActivityItem) && realmGet$controlNumber() == ((ActivityItem) obj).realmGet$controlNumber();
    }

    public int getBucketId() {
        return realmGet$bucketId();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @Nullable
    public Caller getCaller() {
        try {
            Realm G0 = Realm.m3064G0();
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2882t("e164Number", realmGet$e164Number());
            Caller caller = (Caller) Q0.m2916G();
            if (G0 != null) {
                G0.close();
            }
            return caller;
        } catch (Exception e) {
            LogUtil.m5641f(LOG_TAG, "", e);
            return null;
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public CallerSetting getCallerSetting() {
        LogUtil.m5643d("ActivityItem#getCallerSetting", "Started.");
        CallerSetting o = ApiUtils.m6844o(realmGet$e164Number());
        CallerSetting callerSetting = o;
        if (o == null) {
            LogUtil.m5643d("ActivityItem#getCallerSetting", "No CallerSetting found in Realm. Using a dummy.");
            callerSetting = new CallerSetting();
            callerSetting.setE164Number(getE164Number());
            callerSetting.setCallerId(getId());
        }
        return callerSetting;
    }

    public String getCallerType() {
        return realmGet$callerType();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public int getCategory() {
        return realmGet$bucketId();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @StringRes
    public int getCategoryRes() {
        return Caller.bucketIdToStringRes(realmGet$bucketId());
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getCommEventType() {
        return ApiUtils.CommEventType.CALL.getValue();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public Contact getContact() {
        return ContactLookup.m5824d().m5823e(realmGet$e164Number());
    }

    public int getControlNumber() {
        return realmGet$controlNumber();
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    @NonNull
    public Date getDate() {
        return realmGet$date();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getDisplayCategory(Context context) {
        return context.getString(getCategoryRes());
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getDisplayName() {
        return (realmGet$callerName() == null || realmGet$callerName().equalsIgnoreCase("not found")) ? "" : realmGet$callerName();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @NonNull
    public String getDisplayNumber(@Nullable String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return PhoneNumberHelper.m5412g(realmGet$e164Number(), str2);
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getDisposition() {
        return realmGet$type();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getE164Number() {
        return realmGet$e164Number();
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.activity.ActivityDisplayable
    public String getId() {
        return realmGet$id();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getLocation() {
        return PhoneNumberHelper.m5411h(realmGet$e164Number());
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getMessageCountBlocked() {
        return 0;
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getMessageCountReceived() {
        return 0;
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public MessageUserPreference getMessageUserPreference() {
        LogUtil.m5643d("ActivityItem#getMessageUserPreference", "Started.");
        MessageUserPreference v = ApiUtils.m6830v(realmGet$e164Number());
        MessageUserPreference messageUserPreference = v;
        if (v == null) {
            LogUtil.m5643d("ActivityItem#getMessageUserPreference", "No MessageUserPreference found in Realm. Using a dummy.");
            messageUserPreference = new MessageUserPreference();
            messageUserPreference.setE164Number(getE164Number());
            messageUserPreference.setCallerId(getId());
        }
        return messageUserPreference;
    }

    public String getName() {
        Contact contact = getContact();
        return (contact == null || contact.getName().isEmpty()) ? hasCallerName() ? realmGet$callerName() : "" : contact.getName();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getPrimaryDisplayInfo(Context context) {
        String string = isPrivate() ? context.getString(C1517R.string.private_caller_name) : isScammer() ? hasContact() ? getName() : context.getString(C1517R.string.category_name_scam_likely) : hasCategory() ? hasContact() ? getName() : hasCallerName() ? realmGet$callerName() : getDisplayCategory(context) : getName();
        String str = string;
        if (string.isEmpty()) {
            str = getDisplayNumber("");
        }
        return str;
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getSecondaryDisplayInfo(Context context) {
        String str;
        if (isPrivate()) {
            str = "";
        } else if (isScammer()) {
            str = hasContact() ? context.getString(C1517R.string.category_name_scam_likely) : getDisplayNumber("");
        } else if (hasCategory()) {
            str = (hasContact() || hasCallerName()) ? getDisplayCategory(context) : getDisplayNumber("");
        } else if (hasCallerName()) {
            str = getDisplayNumber("");
        } else {
            str = "";
            if (hasContact()) {
                str = "";
                if (!getName().isEmpty()) {
                    str = getDisplayNumber("");
                }
            }
        }
        return str;
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    @NonNull
    public Date getTimeStamp() {
        return realmGet$date();
    }

    public int getType() {
        return realmGet$type();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean hasCallerName() {
        return realmGet$callerName() != null && !realmGet$callerName().isEmpty() && !realmGet$callerName().toLowerCase().contains("not found");
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable
    public boolean hasContact() {
        return getContact() != null;
    }

    public int hashCode() {
        return realmGet$id().hashCode();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isEmail() {
        return realmGet$isEmail();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isPrivate() {
        return realmGet$e164Number().contains("0000000000") && realmGet$bucketId() == CategorySetting.BucketId.NONE.getValue();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isScammer() {
        return realmGet$bucketId() == CategorySetting.BucketId.CALL_BLOCKING.getValue() || realmGet$bucketId() == CategorySetting.BucketId.SCAM.getValue();
    }

    public boolean isUnread() {
        return realmGet$unread();
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public int realmGet$bucketId() {
        return this.bucketId;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public String realmGet$callerName() {
        return this.callerName;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public String realmGet$callerType() {
        return this.callerType;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public int realmGet$controlNumber() {
        return this.controlNumber;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public Date realmGet$date() {
        return this.date;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public String realmGet$e164Number() {
        return this.e164Number;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public String realmGet$id() {
        return this.f13615id;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public boolean realmGet$isEmail() {
        return this.isEmail;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public int realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public boolean realmGet$unread() {
        return this.unread;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$bucketId(int i) {
        this.bucketId = i;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$callerName(String str) {
        this.callerName = str;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$callerType(String str) {
        this.callerType = str;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$controlNumber(int i) {
        this.controlNumber = i;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$date(Date date) {
        this.date = date;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$e164Number(String str) {
        this.e164Number = str;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$id(String str) {
        this.f13615id = str;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$isEmail(boolean z) {
        this.isEmail = z;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$type(int i) {
        this.type = i;
    }

    @Override // io.realm.AbstractC2166xc2c28add
    public void realmSet$unread(boolean z) {
        this.unread = z;
    }

    public void setBucketId(int i) {
        realmSet$bucketId(i);
    }

    public void setCallerType(String str) {
        realmSet$callerType(str);
    }

    public void setControlNumber(int i) {
        realmSet$controlNumber(i);
    }

    public void setDate(Date date) {
        realmSet$date(date);
    }

    public void setE164Number(String str) {
        realmSet$e164Number(str);
    }

    public void setId(String str) {
        realmSet$id(str);
    }

    public void setIsEmail(boolean z) {
        realmSet$isEmail(z);
    }

    public void setName(String str) {
        realmSet$callerName(str);
    }

    public void setType(int i) {
        realmSet$type(i);
    }

    public void setUnread(boolean z) {
        realmSet$unread(false);
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean shouldHighlight() {
        return hasCategory() || realmGet$type() == Type.APPROVED.value || realmGet$type() == Type.BLOCKED.value || realmGet$type() == Type.VOICEMAIL.value;
    }

    public String toString() {
        return "ActivityItem{id='" + realmGet$id() + "', date=" + realmGet$date() + ", type=" + realmGet$type() + ", unread=" + realmGet$unread() + ", isEmail=" + realmGet$isEmail() + ", e164Number='" + realmGet$e164Number() + "', bucketId=" + realmGet$bucketId() + ", callerType='" + realmGet$callerType() + "', callerName='" + realmGet$callerName() + "', controlNumber=" + realmGet$controlNumber() + ", contact=" + this.contact + '}';
    }

    public boolean wasBlocked() {
        return realmGet$type() == Type.BLOCKED.value;
    }
}
