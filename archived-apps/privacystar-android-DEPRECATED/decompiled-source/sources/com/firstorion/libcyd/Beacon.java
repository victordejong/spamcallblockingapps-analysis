package com.firstorion.libcyd;

import android.content.Context;
import android.util.Log;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/Beacon.class */
public final class Beacon {
    private static final int BEACON_EVENT_CLEAN_INSTALL_EVENTID = 2;
    private static final int BEACON_EVENT_INIT_EVENTID = 1;
    private static final int BEACON_EVENT_INIT_HAS_CALL_LOG = 4;
    private static final int BEACON_EVENT_INIT_HAS_OVERLAY = 1;
    private static final int BEACON_EVENT_INIT_IS_ENABLED = 2;
    static final int BEACON_EVENT_SMS_CHALLENGE_INITIATED_EVENTID = 4;
    static final int BEACON_EVENT_SMS_CHALLENGE_INITIATED_STATUS_BADREQUEST = 2;
    static final int BEACON_EVENT_SMS_CHALLENGE_INITIATED_STATUS_INVALIDPHONENUMBER = 4;
    static final int BEACON_EVENT_SMS_CHALLENGE_INITIATED_STATUS_OK = 0;
    static final int BEACON_EVENT_SMS_CHALLENGE_INITIATED_STATUS_RATELIMITED = 3;
    static final int BEACON_EVENT_SMS_CHALLENGE_INITIATED_STATUS_SERVERERROR = 16;
    static final int BEACON_EVENT_SMS_CHALLENGE_INITIATED_STATUS_TIMEOUT = 1;
    static final int BEACON_EVENT_SMS_CHALLENGE_INITIATED_STATUS_UNKNOWN = 17;
    static final int BEACON_EVENT_SMS_CHALLENGE_VERIFIED_EVENTID = 5;
    static final int BEACON_EVENT_SMS_CHALLENGE_VERIFIED_STATUS_BADREQUEST = 2;
    static final int BEACON_EVENT_SMS_CHALLENGE_VERIFIED_STATUS_INVALIDCODE = 4;
    static final int BEACON_EVENT_SMS_CHALLENGE_VERIFIED_STATUS_OK = 0;
    static final int BEACON_EVENT_SMS_CHALLENGE_VERIFIED_STATUS_RATELIMITED = 3;
    static final int BEACON_EVENT_SMS_CHALLENGE_VERIFIED_STATUS_SERVERERROR = 16;
    static final int BEACON_EVENT_SMS_CHALLENGE_VERIFIED_STATUS_TIMEOUT = 1;
    static final int BEACON_EVENT_SMS_CHALLENGE_VERIFIED_STATUS_UNKNOWN = 17;
    private static final int BEACON_EVENT_UPGRADE_EVENTID = 3;
    private static final int BEACON_EVENT_UPGRADE_STATUS_UPGRADE_APP = 2;
    private static final int BEACON_EVENT_UPGRADE_STATUS_UPGRADE_SDK = 1;
    private static final Object sync = new Object();
    private static final List<PreInitializationBeaconEvent> preInitializationBeaconEvents = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/Beacon$BeaconEvent.class */
    public static final class BeaconEvent {
        String appId;
        String appVersion;
        String beaconIdentifier;
        int beaconVersion;
        int eventId;
        String messageOne;
        String messageTwo;
        String sdkVersion;
        int statusCode;
        long timestamp;

        BeaconEvent(CYDApplicationParams cYDApplicationParams, int i) {
            this(cYDApplicationParams, i, -1);
        }

        BeaconEvent(CYDApplicationParams cYDApplicationParams, int i, int i2) {
            this(cYDApplicationParams, i, i2, System.currentTimeMillis());
        }

        private BeaconEvent(CYDApplicationParams cYDApplicationParams, int i, int i2, long j) {
            this.beaconVersion = 2;
            this.sdkVersion = cYDApplicationParams.newSdkVersion;
            this.appVersion = cYDApplicationParams.newAppVersion;
            this.appId = cYDApplicationParams.appId;
            this.beaconIdentifier = cYDApplicationParams.beaconIdentifier;
            this.timestamp = j;
            this.eventId = i;
            this.statusCode = i2;
        }

