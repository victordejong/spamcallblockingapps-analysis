package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.amazonaws.services.p017s3.AmazonS3;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferService */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferService.class */
public class TransferService extends Service {
    public TransferDBUtil dbUtil;
    public HandlerThread handlerThread;
    public volatile long lastActiveTime;
    public NetworkInfoReceiver networkInfoReceiver;

    /* renamed from: s3 */
    public AmazonS3 f813s3;
    public volatile int startId;
    public Handler updateHandler;
    public TransferStatusUpdater updater;
    public boolean shouldScan = true;
    public boolean isFirst = true;

    /* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferService$NetworkInfoReceiver */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver.class */
    public static class NetworkInfoReceiver extends BroadcastReceiver {
        public final ConnectivityManager connManager;
        public final Handler handler;

        public NetworkInfoReceiver(Context context, Handler handler) {
            this.handler = handler;
            this.connManager = (ConnectivityManager) context.getSystemService("connectivity");
        }

        public boolean isNetworkConnected() {
            NetworkInfo activeNetworkInfo = this.connManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                boolean isNetworkConnected = isNetworkConnected();
                String str = "Network connected: " + isNetworkConnected;
                this.handler.sendEmptyMessage(isNetworkConnected ? 200 : 300);
            }
        }
    }

    /* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferService$UpdateHandler */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler.class */
    public class UpdateHandler extends Handler {
        public UpdateHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 200) {
                TransferService.this.updateHandler.removeMessages(200);
                TransferService.this.checkTransfers();
            } else if (i == 100) {
                TransferService.this.execCommand((Intent) message.obj);
            } else if (i == 300) {
                TransferService.this.pauseAllForNetwork();
            } else {
                Log.e("TransferService", "Unknown command: " + message.what);
            }
        }
    }

    public void checkTransfers() {
        if (this.shouldScan && this.networkInfoReceiver.isNetworkConnected() && this.f813s3 != null) {
            loadTransfersFromDB();
            this.shouldScan = false;
        }
        removeCompletedTransfers();
        if (isActive()) {
            this.lastActiveTime = System.currentTimeMillis();
            this.updateHandler.sendEmptyMessageDelayed(200, 60000L);
            return;
        }
        stopSelf(this.startId);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if ((getApplicationInfo().flags & 2) != 0) {
            printWriter.printf("start id: %d\n", Integer.valueOf(this.startId));
            printWriter.printf("network status: %s\n", Boolean.valueOf(this.networkInfoReceiver.isNetworkConnected()));
            printWriter.printf("lastActiveTime: %s, shouldScan: %s\n", new Date(this.lastActiveTime), Boolean.valueOf(this.shouldScan));
            Map<Integer, TransferRecord> transfers = this.updater.getTransfers();
            printWriter.printf("# of active transfers: %d\n", Integer.valueOf(transfers.size()));
            for (TransferRecord transferRecord : transfers.values()) {
                printWriter.printf("bucket: %s, key: %s, status: %s, total size: %d, current: %d\n", transferRecord.bucketName, transferRecord.key, transferRecord.state, Long.valueOf(transferRecord.bytesTotal), Long.valueOf(transferRecord.bytesCurrent));
            }
            printWriter.flush();
        }
    }

    public void execCommand(Intent intent) {
        this.lastActiveTime = System.currentTimeMillis();
        String action = intent.getAction();
        int intExtra = intent.getIntExtra("id", 0);
        if (intExtra == 0) {
            Log.e("TransferService", "Invalid id: " + intExtra);
        } else if ("add_transfer".equals(action)) {
            if (this.updater.getTransfer(intExtra) != null) {
                String str = "Transfer has already been added: " + intExtra;
                return;
            }
            TransferRecord transferById = this.dbUtil.getTransferById(intExtra);
            if (transferById != null) {
                this.updater.addTransfer(transferById);
                transferById.start(this.f813s3, this.dbUtil, this.updater, this.networkInfoReceiver);
                return;
            }
            Log.e("TransferService", "Can't find transfer: " + intExtra);
        } else if ("pause_transfer".equals(action)) {
            TransferRecord transfer = this.updater.getTransfer(intExtra);
            TransferRecord transferRecord = transfer;
            if (transfer == null) {
                transferRecord = this.dbUtil.getTransferById(intExtra);
            }
            if (transferRecord != null) {
                transferRecord.pause(this.f813s3, this.updater);
            }
        } else if ("resume_transfer".equals(action)) {
            TransferRecord transfer2 = this.updater.getTransfer(intExtra);
            TransferRecord transferRecord2 = transfer2;
            if (transfer2 == null) {
                transferRecord2 = this.dbUtil.getTransferById(intExtra);
                if (transferRecord2 != null) {
                    this.updater.addTransfer(transferRecord2);
                } else {
                    Log.e("TransferService", "Can't find transfer: " + intExtra);
                }
            }
            transferRecord2.start(this.f813s3, this.dbUtil, this.updater, this.networkInfoReceiver);
        } else if ("cancel_transfer".equals(action)) {
            TransferRecord transfer3 = this.updater.getTransfer(intExtra);
            TransferRecord transferRecord3 = transfer3;
            if (transfer3 == null) {
                transferRecord3 = this.dbUtil.getTransferById(intExtra);
            }
            if (transferRecord3 != null) {
                transferRecord3.cancel(this.f813s3, this.updater);
            }
        } else {
            Log.e("TransferService", "Unknown action: " + action);
        }
    }

    public final boolean isActive() {
        boolean z = true;
        if (this.shouldScan) {
            return true;
        }
        for (TransferRecord transferRecord : this.updater.getTransfers().values()) {
            if (transferRecord.isRunning()) {
                return true;
            }
        }
        if (System.currentTimeMillis() - this.lastActiveTime >= 60000) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    public void loadTransfersFromDB() {
        Cursor queryAllTransfersWithType = this.dbUtil.queryAllTransfersWithType(TransferType.ANY);
        int i = 0;
        while (queryAllTransfersWithType.moveToNext()) {
            try {
                int i2 = queryAllTransfersWithType.getInt(queryAllTransfersWithType.getColumnIndexOrThrow("_id"));
                TransferState state = TransferState.getState(queryAllTransfersWithType.getString(queryAllTransfersWithType.getColumnIndexOrThrow(IapProductRealmObject.STATE)));
                if ((queryAllTransfersWithType.getInt(queryAllTransfersWithType.getColumnIndexOrThrow("part_num")) == 0 && (TransferState.WAITING.equals(state) || TransferState.WAITING_FOR_NETWORK.equals(state) || TransferState.RESUMED_WAITING.equals(state))) || TransferState.IN_PROGRESS.equals(state)) {
                    if (this.updater.getTransfer(i2) == null) {
                        TransferRecord transferRecord = new TransferRecord(i2);
                        transferRecord.updateFromDB(queryAllTransfersWithType);
                        if (transferRecord.start(this.f813s3, this.dbUtil, this.updater, this.networkInfoReceiver)) {
                            this.updater.addTransfer(transferRecord);
                            i++;
                        }
                    } else {
                        TransferRecord transfer = this.updater.getTransfer(i2);
                        if (!transfer.isRunning()) {
                            transfer.start(this.f813s3, this.dbUtil, this.updater, this.networkInfoReceiver);
                        }
                    }
                }
            } catch (Throwable th) {
                queryAllTransfersWithType.close();
                throw th;
            }
        }
        queryAllTransfersWithType.close();
        String str = i + " transfers are loaded from database";
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Can't bind to TransferService");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.dbUtil = new TransferDBUtil(getApplicationContext());
        this.updater = new TransferStatusUpdater(this.dbUtil);
        this.handlerThread = new HandlerThread("TransferService-AWSTransferUpdateHandlerThread");
        this.handlerThread.start();
        setHandlerLooper(this.handlerThread.getLooper());
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            unregisterReceiver(this.networkInfoReceiver);
        } catch (IllegalArgumentException e) {
        }
        this.handlerThread.quit();
        TransferThreadPool.closeThreadPool();
        S3ClientReference.clear();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.startId = i2;
        if (intent == null) {
            return 3;
        }
        this.f813s3 = S3ClientReference.get(intent.getStringExtra("s3_reference_key"));
        if (this.f813s3 == null) {
            stopSelf(i2);
            return 2;
        }
        Handler handler = this.updateHandler;
        handler.sendMessage(handler.obtainMessage(100, intent));
        if (!this.isFirst) {
            return 2;
        }
        registerReceiver(this.networkInfoReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.isFirst = false;
        return 2;
    }

    public void pauseAllForNetwork() {
        for (TransferRecord transferRecord : this.updater.getTransfers().values()) {
            AmazonS3 amazonS3 = this.f813s3;
            if (!(amazonS3 == null || transferRecord == null || !transferRecord.pause(amazonS3, this.updater))) {
                this.updater.updateState(transferRecord.f812id, TransferState.WAITING_FOR_NETWORK);
            }
        }
        this.shouldScan = true;
    }

    public final void removeCompletedTransfers() {
        ArrayList<Integer> arrayList = new ArrayList();
        for (TransferRecord transferRecord : this.updater.getTransfers().values()) {
            if (TransferState.COMPLETED.equals(transferRecord.state)) {
                arrayList.add(Integer.valueOf(transferRecord.f812id));
            }
        }
        for (Integer num : arrayList) {
            this.updater.removeTransfer(num.intValue());
        }
    }

    public void setHandlerLooper(Looper looper) {
        this.updateHandler = new UpdateHandler(looper);
        this.networkInfoReceiver = new NetworkInfoReceiver(getApplicationContext(), this.updateHandler);
    }
}
