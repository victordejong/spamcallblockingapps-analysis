package android.support.p001v4.p002os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.p001v4.p002os.IResultReceiver;
import androidx.annotation.RestrictTo;
@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* renamed from: android.support.v4.os.ResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver.class */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new Parcelable.Creator<ResultReceiver>() { // from class: android.support.v4.os.ResultReceiver.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    };
    public final Handler mHandler;
    public final boolean mLocal;
    public IResultReceiver mReceiver;

    /* renamed from: android.support.v4.os.ResultReceiver$MyResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$MyResultReceiver.class */
    public class MyResultReceiver extends IResultReceiver.Stub {
        public MyResultReceiver() {
        }

        @Override // android.support.p001v4.p002os.IResultReceiver
        public void send(int i, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.mHandler;
            if (handler != null) {
                handler.post(new MyRunnable(i, bundle));
            } else {
                resultReceiver.onReceiveResult(i, bundle);
            }
        }
    }

    /* renamed from: android.support.v4.os.ResultReceiver$MyRunnable */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$MyRunnable.class */
    public class MyRunnable implements Runnable {
        public final int mResultCode;
        public final Bundle mResultData;

        public MyRunnable(int i, Bundle bundle) {
            this.mResultCode = i;
            this.mResultData = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.onReceiveResult(this.mResultCode, this.mResultData);
        }
    }

    public ResultReceiver(Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    public ResultReceiver(Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = IResultReceiver.Stub.asInterface(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void onReceiveResult(int i, Bundle bundle) {
    }

    public void send(int i, Bundle bundle) {
        if (this.mLocal) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new MyRunnable(i, bundle));
            } else {
                onReceiveResult(i, bundle);
            }
        } else {
            IResultReceiver iResultReceiver = this.mReceiver;
            if (iResultReceiver != null) {
                try {
                    iResultReceiver.send(i, bundle);
                } catch (RemoteException e) {
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.mReceiver == null) {
                this.mReceiver = new MyResultReceiver();
            }
            parcel.writeStrongBinder(this.mReceiver.asBinder());
        }
    }
}
