package android.support.p009v4.p010os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import p000a.p001a.p003b.p007c.AbstractC0014a;
/* renamed from: android.support.v4.os.ResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver.class */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new C0060a();

    /* renamed from: a */
    public final boolean f126a = false;

    /* renamed from: b */
    public final Handler f127b = null;

    /* renamed from: c */
    public AbstractC0014a f128c;

    /* renamed from: android.support.v4.os.ResultReceiver$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$a.class */
    public class C0060a implements Parcelable.Creator<ResultReceiver> {
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
    }

    /* renamed from: android.support.v4.os.ResultReceiver$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$b.class */
    public class BinderC0061b extends AbstractC0014a.AbstractBinderC0015a {
        public BinderC0061b() {
        }

        @Override // p000a.p001a.p003b.p007c.AbstractC0014a
        /* renamed from: b */
        public void mo39229b(int i, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.f127b;
            if (handler != null) {
                handler.post(new RunnableC0062c(i, bundle));
            } else {
                resultReceiver.mo39231a(i, bundle);
            }
        }
    }

    /* renamed from: android.support.v4.os.ResultReceiver$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$c.class */
    public class RunnableC0062c implements Runnable {

        /* renamed from: a */
        public final int f130a;

        /* renamed from: b */
        public final Bundle f131b;

        public RunnableC0062c(int i, Bundle bundle) {
            this.f130a = i;
            this.f131b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.mo39231a(this.f130a, this.f131b);
        }
    }

    public ResultReceiver(Parcel parcel) {
        this.f128c = AbstractC0014a.AbstractBinderC0015a.m39334a(parcel.readStrongBinder());
    }

    /* renamed from: a */
    public void mo39231a(int i, Bundle bundle) {
    }

    /* renamed from: b */
    public void m39230b(int i, Bundle bundle) {
        if (this.f126a) {
            Handler handler = this.f127b;
            if (handler != null) {
                handler.post(new RunnableC0062c(i, bundle));
            } else {
                mo39231a(i, bundle);
            }
        } else {
            AbstractC0014a aVar = this.f128c;
            if (aVar != null) {
                try {
                    aVar.mo39229b(i, bundle);
                } catch (RemoteException e) {
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f128c == null) {
                this.f128c = new BinderC0061b();
            }
            parcel.writeStrongBinder(this.f128c.asBinder());
        }
    }
}
