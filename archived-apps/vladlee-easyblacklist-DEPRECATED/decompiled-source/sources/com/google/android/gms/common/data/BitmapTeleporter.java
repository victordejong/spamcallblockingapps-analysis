package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/BitmapTeleporter.class */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();

    /* renamed from: a */
    private final int f6598a;

    /* renamed from: b */
    private ParcelFileDescriptor f6599b;

    /* renamed from: c */
    private final int f6600c;

    /* renamed from: d */
    private Bitmap f6601d;

    /* renamed from: e */
    private boolean f6602e;

    /* renamed from: f */
    private File f6603f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.f6598a = i;
        this.f6599b = parcelFileDescriptor;
        this.f6600c = i2;
        this.f6601d = null;
        this.f6602e = false;
    }

    public BitmapTeleporter(Bitmap bitmap) {
        this.f6598a = 1;
        this.f6599b = null;
        this.f6600c = 0;
        this.f6601d = bitmap;
        this.f6602e = true;
    }

    /* renamed from: a */
    private final FileOutputStream m5763a() {
        File file = this.f6603f;
        if (file != null) {
            try {
                File createTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    this.f6599b = ParcelFileDescriptor.open(createTempFile, 268435456);
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

    /* renamed from: a */
    private static void m5762a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close stream", e);
        }
    }

    public Bitmap get() {
        if (!this.f6602e) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.f6599b));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int readInt = dataInputStream.readInt();
                    int readInt2 = dataInputStream.readInt();
                    Bitmap.Config valueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    m5762a(dataInputStream);
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    Bitmap createBitmap = Bitmap.createBitmap(readInt, readInt2, valueOf);
                    createBitmap.copyPixelsFromBuffer(wrap);
                    this.f6601d = createBitmap;
                    this.f6602e = true;
                } catch (IOException e) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e);
                }
            } catch (Throwable th) {
                m5762a(dataInputStream);
                throw th;
            }
        }
        return this.f6601d;
    }

    public void release() {
        if (!this.f6602e) {
            try {
                this.f6599b.close();
            } catch (IOException e) {
                Log.w("BitmapTeleporter", "Could not close PFD", e);
            }
        }
    }

    public void setTempDir(File file) {
        if (file != null) {
            this.f6603f = file;
            return;
        }
        throw new NullPointerException("Cannot set null temp directory");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f6599b == null) {
            Bitmap bitmap = this.f6601d;
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(m5763a()));
            try {
                try {
                    dataOutputStream.writeInt(array.length);
                    dataOutputStream.writeInt(bitmap.getWidth());
                    dataOutputStream.writeInt(bitmap.getHeight());
                    dataOutputStream.writeUTF(bitmap.getConfig().toString());
                    dataOutputStream.write(array);
                    m5762a(dataOutputStream);
                } catch (IOException e) {
                    throw new IllegalStateException("Could not write into unlinked file", e);
                }
            } catch (Throwable th) {
                m5762a(dataOutputStream);
                throw th;
            }
        }
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6598a);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f6599b, i | 1, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f6600c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        this.f6599b = null;
    }
}
