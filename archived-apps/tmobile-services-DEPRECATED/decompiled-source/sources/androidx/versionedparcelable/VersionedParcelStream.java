package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.versionedparcelable.VersionedParcel;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import okhttp3.internal.http2.C2445Settings;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcelStream.class */
class VersionedParcelStream extends VersionedParcel {

    /* renamed from: m */
    private static final Charset f5449m = Charset.forName("UTF-16");

    /* renamed from: d */
    private final DataInputStream f5450d;

    /* renamed from: e */
    private final DataOutputStream f5451e;

    /* renamed from: f */
    private DataInputStream f5452f;

    /* renamed from: g */
    private DataOutputStream f5453g;

    /* renamed from: h */
    private FieldBuffer f5454h;

    /* renamed from: i */
    private boolean f5455i;

    /* renamed from: j */
    int f5456j = 0;

    /* renamed from: k */
    private int f5457k = -1;

    /* renamed from: l */
    int f5458l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcelStream$FieldBuffer.class */
    public static class FieldBuffer {

        /* renamed from: a */
        final ByteArrayOutputStream f5460a = new ByteArrayOutputStream();

        /* renamed from: b */
        final DataOutputStream f5461b = new DataOutputStream(this.f5460a);

        /* renamed from: c */
        private final int f5462c;

        /* renamed from: d */
        private final DataOutputStream f5463d;

        FieldBuffer(int i, DataOutputStream dataOutputStream) {
            this.f5462c = i;
            this.f5463d = dataOutputStream;
        }

        /* renamed from: a */
        void m16536a() throws IOException {
            this.f5461b.flush();
            int size = this.f5460a.size();
            this.f5463d.writeInt((this.f5462c << 16) | (size >= 65535 ? C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE : size));
            if (size >= 65535) {
                this.f5463d.writeInt(size);
            }
            this.f5460a.writeTo(this.f5463d);
        }
    }

    private VersionedParcelStream(InputStream inputStream, OutputStream outputStream, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        DataOutputStream dataOutputStream = null;
        this.f5450d = inputStream != null ? new DataInputStream(new FilterInputStream(inputStream) { // from class: androidx.versionedparcelable.VersionedParcelStream.1
            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i = versionedParcelStream.f5458l;
                if (i == -1 || versionedParcelStream.f5456j < i) {
                    int read = super.read();
                    VersionedParcelStream.this.f5456j++;
                    return read;
                }
                throw new IOException();
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i3 = versionedParcelStream.f5458l;
                if (i3 == -1 || versionedParcelStream.f5456j < i3) {
                    int read = super.read(bArr, i, i2);
                    if (read > 0) {
                        VersionedParcelStream.this.f5456j += read;
                    }
                    return read;
                }
                throw new IOException();
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j) throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i = versionedParcelStream.f5458l;
                if (i == -1 || versionedParcelStream.f5456j < i) {
                    long skip = super.skip(j);
                    if (skip > 0) {
                        VersionedParcelStream.this.f5456j += (int) skip;
                    }
                    return skip;
                }
                throw new IOException();
            }
        }) : null;
        dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : dataOutputStream;
        this.f5451e = dataOutputStream;
        this.f5452f = this.f5450d;
        this.f5453g = dataOutputStream;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: A */
    public void mo16554A(byte[] bArr) {
        try {
            if (bArr != null) {
                this.f5453g.writeInt(bArr.length);
                this.f5453g.write(bArr);
                return;
            }
            this.f5453g.writeInt(-1);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: C */
    protected void mo16553C(CharSequence charSequence) {
        if (!this.f5455i) {
            throw new RuntimeException("CharSequence cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: E */
    public void mo16552E(int i) {
        try {
            this.f5453g.writeInt(i);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: G */
    public void mo16551G(Parcelable parcelable) {
        if (!this.f5455i) {
            throw new RuntimeException("Parcelables cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: I */
    public void mo16550I(String str) {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(f5449m);
                this.f5453g.writeInt(bytes.length);
                this.f5453g.write(bytes);
                return;
            }
            this.f5453g.writeInt(-1);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: a */
    public void mo16549a() {
        FieldBuffer fieldBuffer = this.f5454h;
        if (fieldBuffer != null) {
            try {
                if (fieldBuffer.f5460a.size() != 0) {
                    this.f5454h.m16536a();
                }
                this.f5454h = null;
            } catch (IOException e) {
                throw new VersionedParcel.ParcelException(e);
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: b */
    protected VersionedParcel mo16548b() {
        return new VersionedParcelStream(this.f5452f, this.f5453g, this.f5438a, this.f5439b, this.f5440c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: f */
    public boolean mo16547f() {
        return true;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: g */
    public boolean mo16546g() {
        try {
            return this.f5452f.readBoolean();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: i */
    public byte[] mo16545i() {
        try {
            int readInt = this.f5452f.readInt();
            if (readInt <= 0) {
                return null;
            }
            byte[] bArr = new byte[readInt];
            this.f5452f.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: k */
    protected CharSequence mo16544k() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: m */
    public boolean mo16543m(int i) {
        while (this.f5457k != i) {
            try {
                if (String.valueOf(this.f5457k).compareTo(String.valueOf(i)) > 0) {
                    return false;
                }
                if (this.f5456j < this.f5458l) {
                    this.f5450d.skip(this.f5458l - this.f5456j);
                }
                this.f5458l = -1;
                int readInt = this.f5450d.readInt();
                this.f5456j = 0;
                int i2 = readInt & C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                int i3 = i2;
                if (i2 == 65535) {
                    i3 = this.f5450d.readInt();
                }
                this.f5457k = (readInt >> 16) & C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                this.f5458l = i3;
            } catch (IOException e) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: o */
    public int mo16542o() {
        try {
            return this.f5452f.readInt();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: q */
    public <T extends Parcelable> T mo16541q() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: s */
    public String mo16540s() {
        try {
            int readInt = this.f5452f.readInt();
            if (readInt <= 0) {
                return null;
            }
            byte[] bArr = new byte[readInt];
            this.f5452f.readFully(bArr);
            return new String(bArr, f5449m);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: w */
    public void mo16539w(int i) {
        mo16549a();
        FieldBuffer fieldBuffer = new FieldBuffer(i, this.f5451e);
        this.f5454h = fieldBuffer;
        this.f5453g = fieldBuffer.f5461b;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: x */
    public void mo16538x(boolean z, boolean z2) {
        if (z) {
            this.f5455i = z2;
            return;
        }
        throw new RuntimeException("Serialization of this object is not allowed");
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    /* renamed from: y */
    public void mo16537y(boolean z) {
        try {
            this.f5453g.writeBoolean(z);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }
}
