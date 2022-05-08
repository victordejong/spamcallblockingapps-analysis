package com.android.contacts.util;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Looper;
import android.provider.CallLog;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/CallLogAsync.class */
public class CallLogAsync {
    private static final String TAG = "CallLogAsync";

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CallLogAsync$GetLastOutgoingCallArgs.class */
    public static class GetLastOutgoingCallArgs {
        public final OnLastOutgoingCallComplete callback;
        public final Context context;

        public GetLastOutgoingCallArgs(Context context, OnLastOutgoingCallComplete onLastOutgoingCallComplete) {
            this.context = context;
            this.callback = onLastOutgoingCallComplete;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CallLogAsync$GetLastOutgoingCallTask.class */
    private class GetLastOutgoingCallTask extends AsyncTask<GetLastOutgoingCallArgs, Void, String> {
        private final OnLastOutgoingCallComplete mCallback;
        private String mNumber;

        public GetLastOutgoingCallTask(OnLastOutgoingCallComplete onLastOutgoingCallComplete) {
            this.mCallback = onLastOutgoingCallComplete;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public String doInBackground(GetLastOutgoingCallArgs... getLastOutgoingCallArgsArr) {
            String str = BuildConfig.FLAVOR;
            for (GetLastOutgoingCallArgs getLastOutgoingCallArgs : getLastOutgoingCallArgsArr) {
                str = CallLog.Calls.getLastOutgoingCall(getLastOutgoingCallArgs.context);
            }
            return str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(String str) {
            CallLogAsync.this.assertUiThread();
            this.mCallback.lastOutgoingCall(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CallLogAsync$OnLastOutgoingCallComplete.class */
    public interface OnLastOutgoingCallComplete {
        void lastOutgoingCall(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void assertUiThread() {
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new RuntimeException("Not on the UI thread!");
        }
    }

    public AsyncTask getLastOutgoingCall(GetLastOutgoingCallArgs getLastOutgoingCallArgs) {
        assertUiThread();
        return new GetLastOutgoingCallTask(getLastOutgoingCallArgs.callback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, getLastOutgoingCallArgs);
    }
}
