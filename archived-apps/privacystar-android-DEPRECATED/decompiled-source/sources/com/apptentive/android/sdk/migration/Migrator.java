package com.apptentive.android.sdk.migration;

import android.content.Context;
import android.content.SharedPreferences;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.migration.v4_0_0.AppRelease;
import com.apptentive.android.sdk.migration.v4_0_0.CodePointStore;
import com.apptentive.android.sdk.migration.v4_0_0.Sdk;
import com.apptentive.android.sdk.migration.v4_0_0.VersionHistoryEntry;
import com.apptentive.android.sdk.migration.v4_0_0.VersionHistoryStore;
import com.apptentive.android.sdk.storage.CustomData;
import com.apptentive.android.sdk.storage.EventData;
import com.apptentive.android.sdk.storage.EventRecord;
import com.apptentive.android.sdk.storage.Person;
import com.apptentive.android.sdk.storage.VersionHistory;
import com.apptentive.android.sdk.util.Constants;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/Migrator.class */
public class Migrator {
    private static final String INTEGRATION_APPTENTIVE_PUSH = "apptentive_push";
    private static final String INTEGRATION_AWS_SNS = "aws_sns";
    private static final String INTEGRATION_PARSE = "parse";
    private static final String INTEGRATION_PUSH_TOKEN = "token";
    private static final String INTEGRATION_URBAN_AIRSHIP = "urban_airship";
    private Context context;
    private Conversation conversation;
    private SharedPreferences prefs;

    public Migrator(Context context, SharedPreferences sharedPreferences, Conversation conversation) {
        this.context = context;
        this.prefs = sharedPreferences;
        this.conversation = conversation;
    }

    private static Serializable jsonObjectToSerializableType(JSONObject jSONObject) {
        String optString = jSONObject.optString("_type", null);
        if (optString == null) {
            return null;
        }
        try {
            if (optString.equals(Apptentive.Version.TYPE)) {
                return new Apptentive.Version(jSONObject);
            }
            if (optString.equals(Apptentive.DateTime.TYPE)) {
                return new Apptentive.DateTime(jSONObject);
            }
            return null;
        } catch (JSONException e) {
            ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Error migrating JSONObject.", new Object[0]);
            return null;
        }
    }

