package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqj.class */
public final class zzaqj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaqj> CREATOR = new zzaql();

    /* renamed from: a */
    private ParcelFileDescriptor f11257a;

    /* renamed from: b */
    private Parcelable f11258b = null;

    /* renamed from: c */
    private boolean f11259c = true;

    public zzaqj(ParcelFileDescriptor parcelFileDescriptor) {
        this.f11257a = parcelFileDescriptor;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private final ParcelFileDescriptor m4319a() {
        if (this.f11257a == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.f11258b.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.f11257a = m4317a(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return this.f11257a;
    }

    /* renamed from: a */
    private static <T> ParcelFileDescriptor m4317a(final byte[] bArr) {
        IOException e;
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2;
        try {
            createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream2 = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
        } catch (IOException e2) {
            e = e2;
            autoCloseOutputStream = null;
        }
        try {
            zzazd.zzdwe.execute(new Runnable(autoCloseOutputStream2, bArr) { // from class: com.google.android.gms.internal.ads.di

                /* renamed from: a */
                private final OutputStream f8384a;

                /* renamed from: b */
                private final byte[] f8385b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8384a = autoCloseOutputStream2;
                    this.f8385b = bArr;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzaqj.m4318a(this.f8384a, this.f8385b);
                }
            });
            return createPipe[0];
        } catch (IOException e3) {
            e = e3;
            autoCloseOutputStream = autoCloseOutputStream2;
            zzavs.zzc("Error transporting the ad response", e);
            zzq.zzku().zza(e, "LargeParcelTeleporter.pipeData.2");
            IOUtils.closeQuietly(autoCloseOutputStream);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4318a(OutputStream outputStream, byte[] bArr) {
        Throwable th;
        IOException e;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        DataOutputStream dataOutputStream3 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(outputStream);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
            IOUtils.closeQuietly(dataOutputStream);
        } catch (IOException e3) {
            e = e3;
            dataOutputStream2 = dataOutputStream;
            zzavs.zzc("Error transporting the ad response", e);
            dataOutputStream3 = dataOutputStream2;
            zzq.zzku().zza(e, "LargeParcelTeleporter.pipeData.1");
            if (dataOutputStream2 == null) {
                IOUtils.closeQuietly(outputStream);
            } else {
                IOUtils.closeQuietly(dataOutputStream2);
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream3 = dataOutputStream;
            if (dataOutputStream3 == null) {
                IOUtils.closeQuietly(outputStream);
            } else {
                IOUtils.closeQuietly(dataOutputStream3);
            }
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        m4319a();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f11257a, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX WARN: Finally extract failed */
    public final <T extends SafeParcelable> T zza(Parcelable.Creator<T> creator) {
        if (this.f11259c) {
            ParcelFileDescriptor parcelFileDescriptor = this.f11257a;
            if (parcelFileDescriptor == null) {
                zzavs.zzex("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    dataInputStream.readFully(bArr, 0, bArr.length);
                    IOUtils.closeQuietly(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, bArr.length);
                        obtain.setDataPosition(0);
                        this.f11258b = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.f11259c = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    zzavs.zzc("Could not read from parcel file descriptor", e);
                    IOUtils.closeQuietly(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                IOUtils.closeQuietly(dataInputStream);
                throw th2;
            }
        }
        return (T) ((SafeParcelable) this.f11258b);
    }
}
