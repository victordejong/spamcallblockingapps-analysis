package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.android.vcard.VCardConfig;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/BitmapTeleporter.class */
public class BitmapTeleporter extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f3959a;

    /* renamed from: b  reason: collision with root package name */
    ParcelFileDescriptor f3960b;
    final int c;
    private Bitmap d = null;
    private boolean e = false;
    private File f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.f3959a = i;
        this.f3960b = parcelFileDescriptor;
        this.c = i2;
    }

    private FileOutputStream a() {
        if (this.f == null) {
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
        try {
            File createTempFile = File.createTempFile("teleporter", ".tmp", this.f);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                this.f3960b = ParcelFileDescriptor.open(createTempFile, VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                createTempFile.delete();
                return fileOutputStream;
            } catch (FileNotFoundException e) {
                throw new IllegalStateException("Temporary file is somehow already deleted");
            }
        } catch (IOException e2) {
            throw new IllegalStateException("Could not create temporary file", e2);
        }
    }

    private static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close stream", e);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f3960b == null) {
            Bitmap bitmap = this.d;
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(a());
            try {
                try {
                    dataOutputStream.writeInt(array.length);
                    dataOutputStream.writeInt(bitmap.getWidth());
                    dataOutputStream.writeInt(bitmap.getHeight());
                    dataOutputStream.writeUTF(bitmap.getConfig().toString());
                    dataOutputStream.write(array);
                } catch (IOException e) {
                    throw new IllegalStateException("Could not write into unlinked file", e);
                }
            } finally {
                a(dataOutputStream);
            }
        }
        a.a(this, parcel, i | 1);
        this.f3960b = null;
    }
}