    private void migrateAppRelease() {
        String string = this.prefs.getString("app_release", null);
        if (string != null) {
            try {
                AppRelease appRelease = new AppRelease(string);
                com.apptentive.android.sdk.storage.AppRelease appRelease2 = new com.apptentive.android.sdk.storage.AppRelease();
                appRelease2.setAppStore(appRelease.getAppStore());
                appRelease2.setDebug(appRelease.getDebug());
                appRelease2.setIdentifier(appRelease.getIdentifier());
                appRelease2.setInheritStyle(appRelease.getInheritStyle());
                appRelease2.setOverrideStyle(appRelease.getOverrideStyle());
                appRelease2.setTargetSdkVersion(appRelease.getTargetSdkVersion());
                appRelease2.setType(appRelease.getType());
                appRelease2.setVersionCode(appRelease.getVersionCode());
                appRelease2.setVersionName(appRelease.getVersionName());
                this.conversation.setAppRelease(appRelease2);
            } catch (Exception e) {
                ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Error migrating AppRelease.", new Object[0]);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0217 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0221 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x022b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0235 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0166 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void migrateDevice() {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.migration.Migrator.migrateDevice():void");
    }

    private void migrateEventData() {
        EventData eventData = this.conversation.getEventData();
        try {
            CodePointStore codePointStore = new CodePointStore(this.prefs.getString(Constants.PREF_KEY_CODE_POINT_STORE, null));
            Map<String, EventRecord> migrateCodePoints = codePointStore.migrateCodePoints();
            Map<String, EventRecord> migrateInteractions = codePointStore.migrateInteractions();
            if (migrateCodePoints != null) {
                eventData.setEvents(migrateCodePoints);
            }
            if (migrateInteractions != null) {
                eventData.setInteractions(migrateInteractions);
            }
        } catch (Exception e) {
            ApptentiveLog.m398w(ApptentiveLogTag.CONVERSATION, e, "Error migrating Event Data.", new Object[0]);
        }
    }

    private void migrateMessageCenter() {
        this.conversation.setMessageCenterFeatureUsed(this.prefs.getBoolean(Constants.PREF_KEY_MESSAGE_CENTER_FEATURE_USED, false));
        this.conversation.setMessageCenterWhoCardPreviouslyDisplayed(this.prefs.getBoolean(Constants.PREF_KEY_MESSAGE_CENTER_WHO_CARD_DISPLAYED_BEFORE, false));
    }

    private void migratePerson() {
        String string = this.prefs.getString("person", null);
        if (string != null) {
            try {
                Person person = new Person();
                com.apptentive.android.sdk.migration.v4_0_0.Person person2 = new com.apptentive.android.sdk.migration.v4_0_0.Person(string);
                person.setEmail(person2.getEmail());
                person.setBirthday(person2.getBirthday());
                person.setCity(person2.getCity());
                person.setCountry(person2.getCountry());
                person.setFacebookId(person2.getFacebookId());
                person.setId(person2.getId());
                person.setName(person2.getName());
                person.setPhoneNumber(person2.getPhoneNumber());
                person.setStreet(person2.getStreet());
                person.setZip(person2.getZip());
                JSONObject customData = person2.getCustomData();
                if (customData != null) {
                    CustomData customData2 = new CustomData();
                    Iterator<String> keys = customData.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        Object obj = customData.get(next);
                        if (obj instanceof JSONObject) {
                            customData2.put(next, jsonObjectToSerializableType((JSONObject) obj));
                        } else {
                            customData2.put(next, (Serializable) obj);
                        }
                    }
                    person.setCustomData(customData2);
                }
                this.conversation.setPerson(person);
            } catch (Exception e) {
                ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Error migrating Person.", new Object[0]);
            }
        }
    }

    private void migrateSdk() {
        String string = this.prefs.getString("sdk", null);
        if (string != null) {
            try {
                Sdk sdk = new Sdk(string);
                com.apptentive.android.sdk.storage.Sdk sdk2 = new com.apptentive.android.sdk.storage.Sdk();
                sdk2.setVersion(sdk.getVersion());
                sdk2.setDistribution(sdk.getDistribution());
                sdk2.setDistributionVersion(sdk.getDistributionVersion());
                sdk2.setPlatform(sdk.getPlatform());
                sdk2.setProgrammingLanguage(sdk.getProgrammingLanguage());
                sdk2.setAuthorName(sdk.getAuthorName());
                sdk2.setAuthorEmail(sdk.getAuthorEmail());
                this.conversation.setSdk(sdk2);
            } catch (Exception e) {
                ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Error migrating Sdk.", new Object[0]);
            }
        }
    }

    private void migrateVersionHistory() {
        JSONArray baseArray = VersionHistoryStore.getBaseArray();
        if (baseArray != null) {
            try {
                if (baseArray.length() > 0) {
                    VersionHistory versionHistory = this.conversation.getVersionHistory();
                    for (int i = 0; i < baseArray.length(); i++) {
                        VersionHistoryEntry versionHistoryEntry = new VersionHistoryEntry((JSONObject) baseArray.get(i));
                        versionHistory.updateVersionHistory(versionHistoryEntry.getTimestamp().doubleValue(), Integer.valueOf(versionHistoryEntry.getVersionCode()), versionHistoryEntry.getVersionName());
                    }
                }
            } catch (Exception e) {
                ApptentiveLog.m398w(ApptentiveLogTag.CONVERSATION, e, "Error migrating VersionHistory entries V2 to V3.", new Object[0]);
            }
        }
    }

    public void migrate() {
        this.conversation.setLastSeenSdkVersion(this.prefs.getString(Constants.PREF_KEY_LAST_SEEN_SDK_VERSION, null));
        migrateDevice();
        migrateSdk();
        migrateAppRelease();
        migratePerson();
        migrateMessageCenter();
        migrateVersionHistory();
        migrateEventData();
    }
}
