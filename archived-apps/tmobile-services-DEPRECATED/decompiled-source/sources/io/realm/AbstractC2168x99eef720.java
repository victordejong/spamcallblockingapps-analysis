package io.realm;

import java.util.Date;
/* renamed from: io.realm.com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxyInterface */
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxyInterface.class */
public interface AbstractC2168x99eef720 {
    int realmGet$callCountBlocked();

    int realmGet$callCountForwarded();

    int realmGet$callCountReceived();

    int realmGet$callCountVoicemail();

    Date realmGet$callLastDateBlocked();

    Date realmGet$callLastDateForwarded();

    Date realmGet$callLastDateReceived();

    Date realmGet$callLastDateVoicemail();

    Date realmGet$date();

    int realmGet$disposition();

    String realmGet$id();

    Date realmGet$lastActivityTimeStamp();

    int realmGet$lastBucketId();

    int realmGet$messageCountBlocked();

    int realmGet$messageCountReceived();

    Date realmGet$messageLastDateBlocked();

    Date realmGet$messageLastDateReceived();

    String realmGet$name();

    String realmGet$originatingNumber();

    void realmSet$callCountBlocked(int i);

    void realmSet$callCountForwarded(int i);

    void realmSet$callCountReceived(int i);

    void realmSet$callCountVoicemail(int i);

    void realmSet$callLastDateBlocked(Date date);

    void realmSet$callLastDateForwarded(Date date);

    void realmSet$callLastDateReceived(Date date);

    void realmSet$callLastDateVoicemail(Date date);

    void realmSet$date(Date date);

    void realmSet$disposition(int i);

    void realmSet$id(String str);

    void realmSet$lastActivityTimeStamp(Date date);

    void realmSet$lastBucketId(int i);

    void realmSet$messageCountBlocked(int i);

    void realmSet$messageCountReceived(int i);

    void realmSet$messageLastDateBlocked(Date date);

    void realmSet$messageLastDateReceived(Date date);

    void realmSet$name(String str);

    void realmSet$originatingNumber(String str);
}
