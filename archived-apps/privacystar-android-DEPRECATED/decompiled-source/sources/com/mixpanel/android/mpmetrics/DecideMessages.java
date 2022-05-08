package com.mixpanel.android.mpmetrics;

import android.content.Context;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.viewcrawler.UpdatesFromMixpanel;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/DecideMessages.class */
public class DecideMessages {
    private static final String LOGTAG = "MixpanelAPI.DecideUpdts";
    private static final Set<Integer> mLoadedVariants = new HashSet();
    private Boolean mAutomaticEventsEnabled;
    private Context mContext;
    private final OnNewResultsListener mListener;
    private final Set<Integer> mNotificationIds;
    private final String mToken;
    private final UpdatesFromMixpanel mUpdatesFromMixpanel;
    private String mDistinctId = null;
    private final List<InAppNotification> mUnseenNotifications = new LinkedList();
    private JSONArray mVariants = null;

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/DecideMessages$OnNewResultsListener.class */
    public interface OnNewResultsListener {
        void onNewResults();
    }

    public DecideMessages(Context context, String str, OnNewResultsListener onNewResultsListener, UpdatesFromMixpanel updatesFromMixpanel, HashSet<Integer> hashSet) {
        this.mContext = context;
        this.mToken = str;
        this.mListener = onNewResultsListener;
        this.mUpdatesFromMixpanel = updatesFromMixpanel;
        this.mNotificationIds = new HashSet(hashSet);
    }