        BeaconEvent(CYDApplicationParams cYDApplicationParams, PreInitializationBeaconEvent preInitializationBeaconEvent) {
            this(cYDApplicationParams, preInitializationBeaconEvent.eventId, preInitializationBeaconEvent.statusCode, preInitializationBeaconEvent.timeStamp);
        }

        JSONObject toJsonObject() {
            if (this.eventId == 0) {
                Log.d("libcyd.app", "Encountered beacon event with eventId 0. Ignoring it.");
                return null;
            }
            try {
                JSONObject put = new JSONObject().put("t", this.timestamp).put("v", this.beaconVersion).put("e", this.eventId);
                if (this.statusCode > 0) {
                    put.put("c", this.statusCode);
                }
                if (this.appId != null) {
                    put.put("aid", this.appId);
                }
                if (this.appVersion != null) {
                    put.put("av", this.appVersion);
                }
                if (this.sdkVersion != null) {
                    put.put("sv", this.sdkVersion);
                }
                if (this.messageOne != null) {
                    put.put("mo", this.messageOne);
                }
                if (this.messageTwo != null) {
                    put.put("mt", this.messageTwo);
                }
                if (this.beaconIdentifier != null) {
                    put.put("id", this.beaconIdentifier);
                }
                return put;
            } catch (Throwable th) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/Beacon$BeaconEventMessage.class */
    public static final class BeaconEventMessage {
        final List<BeaconEvent> beaconEvents = new ArrayList();

        BeaconEventMessage() {
        }

        void addBeaconEvent(BeaconEvent beaconEvent) {
            if (beaconEvent == null) {
                throw new NullPointerException("beaconEvent");
            }
            this.beaconEvents.add(beaconEvent);
        }

        public String toString() {
            JSONArray jSONArray = new JSONArray();
            for (BeaconEvent beaconEvent : this.beaconEvents) {
                JSONObject jsonObject = beaconEvent.toJsonObject();
                if (jsonObject != null) {
                    jSONArray.put(jsonObject);
                }
            }
            try {
                return new JSONObject().put("b", jSONArray).toString();
            } catch (Throwable th) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/Beacon$PreInitializationBeaconEvent.class */
    public static final class PreInitializationBeaconEvent {
        final int eventId;
        final int statusCode;
        final long timeStamp = System.currentTimeMillis();

        PreInitializationBeaconEvent(int i, int i2) {
            this.eventId = i;
            this.statusCode = i2;
        }
    }

    private Beacon() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendBeaconsInternal(BeaconEventMessage beaconEventMessage) {
        if (!CYDApplication.isInitialized()) {
            throw new IllegalStateException("Must initialize the SDK before sending beacon events.");
        }
        String beaconEventMessage2 = beaconEventMessage.toString();
        if (beaconEventMessage2 == null) {
            Log.e("libcyd.app", "Somehow a beacon message serialized to null. Skipping it.");
            return;
        }
        final byte[] bytes = beaconEventMessage2.getBytes(Globals.UTF8);
        Globals.THREAD_POOL.execute(new Runnable() { // from class: com.firstorion.libcyd.Beacon.2
            @Override // java.lang.Runnable
            public void run() {
                HttpURLConnection httpURLConnection;
                Throwable th;
                Throwable th2;
                OutputStream outputStream;
                try {
                    httpURLConnection = Constants.getConnection("https://api.calleryd.com/tel/v1/beacons");
                    try {
                        httpURLConnection.setRequestProperty("Content-Type", "application/json");
                        httpURLConnection.setDoInput(false);
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setRequestMethod(HttpRequest.METHOD_PUT);
                        try {
                            outputStream = httpURLConnection.getOutputStream();
                            try {
                                outputStream.write(bytes);
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                                int responseCode = httpURLConnection.getResponseCode();
                                Globals.tryPrintRequestId(httpURLConnection, "beacon");
                                if (responseCode == 200) {
                                    Log.d("libcyd.app", "Beacon put successfully.");
                                } else {
                                    Log.e("libcyd.app", String.format("Beacon put failed. Server code: %d.", Integer.valueOf(responseCode)));
                                }
                                if (httpURLConnection == null) {
                                    return;
                                }
                            } catch (Throwable th3) {
                                th2 = th3;
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            th2 = th4;
                            outputStream = null;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        try {
                            Log.e("libcyd.app", "Beacon put failed.", th);
                            if (httpURLConnection == null) {
                                return;
                            }
                            httpURLConnection.disconnect();
                        } catch (Throwable th6) {
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th6;
                        }
                    }
                } catch (Throwable th7) {
                    th = th7;
                    httpURLConnection = null;
                }
                httpURLConnection.disconnect();
            }
        });
    }

    public static void sendEvent(int i, int i2, Context context) {
        sendEvent(i, i2, null, null, context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sendEvent(int i, int i2, String str, String str2, Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (!CYDApplication.isInitialized()) {
            synchronized (sync) {
                preInitializationBeaconEvents.add(new PreInitializationBeaconEvent(i, i2));
            }
        } else {
            CYDApplicationParams instance = CYDApplicationParams.getInstance(context.getApplicationContext());
            BeaconEventMessage beaconEventMessage = new BeaconEventMessage();
            BeaconEvent beaconEvent = new BeaconEvent(instance, i, i2);
            beaconEvent.messageOne = str;
            beaconEvent.messageTwo = str2;
            beaconEventMessage.addBeaconEvent(beaconEvent);
            synchronized (sync) {
                if (preInitializationBeaconEvents.size() > 0) {
                    while (preInitializationBeaconEvents.size() > 0) {
                        beaconEventMessage.addBeaconEvent(new BeaconEvent(instance, preInitializationBeaconEvents.remove(0)));
                    }
                }
            }
            sendBeaconsInternal(beaconEventMessage);
        }
    }

    public static void sendEvent(int i, Context context) {
        sendEvent(i, -1, null, null, context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sendInitBeacons(final Context context) {
        Globals.THREAD_POOL.execute(new Runnable() { // from class: com.firstorion.libcyd.Beacon.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                CYDApplicationParams instance = CYDApplicationParams.getInstance(context);
                BeaconEventMessage beaconEventMessage = new BeaconEventMessage();
                BeaconEvent beaconEvent = new BeaconEvent(instance, 1, 0);
                if (CYDApplication.getInstance().getIsEnabled(context)) {
                    beaconEvent.statusCode += 2;
                }
                if (CYDApplication.getInstance().hasOverlayPermission(context)) {
                    beaconEvent.statusCode++;
                }
                if (CYDApplication.getInstance().hasCallLogPermission(context)) {
                    beaconEvent.statusCode += 4;
                }
                beaconEventMessage.addBeaconEvent(beaconEvent);
                if (instance.wasCleanInstall()) {
                    Log.d("libcyd.app", "beacon: detected clean install");
                    beaconEventMessage.addBeaconEvent(new BeaconEvent(instance, 2));
                    z = true;
                } else {
                    if (instance.wasAppUpgrade()) {
                        Log.d("libcyd.app", "beacon: detected app upgrade");
                        BeaconEvent beaconEvent2 = new BeaconEvent(instance, 3);
                        beaconEvent2.statusCode = 2;
                        beaconEvent2.messageOne = instance.oldAppVersion;
                        beaconEvent2.messageTwo = instance.newAppVersion;
                        beaconEventMessage.addBeaconEvent(beaconEvent2);
                        z = true;
                    } else {
                        z = false;
                    }
                    if (instance.wasSdkUpgrade()) {
                        Log.d("libcyd.app", "beacon: detected sdk upgrade");
                        BeaconEvent beaconEvent3 = new BeaconEvent(instance, 3);
                        beaconEvent3.statusCode = 1;
                        beaconEvent3.messageOne = instance.oldSdkVersion;
                        beaconEvent3.messageTwo = instance.newSdkVersion;
                        beaconEventMessage.addBeaconEvent(beaconEvent3);
                        z = true;
                    }
                }
                if (z) {
                    Beacon.sendBeaconsInternal(beaconEventMessage);
                    CYDApplication instance2 = CYDApplication.getInstance();
                    if (instance2.isPhoneNumberVerified(context)) {
                        TelemetryHost telemetryHost = instance2.getTelemetryHost();
                        telemetryHost.putTelemetryEvent(new TelemetryEvent(instance.beaconIdentifier, null, 61, 0));
                        telemetryHost.uploadTelemetry(context);
                    }
                }
            }
        });
    }
}
