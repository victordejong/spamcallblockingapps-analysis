package com.android.contacts.vcard;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.activities.RequestStoragePermissionsActivity;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.p;
import com.android.contacts.util.AccountSelectionUtil;
import com.android.contacts.util.AsusStorageUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.VCardService;
import com.android.vcard.VCardParser;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity.class */
public class ImportVCardActivity extends p {
    static final String CACHED_URIS = "cached_uris";
    static final String ENTRY_COUNT_ARRAY = "entry_count";
    static final String ESTIMATED_CHARSET_ARRAY = "estimated_charset";
    static final String ESTIMATED_VCARD_TYPE_ARRAY = "estimated_vcard_type";
    private static final int FAILURE_NOTIFICATION_ID = 1;
    private static final String LOG_TAG = "VCardImport";
    private static final String SECURE_DIRECTORY_NAME = ".android_secure";
    private static final int SELECT_ACCOUNT = 0;
    static final String VCARD_URI_ARRAY = "vcard_uri";
    static final String VCARD_VERSION_ARRAY = "vcard_version";
    public static final int VCARD_VERSION_AUTO_DETECT = 0;
    public static final int VCARD_VERSION_V21 = 1;
    public static final int VCARD_VERSION_V30 = 2;
    private static boolean isWorking = false;
    private AccountWithDataSet mAccount;
    private AccountSelectionUtil.AccountSelectedListener mAccountSelectionListener;
    private List<VCardFile> mAllVCardFileList;
    private ImportRequestConnection mConnection;
    private String mErrorMessage;
    VCardImportExportListener mListener;
    private ProgressDialog mProgressDialogForCachingVCard;
    private ProgressDialog mProgressDialogForScanVCard;
    private VCardCacheThread mVCardCacheThread;
    private VCardScanThread mVCardScanThread;
    private Handler mHandler = new Handler();
    private CancelListener mCancelListener = new CancelListener();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$CancelListener.class */
    public class CancelListener implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {
        private CancelListener() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ImportVCardActivity.this.finish();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ImportVCardActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$DialogDisplayer.class */
    public class DialogDisplayer implements Runnable {
        private final int mResId;

        public DialogDisplayer(int i) {
            this.mResId = i;
        }

