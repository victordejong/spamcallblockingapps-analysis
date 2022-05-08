package android.support.p001v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.p001v4.provider.FontsContractCompat;
import android.util.Log;
import com.privacystar.core.util.BlockingManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* renamed from: android.support.v4.content.LocalBroadcastManager */
/* loaded from: classes-dex2jar.jar:android/support/v4/content/LocalBroadcastManager.class */
public final class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private static LocalBroadcastManager mInstance;
    private static final Object mLock = new Object();
    private final Context mAppContext;
    private final Handler mHandler;
    private final HashMap<BroadcastReceiver, ArrayList<ReceiverRecord>> mReceivers = new HashMap<>();
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions = new HashMap<>();
    private final ArrayList<BroadcastRecord> mPendingBroadcasts = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.content.LocalBroadcastManager$BroadcastRecord */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/LocalBroadcastManager$BroadcastRecord.class */
    public static final class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent intent, ArrayList<ReceiverRecord> arrayList) {
            this.intent = intent;
            this.receivers = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.content.LocalBroadcastManager$ReceiverRecord */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/LocalBroadcastManager$ReceiverRecord.class */
    public static final class ReceiverRecord {
        boolean broadcasting;
        boolean dead;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.receiver = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.receiver);
            sb.append(" filter=");
            sb.append(this.filter);
            if (this.dead) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) { // from class: android.support.v4.content.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    LocalBroadcastManager.this.executePendingBroadcasts();
                }
            }
        };
    }

    @NonNull
    public static LocalBroadcastManager getInstance(@NonNull Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    void executePendingBroadcasts() {
        BroadcastRecord[] broadcastRecordArr;
        while (true) {
            synchronized (this.mReceivers) {
                int size = this.mPendingBroadcasts.size();
                if (size > 0) {
                    broadcastRecordArr = new BroadcastRecord[size];
                    this.mPendingBroadcasts.toArray(broadcastRecordArr);
                    this.mPendingBroadcasts.clear();
                } else {
                    return;
                }
            }
            for (BroadcastRecord broadcastRecord : broadcastRecordArr) {
                int size2 = broadcastRecord.receivers.size();
                for (int i = 0; i < size2; i++) {
                    ReceiverRecord receiverRecord = broadcastRecord.receivers.get(i);
                    if (!receiverRecord.dead) {
                        receiverRecord.receiver.onReceive(this.mAppContext, broadcastRecord.intent);
                    }
                }
            }
        }
    }

    public void registerReceiver(@NonNull BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
            ArrayList<ReceiverRecord> arrayList = this.mReceivers.get(broadcastReceiver);
            ArrayList<ReceiverRecord> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.mReceivers.put(broadcastReceiver, arrayList2);
            }
            arrayList2.add(receiverRecord);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<ReceiverRecord> arrayList3 = this.mActions.get(action);
                ArrayList<ReceiverRecord> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.mActions.put(action, arrayList4);
                }
                arrayList4.add(receiverRecord);
            }
        }
    }

    public boolean sendBroadcast(@NonNull Intent intent) {
        String str;
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v(TAG, "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<ReceiverRecord> arrayList = this.mActions.get(intent.getAction());
            if (arrayList != null) {
                if (z) {
                    Log.v(TAG, "Action list: " + arrayList);
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    ReceiverRecord receiverRecord = arrayList.get(i);
                    if (z) {
                        Log.v(TAG, "Matching against filter " + receiverRecord.filter);
                    }
                    if (!receiverRecord.broadcasting) {
                        int match = receiverRecord.filter.match(action, resolveTypeIfNeeded, scheme, data, categories, TAG);
                        if (match >= 0) {
                            if (z) {
                                Log.v(TAG, "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                            arrayList2.add(receiverRecord);
                            receiverRecord.broadcasting = true;
                        } else if (z) {
                            switch (match) {
                                case FontsContractCompat.FontRequestCallback.FAIL_REASON_SECURITY_VIOLATION /* -4 */:
                                    str = "category";
                                    break;
                                case -3:
                                    str = BlockingManager.ACTION_CONSTANT;
                                    break;
                                case -2:
                                    str = "data";
                                    break;
                                case -1:
                                    str = "type";
                                    break;
                                default:
                                    str = "unknown reason";
                                    break;
                            }
                            Log.v(TAG, "  Filter did not match: " + str);
                        }
                    } else if (z) {
                        Log.v(TAG, "  Filter's target already added");
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((ReceiverRecord) arrayList2.get(i2)).broadcasting = false;
                    }
                    this.mPendingBroadcasts.add(new BroadcastRecord(intent, arrayList2));
                    if (!this.mHandler.hasMessages(1)) {
                        this.mHandler.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void sendBroadcastSync(@NonNull Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    public void unregisterReceiver(@NonNull BroadcastReceiver broadcastReceiver) {
        synchronized (this.mReceivers) {
            ArrayList<ReceiverRecord> remove = this.mReceivers.remove(broadcastReceiver);
            if (remove != null) {
                for (int size = remove.size() - 1; size >= 0; size--) {
                    ReceiverRecord receiverRecord = remove.get(size);
                    receiverRecord.dead = true;
                    for (int i = 0; i < receiverRecord.filter.countActions(); i++) {
                        String action = receiverRecord.filter.getAction(i);
                        ArrayList<ReceiverRecord> arrayList = this.mActions.get(action);
                        if (arrayList != null) {
                            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                ReceiverRecord receiverRecord2 = arrayList.get(size2);
                                if (receiverRecord2.receiver == broadcastReceiver) {
                                    receiverRecord2.dead = true;
                                    arrayList.remove(size2);
                                }
                            }
                            if (arrayList.size() <= 0) {
                                this.mActions.remove(action);
                            }
                        }
                    }
                }
            }
        }
    }
}