    public String getDistinctId() {
        String str;
        synchronized (this) {
            str = this.mDistinctId;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
        r0 = r3.mUnseenNotifications.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        if (r5 != false) goto L_0x005b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
        r3.mUnseenNotifications.remove(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
        r8 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mixpanel.android.mpmetrics.InAppNotification getNotification(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0007:
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = r3
            java.util.List<com.mixpanel.android.mpmetrics.InAppNotification> r1 = r1.mUnseenNotifications     // Catch: all -> 0x0060
            int r1 = r1.size()     // Catch: all -> 0x0060
            if (r0 >= r1) goto L_0x005b
            r0 = r3
            java.util.List<com.mixpanel.android.mpmetrics.InAppNotification> r0 = r0.mUnseenNotifications     // Catch: all -> 0x0060
            r1 = r7
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x0060
            com.mixpanel.android.mpmetrics.InAppNotification r0 = (com.mixpanel.android.mpmetrics.InAppNotification) r0     // Catch: all -> 0x0060
            int r0 = r0.getId()     // Catch: all -> 0x0060
            r1 = r4
            if (r0 != r1) goto L_0x0055
            r0 = r3
            java.util.List<com.mixpanel.android.mpmetrics.InAppNotification> r0 = r0.mUnseenNotifications     // Catch: all -> 0x0060
            r1 = r7
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x0060
            com.mixpanel.android.mpmetrics.InAppNotification r0 = (com.mixpanel.android.mpmetrics.InAppNotification) r0     // Catch: all -> 0x0060
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            if (r0 != 0) goto L_0x005b
            r0 = r3
            java.util.List<com.mixpanel.android.mpmetrics.InAppNotification> r0 = r0.mUnseenNotifications     // Catch: all -> 0x0060
            r1 = r7
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x0060
            r0 = r6
            r8 = r0
            goto L_0x005b
        L_0x0055:
            int r7 = r7 + 1
            goto L_0x0007
        L_0x005b:
            r0 = r3
            monitor-exit(r0)
            r0 = r8
            return r0
        L_0x0060:
            r8 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.DecideMessages.getNotification(int, boolean):com.mixpanel.android.mpmetrics.InAppNotification");
    }

    public InAppNotification getNotification(boolean z) {
        synchronized (this) {
            if (this.mUnseenNotifications.isEmpty()) {
                MPLog.m307v(LOGTAG, "No unseen notifications exist, none will be returned.");
                return null;
            }
            InAppNotification remove = this.mUnseenNotifications.remove(0);
            if (z) {
                this.mUnseenNotifications.add(remove);
            } else {
                MPLog.m307v(LOGTAG, "Recording notification " + remove + " as seen.");
            }
            return remove;
        }
    }

    public String getToken() {
        return this.mToken;
    }

    public JSONArray getVariants() {
        JSONArray jSONArray;
        synchronized (this) {
            jSONArray = this.mVariants;
        }
        return jSONArray;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        if (r2.mVariants.length() > 0) goto L_0x0029;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasUpdatesAvailable() {
        /*
            r2 = this;
            r0 = r2
            monitor-enter(r0)
            r0 = r2
            java.util.List<com.mixpanel.android.mpmetrics.InAppNotification> r0 = r0.mUnseenNotifications     // Catch: all -> 0x002f
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x002f
            if (r0 == 0) goto L_0x0029
            r0 = r2
            org.json.JSONArray r0 = r0.mVariants     // Catch: all -> 0x002f
            if (r0 == 0) goto L_0x0024
            r0 = r2
            org.json.JSONArray r0 = r0.mVariants     // Catch: all -> 0x002f
            int r0 = r0.length()     // Catch: all -> 0x002f
            r3 = r0
            r0 = r3
            if (r0 <= 0) goto L_0x0024
            goto L_0x0029
        L_0x0024:
            r0 = 0
            r4 = r0
            goto L_0x002b
        L_0x0029:
            r0 = 1
            r4 = r0
        L_0x002b:
            r0 = r2
            monitor-exit(r0)
            r0 = r4
            return r0
        L_0x002f:
            r5 = move-exception
            r0 = r2
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.DecideMessages.hasUpdatesAvailable():boolean");
    }

    public Boolean isAutomaticEventsEnabled() {
        return this.mAutomaticEventsEnabled;
    }

    public void markNotificationAsUnseen(InAppNotification inAppNotification) {
        synchronized (this) {
            if (!MPConfig.DEBUG) {
                this.mUnseenNotifications.add(inAppNotification);
            }
        }
    }

    public void reportResults(List<InAppNotification> list, JSONArray jSONArray, JSONArray jSONArray2, boolean z) {
        boolean z2;
        synchronized (this) {
            int length = jSONArray2.length();
            this.mUpdatesFromMixpanel.setEventBindings(jSONArray);
            boolean z3 = false;
            for (InAppNotification inAppNotification : list) {
                int id = inAppNotification.getId();
                if (!this.mNotificationIds.contains(Integer.valueOf(id))) {
                    this.mNotificationIds.add(Integer.valueOf(id));
                    this.mUnseenNotifications.add(inAppNotification);
                    z3 = true;
                }
            }
            this.mVariants = jSONArray2;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z2 = false;
                    break;
                }
                try {
                } catch (JSONException e) {
                    MPLog.m310e(LOGTAG, "Could not convert variants[" + i + "] into a JSONObject while comparing the new variants", e);
                }
                if (!mLoadedVariants.contains(Integer.valueOf(jSONArray2.getJSONObject(i).getInt("id")))) {
                    z2 = true;
                    z3 = true;
                    break;
                }
                i++;
            }
            if (z2 && this.mVariants != null) {
                mLoadedVariants.clear();
                for (int i2 = 0; i2 < length; i2++) {
                    try {
                        mLoadedVariants.add(Integer.valueOf(this.mVariants.getJSONObject(i2).getInt("id")));
                    } catch (JSONException e2) {
                        MPLog.m310e(LOGTAG, "Could not convert variants[" + i2 + "] into a JSONObject while updating the map", e2);
                    }
                }
            }
            boolean z4 = z3;
            if (length == 0) {
                this.mVariants = new JSONArray();
                z4 = z3;
                if (mLoadedVariants.size() > 0) {
                    mLoadedVariants.clear();
                    z4 = true;
                }
            }
            this.mUpdatesFromMixpanel.storeVariants(this.mVariants);
            if (this.mAutomaticEventsEnabled == null && !z) {
                MPDbAdapter.getInstance(this.mContext).cleanupAutomaticEvents(this.mToken);
            }
            this.mAutomaticEventsEnabled = Boolean.valueOf(z);
            MPLog.m307v(LOGTAG, "New Decide content has become available. " + list.size() + " notifications and " + jSONArray2.length() + " experiments have been added.");
            if (z4 && this.mListener != null) {
                this.mListener.onNewResults();
            }
        }
    }

    public void setDistinctId(String str) {
        synchronized (this) {
            if (this.mDistinctId == null || !this.mDistinctId.equals(str)) {
                this.mUnseenNotifications.clear();
            }
            this.mDistinctId = str;
        }
    }

    public boolean shouldTrackAutomaticEvent() {
        return isAutomaticEventsEnabled() == null ? true : isAutomaticEventsEnabled().booleanValue();
    }
}
