package android.support.p014v4.p015os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.p014v4.p015os.AbstractC0221a;
/* renamed from: android.support.v4.os.ResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver.class */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new C0224b();

    /* renamed from: a */
    final boolean f486a = false;

    /* renamed from: b */
    final Handler f487b = null;

    /* renamed from: c */
    AbstractC0221a f488c;

    /* renamed from: android.support.v4.os.ResultReceiver$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$a.class */
    final class BinderC0219a extends AbstractC0221a.AbstractBinderC0222a {
        BinderC0219a() {
        }

        @Override // android.support.p014v4.p015os.AbstractC0221a
        /* renamed from: a */
        public final void mo9981a(int i, Bundle bundle) {
            if (ResultReceiver.this.f487b != null) {
                ResultReceiver.this.f487b.post(new RunnableC0220b(i, bundle));
            } else {
                ResultReceiver.this.mo9984a(i, bundle);
            }
        }
    }

    /* renamed from: android.support.v4.os.ResultReceiver$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$b.class */
    final class RunnableC0220b implements Runnable {

        /* renamed from: a */
        final int f490a;

        /* renamed from: b */
        final Bundle f491b;

        RunnableC0220b(int i, Bundle bundle) {
            this.f490a = i;
            this.f491b = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ResultReceiver.this.mo9984a(this.f490a, this.f491b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResultReceiver(Parcel parcel) {
        this.f488c = AbstractC0221a.AbstractBinderC0222a.m9982a(parcel.readStrongBinder());
    }

    /* renamed from: a */
    protected void mo9984a(int i, Bundle bundle) {
    }

    /* renamed from: b */
    public final void m9983b(int i, Bundle bundle) {
        if (this.f486a) {
            Handler handler = this.f487b;
            if (handler != null) {
                handler.post(new RunnableC0220b(i, bundle));
            } else {
                mo9984a(i, bundle);
            }
        } else {
            AbstractC0221a aVar = this.f488c;
            if (aVar != null) {
                try {
                    aVar.mo9981a(i, bundle);
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
            if (this.f488c == null) {
                this.f488c = new BinderC0219a();
            }
            parcel.writeStrongBinder(this.f488c.asBinder());
        }
    }
}