        public DialogDisplayer(String str) {
            this.mResId = 2131296707;
            ImportVCardActivity.this.mErrorMessage = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!ImportVCardActivity.this.isFinishing()) {
                ImportVCardActivity.this.showDialog(this.mResId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection.class */
    public class ImportRequestConnection implements ServiceConnection {
        private VCardService mService;

        private ImportRequestConnection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.mService = ((VCardService.MyBinder) iBinder).getService();
            Log.i(ImportVCardActivity.LOG_TAG, String.format("Connected to VCardService. Kick a vCard cache thread (uri: %s)", ImportVCardActivity.this.mVCardCacheThread == null ? "mVCardCacheThread is null" : Arrays.toString(ImportVCardActivity.this.mVCardCacheThread.getSourceUris())));
            ImportVCardActivity.this.mVCardCacheThread.start();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i(ImportVCardActivity.LOG_TAG, "Disconnected from VCardService");
        }

        public void sendImportRequest(List<ImportRequest> list) {
            Log.i(ImportVCardActivity.LOG_TAG, "Send an import request");
            this.mService.handleImportRequest(list, ImportVCardActivity.this.mListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener.class */
    public class ImportTypeSelectedListener implements DialogInterface.OnClickListener {
        public static final int IMPORT_ALL = 2;
        public static final int IMPORT_MULTIPLE = 1;
        public static final int IMPORT_ONE = 0;
        public static final int IMPORT_TYPE_SIZE = 3;
        private int mCurrentIndex;

        private ImportTypeSelectedListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                switch (this.mCurrentIndex) {
                    case 1:
                        ImportVCardActivity.this.showDialog(2131296721);
                        return;
                    case 2:
                        ImportVCardActivity.this.importVCardFromSDCard(ImportVCardActivity.this.mAllVCardFileList);
                        return;
                    default:
                        ImportVCardActivity.this.showDialog(2131296722);
                        return;
                }
            } else if (i == -2) {
                ImportVCardActivity.this.finish();
            } else {
                this.mCurrentIndex = i;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$VCardCacheThread.class */
    private class VCardCacheThread extends Thread implements DialogInterface.OnCancelListener {
        private boolean mCanceled;
        private final Uri[] mSourceUris;
        private VCardParser mVCardParser;
        private PowerManager.WakeLock mWakeLock;
        private final byte[] mSource = null;
        private final String mDisplayName = null;

        public VCardCacheThread(Uri[] uriArr) {
            this.mSourceUris = uriArr;
            this.mWakeLock = ((PowerManager) ImportVCardActivity.this.getSystemService("power")).newWakeLock(536870918, ImportVCardActivity.LOG_TAG);
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0197 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x009c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.android.contacts.vcard.ImportRequest constructImportRequest(byte[] r12, android.net.Uri r13, java.lang.String r14) {
            /*
                Method dump skipped, instructions count: 659
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.ImportVCardActivity.VCardCacheThread.constructImportRequest(byte[], android.net.Uri, java.lang.String):com.android.contacts.vcard.ImportRequest");
        }

        private Uri copyTo(Uri uri, String str) {
            FileChannel fileChannel;
            ReadableByteChannel readableByteChannel;
            Log.i(ImportVCardActivity.LOG_TAG, String.format("Copy a Uri to app local storage (%s -> %s)", uri, str));
            ImportVCardActivity importVCardActivity = ImportVCardActivity.this;
            try {
                readableByteChannel = Channels.newChannel(importVCardActivity.getContentResolver().openInputStream(uri));
                try {
                    Uri parse = Uri.parse(importVCardActivity.getFileStreamPath(str).toURI().toString());
                    fileChannel = importVCardActivity.openFileOutput(str, 0).getChannel();
                    try {
                        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(8192);
                        while (true) {
                            if (readableByteChannel.read(allocateDirect) == -1) {
                                allocateDirect.flip();
                                while (allocateDirect.hasRemaining()) {
                                    fileChannel.write(allocateDirect);
                                }
                                if (readableByteChannel != null) {
                                    try {
                                        readableByteChannel.close();
                                    } catch (IOException e) {
                                        Log.w(ImportVCardActivity.LOG_TAG, "Failed to close inputChannel.");
                                    }
                                }
                                if (fileChannel != null) {
                                    try {
                                        fileChannel.close();
                                    } catch (IOException e2) {
                                        Log.w(ImportVCardActivity.LOG_TAG, "Failed to close outputChannel");
                                    }
                                }
                            } else if (this.mCanceled) {
                                Log.d(ImportVCardActivity.LOG_TAG, "Canceled during caching " + uri);
                                if (readableByteChannel != null) {
                                    try {
                                        readableByteChannel.close();
                                    } catch (IOException e3) {
                                        Log.w(ImportVCardActivity.LOG_TAG, "Failed to close inputChannel.");
                                    }
                                }
                                parse = null;
                                if (fileChannel != null) {
                                    try {
                                        fileChannel.close();
                                        parse = null;
                                    } catch (IOException e4) {
                                        Log.w(ImportVCardActivity.LOG_TAG, "Failed to close outputChannel");
                                        parse = null;
                                    }
                                }
                            } else {
                                allocateDirect.flip();
                                fileChannel.write(allocateDirect);
                                allocateDirect.compact();
                            }
                        }
                        return parse;
                    } catch (Throwable th) {
                        th = th;
                        if (readableByteChannel != null) {
                            try {
                                readableByteChannel.close();
                            } catch (IOException e5) {
                                Log.w(ImportVCardActivity.LOG_TAG, "Failed to close inputChannel.");
                            }
                        }
                        if (fileChannel != null) {
                            try {
                                fileChannel.close();
                            } catch (IOException e6) {
                                Log.w(ImportVCardActivity.LOG_TAG, "Failed to close outputChannel");
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileChannel = null;
                }
            } catch (Throwable th3) {
                th = th3;
                fileChannel = null;
                readableByteChannel = null;
            }
        }

        public void cancel() {
            this.mCanceled = true;
            if (this.mVCardParser != null) {
                this.mVCardParser.cancel();
            }
        }

        public void finalize() {
            if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
                Log.w(ImportVCardActivity.LOG_TAG, "WakeLock is being held.");
                this.mWakeLock.release();
            }
        }

        public Uri[] getSourceUris() {
            return this.mSourceUris;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            Log.i(ImportVCardActivity.LOG_TAG, "Cancel request has come. Abort caching vCard.");
            cancel();
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x0475, code lost:
            r17.close();
            r11 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0482, code lost:
            r17 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x0484, code lost:
            r11 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x0489, code lost:
            if (r11 != null) goto L_0x048c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:106:0x048c, code lost:
            r11.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0495, code lost:
            throw r17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x04db, code lost:
            r11 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x04dd, code lost:
            android.util.Log.e(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "Maybe the file is in wrong format", r11);
            r7.this$0.showFailureNotification(2131755647);
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x04f4, code lost:
            android.util.Log.i(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "Finished caching vCard.");
            r7.mWakeLock.release();
            r7.this$0.getApplicationContext().unbindService(r7.this$0.mConnection);
            r7.this$0.mProgressDialogForCachingVCard.dismiss();
            r7.this$0.mProgressDialogForCachingVCard = null;
            r0 = com.android.contacts.vcard.ImportVCardActivity.isWorking = false;
            r7.this$0.finish();
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x0535, code lost:
            r11 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x0537, code lost:
            android.util.Log.e(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "Unexpected IOException", r11);
            r7.this$0.showFailureNotification(2131755644);
         */
        /* JADX WARN: Code restructure failed: missing block: B:117:0x054e, code lost:
            android.util.Log.i(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "Finished caching vCard.");
            r7.mWakeLock.release();
            r7.this$0.getApplicationContext().unbindService(r7.this$0.mConnection);
            r7.this$0.mProgressDialogForCachingVCard.dismiss();
            r7.this$0.mProgressDialogForCachingVCard = null;
            r0 = com.android.contacts.vcard.ImportVCardActivity.isWorking = false;
            r7.this$0.finish();
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x05a8, code lost:
            r17 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x05ad, code lost:
            r19 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:0x05b5, code lost:
            r11 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:123:0x05bb, code lost:
            r19 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:145:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:146:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:147:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0239, code lost:
            r0 = copyTo(r0, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0247, code lost:
            if (r7.mCanceled == false) goto L_0x02cb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x024a, code lost:
            android.util.Log.i(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "vCard cache operation is canceled.");
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x02cd, code lost:
            if (r0 != null) goto L_0x0336;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x02d0, code lost:
            android.util.Log.w(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "destUri is null");
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0336, code lost:
            r7.this$0.grantUriPermission("com.asus.contacts", r0, 1);
            r17 = r0.query(r0, new java.lang.String[]{"_display_name"}, null, null, null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x035b, code lost:
            if (r17 == null) goto L_0x05bb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x035e, code lost:
            r11 = r17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0369, code lost:
            if (r17.getCount() <= 0) goto L_0x05bb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0377, code lost:
            if (r17.moveToFirst() == false) goto L_0x05bb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x0386, code lost:
            if (r17.getCount() <= 1) goto L_0x03b7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x03a2, code lost:
            android.util.Log.w(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "Unexpected multiple rows: " + r17.getCount());
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x03bb, code lost:
            r0 = r17.getColumnIndex("_display_name");
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x03c9, code lost:
            if (r0 < 0) goto L_0x05bb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x03d0, code lost:
            r19 = r17.getString(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x03dd, code lost:
            r11 = r19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x03e1, code lost:
            if (r17 == null) goto L_0x03ef;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x03e4, code lost:
            r17.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x03ed, code lost:
            r11 = r19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x03f4, code lost:
            if (android.text.TextUtils.isEmpty(r11) != false) goto L_0x03f7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x03f7, code lost:
            r11 = r0.getLastPathSegment();
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x03ff, code lost:
            r0 = constructImportRequest(null, r0, r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x040d, code lost:
            if (r7.mCanceled != false) goto L_0x0410;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0410, code lost:
            android.util.Log.i(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "vCard cache operation is canceled.");
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x041b, code lost:
            android.util.Log.i(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, "Finished caching vCard.");
            r7.mWakeLock.release();
            r7.this$0.getApplicationContext().unbindService(r7.this$0.mConnection);
            r7.this$0.mProgressDialogForCachingVCard.dismiss();
            r7.this$0.mProgressDialogForCachingVCard = null;
            r0 = com.android.contacts.vcard.ImportVCardActivity.isWorking = false;
            r7.this$0.finish();
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x045c, code lost:
            r19 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x045e, code lost:
            r17 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0465, code lost:
            android.util.Log.w(com.android.contacts.vcard.ImportVCardActivity.LOG_TAG, r19.toString());
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x0472, code lost:
            if (r17 != null) goto L_0x0475;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 1473
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.ImportVCardActivity.VCardCacheThread.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$VCardFile.class */
    public static class VCardFile {
        private final String mCanonicalPath;
        private final long mLastModified;
        private final String mName;

        public VCardFile(String str, String str2, long j) {
            this.mName = str;
            this.mCanonicalPath = str2;
            this.mLastModified = j;
        }

        public String getCanonicalPath() {
            return this.mCanonicalPath;
        }

        public long getLastModified() {
            return this.mLastModified;
        }

        public String getName() {
            return this.mName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$VCardScanThread.class */
    public class VCardScanThread extends Thread implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {
        private File mRootDirectory;
        private PowerManager.WakeLock mWakeLock;
        private boolean mCanceled = false;
        private boolean mGotIOException = false;
        private Set<String> mCheckedPaths = new HashSet();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException.class */
        public class CanceledException extends Exception {
            private CanceledException() {
            }
        }

        public VCardScanThread(File file) {
            this.mRootDirectory = file;
            this.mWakeLock = ((PowerManager) ImportVCardActivity.this.getSystemService("power")).newWakeLock(536870918, ImportVCardActivity.LOG_TAG);
        }

        private void getVCardFileRecursively(File file) {
            File[] listFiles;
            if (this.mCanceled) {
                throw new CanceledException();
            } else if (file.listFiles() != null) {
                for (File file2 : file.listFiles()) {
                    if (this.mCanceled) {
                        throw new CanceledException();
                    }
                    String canonicalPath = file2.getCanonicalPath();
                    if (!this.mCheckedPaths.contains(canonicalPath)) {
                        this.mCheckedPaths.add(canonicalPath);
                        if (file2.isDirectory()) {
                            getVCardFileRecursively(file2);
                        } else if (canonicalPath.toLowerCase().endsWith(".vcf") && file2.canRead()) {
                            ImportVCardActivity.this.mAllVCardFileList.add(new VCardFile(file2.getName(), canonicalPath, file2.lastModified()));
                        }
                    }
                }
            } else if (!TextUtils.equals(file.getCanonicalPath(), this.mRootDirectory.getCanonicalPath().concat(ImportVCardActivity.SECURE_DIRECTORY_NAME))) {
                Log.w(ImportVCardActivity.LOG_TAG, "listFiles() returned null (directory: " + file + ")");
            }
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            this.mCanceled = true;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -2) {
                this.mCanceled = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ImportVCardActivity.this.mAllVCardFileList = new Vector();
            try {
                this.mWakeLock.acquire();
                getVCardFileRecursively(this.mRootDirectory);
            } catch (CanceledException e) {
                this.mCanceled = true;
            } catch (IOException e2) {
                this.mGotIOException = true;
            } finally {
                this.mWakeLock.release();
            }
            if (this.mCanceled) {
                ImportVCardActivity.this.mAllVCardFileList = null;
            }
            if (ImportVCardActivity.this.mProgressDialogForScanVCard != null) {
                ImportVCardActivity.this.mProgressDialogForScanVCard.dismiss();
                ImportVCardActivity.this.mProgressDialogForScanVCard = null;
            }
            if (this.mGotIOException) {
                ImportVCardActivity.this.runOnUiThread(new DialogDisplayer(2131296713));
            } else if (this.mCanceled) {
                ImportVCardActivity.this.finish();
            } else if (ImportVCardActivity.this.mAllVCardFileList.size() == 0) {
                ImportVCardActivity.this.runOnUiThread(new DialogDisplayer(2131296724));
            } else {
                ImportVCardActivity.this.startVCardSelectAndImport();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener.class */
    public class VCardSelectedListener implements DialogInterface.OnClickListener, DialogInterface.OnMultiChoiceClickListener {
        private int mCurrentIndex = 0;
        private Set<Integer> mSelectedIndexSet;

        public VCardSelectedListener(boolean z) {
            if (z) {
                this.mSelectedIndexSet = new HashSet();
            }
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                if (this.mSelectedIndexSet != null) {
                    ArrayList arrayList = new ArrayList();
                    int size = ImportVCardActivity.this.mAllVCardFileList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.mSelectedIndexSet.contains(Integer.valueOf(i2))) {
                            arrayList.add(ImportVCardActivity.this.mAllVCardFileList.get(i2));
                        }
                    }
                    ImportVCardActivity.this.importVCardFromSDCard(arrayList);
                    return;
                }
                ImportVCardActivity.this.importVCardFromSDCard((VCardFile) ImportVCardActivity.this.mAllVCardFileList.get(this.mCurrentIndex));
            } else if (i == -2) {
                ImportVCardActivity.this.finish();
            } else {
                this.mCurrentIndex = i;
                if (this.mSelectedIndexSet == null) {
                    return;
                }
                if (this.mSelectedIndexSet.contains(Integer.valueOf(i))) {
                    this.mSelectedIndexSet.remove(Integer.valueOf(i));
                } else {
                    this.mSelectedIndexSet.add(Integer.valueOf(i));
                }
            }
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public void onClick(DialogInterface dialogInterface, int i, boolean z) {
            if (this.mSelectedIndexSet == null || this.mSelectedIndexSet.contains(Integer.valueOf(i)) == z) {
                Log.e(ImportVCardActivity.LOG_TAG, String.format("Inconsist state in index %d (%s)", Integer.valueOf(i), ((VCardFile) ImportVCardActivity.this.mAllVCardFileList.get(i)).getCanonicalPath()));
            } else {
                onClick(dialogInterface, i);
            }
        }
    }

    private void doScanExternalStorageAndImportVCard() {
        if (!PhoneCapabilityTester.isKDDISku()) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (!externalStorageDirectory.exists() || !externalStorageDirectory.isDirectory() || !externalStorageDirectory.canRead()) {
                showDialog(2131296718);
                return;
            }
            this.mVCardScanThread = new VCardScanThread(externalStorageDirectory);
            this.mVCardScanThread.start();
            showDialog(2131296719);
        } else if (AsusStorageUtils.isMicroSDStorageExist(this)) {
            this.mVCardScanThread = new VCardScanThread(AsusStorageUtils.getMicroSDCardDirectory());
            this.mVCardScanThread.start();
            showDialog(2131296719);
        } else {
            showDialog(2131296718);
        }
    }

    private Dialog getSelectImportTypeDialog() {
        ImportTypeSelectedListener importTypeSelectedListener = new ImportTypeSelectedListener();
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(this).setTitle(2131756089).setPositiveButton(17039370, importTypeSelectedListener).setOnCancelListener(this.mCancelListener).setNegativeButton(17039360, this.mCancelListener);
        negativeButton.setSingleChoiceItems(new String[]{getString(2131755702), getString(2131755701), getString(2131755692)}, 0, importTypeSelectedListener);
        return negativeButton.create();
    }

    private Dialog getVCardFileSelectDialog(boolean z) {
        int size = this.mAllVCardFileList.size();
        VCardSelectedListener vCardSelectedListener = new VCardSelectedListener(z);
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(this).setTitle(2131756089).setPositiveButton(17039370, vCardSelectedListener).setOnCancelListener(this.mCancelListener).setNegativeButton(17039360, this.mCancelListener);
        CharSequence[] charSequenceArr = new CharSequence[size];
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for (int i = 0; i < size; i++) {
            VCardFile vCardFile = this.mAllVCardFileList.get(i);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) vCardFile.getName());
            spannableStringBuilder.append('\n');
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) ("(" + simpleDateFormat.format(new Date(vCardFile.getLastModified())) + ")"));
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.7f), length, spannableStringBuilder.length(), 33);
            charSequenceArr[i] = spannableStringBuilder;
        }
        if (z) {
            negativeButton.setMultiChoiceItems(charSequenceArr, (boolean[]) null, vCardSelectedListener);
        } else {
            negativeButton.setSingleChoiceItems(charSequenceArr, 0, vCardSelectedListener);
        }
        return negativeButton.create();
    }

    private void importVCard(Uri uri) {
        importVCard(new Uri[]{uri});
    }

    private void importVCard(final Uri[] uriArr) {
        runOnUiThread(new Runnable() { // from class: com.android.contacts.vcard.ImportVCardActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if (!ImportVCardActivity.this.isFinishing()) {
                    ImportVCardActivity.this.mVCardCacheThread = new VCardCacheThread(uriArr);
                    ImportVCardActivity.this.mListener = new NotificationImportExportListener(ImportVCardActivity.this);
                    ImportVCardActivity.this.showDialog(2131296701);
                }
            }
        });
    }

    private void importVCard(String[] strArr) {
        int length = strArr.length;
        Uri[] uriArr = new Uri[length];
        for (int i = 0; i < length; i++) {
            uriArr[i] = Uri.parse(strArr[i]);
        }
        importVCard(uriArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void importVCardFromSDCard(VCardFile vCardFile) {
        importVCard(new Uri[]{Uri.parse("file://" + vCardFile.getCanonicalPath())});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void importVCardFromSDCard(List<VCardFile> list) {
        String[] strArr = new String[list.size()];
        Iterator<VCardFile> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = "file://" + it.next().getCanonicalPath();
            i++;
        }
        importVCard(strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startImport() {
        Uri data = getIntent().getData();
        if (data != null) {
            Log.i(LOG_TAG, "Starting vCard import using Uri " + data);
            importVCard(data);
            return;
        }
        Log.i(LOG_TAG, "Start vCard without Uri. The user will select vCard manually.");
        doScanExternalStorageAndImportVCard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startVCardSelectAndImport() {
        int size = this.mAllVCardFileList.size();
        if (getResources().getBoolean(2130968589) || size == 1) {
            importVCardFromSDCard(this.mAllVCardFileList);
        } else if (getResources().getBoolean(2130968580)) {
            runOnUiThread(new DialogDisplayer(2131296720));
        } else {
            runOnUiThread(new DialogDisplayer(2131296722));
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 0) {
            return;
        }
        if (i2 == -1) {
            this.mAccount = new AccountWithDataSet(intent.getStringExtra(SelectAccountActivity.ACCOUNT_NAME), intent.getStringExtra(SelectAccountActivity.ACCOUNT_TYPE), intent.getStringExtra(SelectAccountActivity.DATA_SET));
            if (!isWorking) {
                startImport();
                return;
            }
            return;
        }
        if (i2 != 0) {
            Log.w(LOG_TAG, "Result code was not OK nor CANCELED: " + i2);
        }
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        String str2;
        String str3;
        super.onCreate(bundle);
        if (!RequestStoragePermissionsActivity.startPermissionActivity(this)) {
            Intent intent = getIntent();
            if (intent != null) {
                str3 = intent.getStringExtra(SelectAccountActivity.ACCOUNT_NAME);
                str2 = intent.getStringExtra(SelectAccountActivity.ACCOUNT_TYPE);
                str = intent.getStringExtra(SelectAccountActivity.DATA_SET);
            } else {
                Log.e(LOG_TAG, "intent does not exist");
                str = null;
                str2 = null;
                str3 = null;
            }
            if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2)) {
                List<AccountWithDataSet> a2 = a.a(this).a(true);
                if (a2.size() == 0) {
                    this.mAccount = null;
                } else if (a2.size() == 1) {
                    this.mAccount = a2.get(0);
                } else {
                    this.mAccountSelectionListener = new AccountSelectionUtil.AccountSelectedListener(this, a2, 2131755695) { // from class: com.android.contacts.vcard.ImportVCardActivity.2
                        @Override // com.android.contacts.util.AccountSelectionUtil.AccountSelectedListener, android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                            ImportVCardActivity.this.mAccount = this.mAccountList.get(i);
                            if (!ImportVCardActivity.isWorking) {
                                ImportVCardActivity.this.startImport();
                            }
                            ImportVCardActivity.this.finish();
                        }
                    };
                    showDialog(2131755695);
                    return;
                }
            } else {
                this.mAccount = new AccountWithDataSet(str3, str2, str);
            }
            if (!isWorking) {
                startImport();
            }
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        Dialog create;
        switch (i) {
            case 2131296701:
                if (this.mProgressDialogForCachingVCard == null) {
                    String string = getString(2131755231);
                    String string2 = getString(2131755230);
                    this.mProgressDialogForCachingVCard = new ProgressDialog(this);
                    this.mProgressDialogForCachingVCard.setTitle(string);
                    this.mProgressDialogForCachingVCard.setMessage(string2);
                    this.mProgressDialogForCachingVCard.setProgressStyle(0);
                    this.mProgressDialogForCachingVCard.setOnCancelListener(this.mVCardCacheThread);
                    if (!isWorking) {
                        startVCardService();
                    }
                }
                create = this.mProgressDialogForCachingVCard;
                break;
            case 2131296707:
                String str = this.mErrorMessage;
                String str2 = str;
                if (TextUtils.isEmpty(str)) {
                    Log.e(LOG_TAG, "Error message is null while it must not.");
                    str2 = getString(2131755650);
                }
                create = new AlertDialog.Builder(this).setTitle(getString(2131756045)).setIconAttribute(16843605).setMessage(str2).setOnCancelListener(this.mCancelListener).setPositiveButton(17039370, this.mCancelListener).create();
                break;
            case 2131296713:
                create = new AlertDialog.Builder(this).setIconAttribute(16843605).setMessage(getString(2131756078, new Object[]{getString(2131755644)})).setOnCancelListener(this.mCancelListener).setPositiveButton(17039370, this.mCancelListener).create();
                break;
            case 2131296718:
                create = new AlertDialog.Builder(this).setIconAttribute(16843605).setMessage(PhoneCapabilityTester.isKDDISku() ? 2131755724 : 2131755910).setOnCancelListener(this.mCancelListener).setPositiveButton(17039370, this.mCancelListener).create();
                break;
            case 2131296719:
                if (this.mProgressDialogForScanVCard == null) {
                    this.mProgressDialogForScanVCard = ProgressDialog.show(this, BuildConfig.FLAVOR, getString(PhoneCapabilityTester.isKDDISku() ? 2131755725 : 2131756085), true, false);
                    this.mProgressDialogForScanVCard.setOnCancelListener(this.mVCardScanThread);
                }
                create = this.mProgressDialogForScanVCard;
                break;
            case 2131296720:
                create = getSelectImportTypeDialog();
                break;
            case 2131296721:
                create = getVCardFileSelectDialog(true);
                break;
            case 2131296722:
                create = getVCardFileSelectDialog(false);
                break;
            case 2131296724:
                create = new AlertDialog.Builder(this).setMessage(getString(PhoneCapabilityTester.isKDDISku() ? 2131755722 : 2131755694)).setOnCancelListener(this.mCancelListener).setPositiveButton(17039370, this.mCancelListener).create();
                break;
            case 2131755695:
                if (this.mAccountSelectionListener != null) {
                    create = AccountSelectionUtil.getSelectAccountDialog(this, i, this.mAccountSelectionListener, this.mCancelListener);
                    break;
                } else {
                    throw new NullPointerException("mAccountSelectionListener must not be null.");
                }
            default:
                create = super.onCreateDialog(i, bundle);
                break;
        }
        return create;
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.mProgressDialogForCachingVCard != null) {
            Log.i(LOG_TAG, "Cache thread is still running. Show progress dialog again.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        setVisible(true);
    }

    void showFailureNotification(int i) {
        ((NotificationManager) getSystemService("notification")).notify("VCardServiceFailure", 1, NotificationImportExportListener.constructImportFailureNotification(this, getString(i)));
        this.mHandler.post(new Runnable() { // from class: com.android.contacts.vcard.ImportVCardActivity.3
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(ImportVCardActivity.this, ImportVCardActivity.this.getString(2131756445), 1).show();
            }
        });
    }

    void startVCardService() {
        this.mConnection = new ImportRequestConnection();
        Log.i(LOG_TAG, "Bind to VCardService.");
        startService(new Intent(this, VCardService.class));
        getApplicationContext().bindService(new Intent(this, VCardService.class), this.mConnection, 1);
    }
}
