package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
@ShowFirstParty
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/BitmapTeleporter.class */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    @KeepForSdk
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23311a;
    @SafeParcelable.Field

    /* renamed from: b */
    public ParcelFileDescriptor f23312b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f23313c;

    /* renamed from: d */
    public Bitmap f23314d = null;

    /* renamed from: e */
    public File f23315e;

    @SafeParcelable.Constructor
    public BitmapTeleporter(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(id = 3) int i2) {
        this.f23311a = i;
        this.f23312b = parcelFileDescriptor;
        this.f23313c = i2;
    }

    /* renamed from: a */
    public static void m17433a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close stream", e);
        }
    }

    /* renamed from: f */
    public final FileOutputStream m17432f() {
        File file = this.f23315e;
        if (file != null) {
            try {
                File createTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    this.f23312b = ParcelFileDescriptor.open(createTempFile, 268435456);
                    createTempFile.delete();
                    return fileOutputStream;
                } catch (FileNotFoundException e) {
                    throw new IllegalStateException("Temporary file is somehow already deleted");
                }
            } catch (IOException e2) {
                throw new IllegalStateException("Could not create temporary file", e2);
            }
        } else {
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f23312b == null) {
            Bitmap bitmap = this.f23314d;
            Preconditions.m17288a(bitmap);
            Bitmap bitmap2 = bitmap;
            ByteBuffer allocate = ByteBuffer.allocate(bitmap2.getRowBytes() * bitmap2.getHeight());
            bitmap2.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(m17432f()));
            try {
                try {
                    dataOutputStream.writeInt(array.length);
                    dataOutputStream.writeInt(bitmap2.getWidth());
                    dataOutputStream.writeInt(bitmap2.getHeight());
                    dataOutputStream.writeUTF(bitmap2.getConfig().toString());
                    dataOutputStream.write(array);
                    m17433a(dataOutputStream);
                } catch (IOException e) {
                    throw new IllegalStateException("Could not write into unlinked file", e);
                }
            } catch (Throwable th) {
                m17433a(dataOutputStream);
                throw th;
            }
        }
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23311a);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f23312b, i | 1, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f23313c);
        SafeParcelWriter.m17234a(parcel, a);
        this.f23312b = null;
    }
}
