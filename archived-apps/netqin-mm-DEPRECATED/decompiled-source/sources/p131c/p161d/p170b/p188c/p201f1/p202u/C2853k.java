package p131c.p161d.p170b.p188c.p201f1.p202u;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.mopub.common.Constants;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2879f;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2908z;
import p131c.p161d.p170b.p188c.p207t0.AbstractC3007a;
import p131c.p161d.p170b.p188c.p207t0.C3008b;
/* renamed from: c.d.b.c.f1.u.k */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/k.class */
public class C2853k {

    /* renamed from: a */
    public final HashMap<String, C2852j> f10381a;

    /* renamed from: b */
    public final SparseArray<String> f10382b;

    /* renamed from: c */
    public final SparseBooleanArray f10383c;

    /* renamed from: d */
    public final SparseBooleanArray f10384d;

    /* renamed from: e */
    public AbstractC2856c f10385e;

    /* renamed from: f */
    public AbstractC2856c f10386f;

    /* renamed from: c.d.b.c.f1.u.k$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/k$a.class */
    public static final class C2854a implements AbstractC2856c {

        /* renamed from: e */
        public static final String[] f10387e = {"id", "key", "metadata"};

        /* renamed from: a */
        public final AbstractC3007a f10388a;

        /* renamed from: b */
        public final SparseArray<C2852j> f10389b = new SparseArray<>();

        /* renamed from: c */
        public String f10390c;

        /* renamed from: d */
        public String f10391d;

        public C2854a(AbstractC3007a aVar) {
            this.f10388a = aVar;
        }

        /* renamed from: a */
        public static String m28821a(String str) {
            return "ExoPlayerCacheIndex" + str;
        }

        /* renamed from: a */
        public static void m28823a(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        }

        /* renamed from: a */
        public static void m28822a(AbstractC3007a aVar, String str) throws DatabaseIOException {
            try {
                String a = m28821a(str);
                SQLiteDatabase b = aVar.m28169b();
                b.beginTransactionNonExclusive();
                C3008b.m28164b(b, 1, str);
                m28823a(b, a);
                b.setTransactionSuccessful();
                b.endTransaction();
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28813a(long j) {
            String hexString = Long.toHexString(j);
            this.f10390c = hexString;
            this.f10391d = m28821a(hexString);
        }

        /* renamed from: a */
        public final void m28826a(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            C3008b.m28166a(sQLiteDatabase, 1, this.f10390c, 1);
            m28823a(sQLiteDatabase, this.f10391d);
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f10391d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }

        /* renamed from: a */
        public final void m28825a(SQLiteDatabase sQLiteDatabase, int i) {
            sQLiteDatabase.delete(this.f10391d, "id = ?", new String[]{Integer.toString(i)});
        }

        /* renamed from: a */
        public final void m28824a(SQLiteDatabase sQLiteDatabase, C2852j jVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            C2853k.m28837b(jVar.m28856a(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(jVar.f10376a));
            contentValues.put("key", jVar.f10377b);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow(this.f10391d, null, contentValues);
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28812a(C2852j jVar) {
            this.f10389b.put(jVar.f10376a, jVar);
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28811a(C2852j jVar, boolean z) {
            if (z) {
                this.f10389b.delete(jVar.f10376a);
            } else {
                this.f10389b.put(jVar.f10376a, null);
            }
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28810a(HashMap<String, C2852j> hashMap) throws IOException {
            try {
                SQLiteDatabase b = this.f10388a.m28169b();
                b.beginTransactionNonExclusive();
                m28826a(b);
                for (C2852j jVar : hashMap.values()) {
                    m28824a(b, jVar);
                }
                b.setTransactionSuccessful();
                this.f10389b.clear();
                b.endTransaction();
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28809a(HashMap<String, C2852j> hashMap, SparseArray<String> sparseArray) throws IOException {
            C2877e.m28731b(this.f10389b.size() == 0);
            try {
                if (C3008b.m28167a(this.f10388a.m28170a(), 1, this.f10390c) != 1) {
                    SQLiteDatabase b = this.f10388a.m28169b();
                    b.beginTransactionNonExclusive();
                    m28826a(b);
                    b.setTransactionSuccessful();
                    b.endTransaction();
                }
                Cursor c = m28820c();
                while (c.moveToNext()) {
                    C2852j jVar = new C2852j(c.getInt(0), c.getString(1), C2853k.m28836b(new DataInputStream(new ByteArrayInputStream(c.getBlob(2)))));
                    hashMap.put(jVar.f10377b, jVar);
                    sparseArray.put(jVar.f10376a, jVar.f10377b);
                }
                if (c != null) {
                    c.close();
                }
            } catch (SQLiteException e) {
                hashMap.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e);
            }
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public boolean mo28814a() throws DatabaseIOException {
            boolean z = true;
            if (C3008b.m28167a(this.f10388a.m28170a(), 1, this.f10390c) == -1) {
                z = false;
            }
            return z;
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: b */
        public void mo28808b() throws DatabaseIOException {
            m28822a(this.f10388a, this.f10390c);
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: b */
        public void mo28807b(HashMap<String, C2852j> hashMap) throws IOException {
            if (this.f10389b.size() != 0) {
                try {
                    SQLiteDatabase b = this.f10388a.m28169b();
                    b.beginTransactionNonExclusive();
                    for (int i = 0; i < this.f10389b.size(); i++) {
                        C2852j valueAt = this.f10389b.valueAt(i);
                        if (valueAt == null) {
                            m28825a(b, this.f10389b.keyAt(i));
                        } else {
                            m28824a(b, valueAt);
                        }
                    }
                    b.setTransactionSuccessful();
                    this.f10389b.clear();
                    b.endTransaction();
                } catch (SQLException e) {
                    throw new DatabaseIOException(e);
                }
            }
        }

        /* renamed from: c */
        public final Cursor m28820c() {
            return this.f10388a.m28170a().query(this.f10391d, f10387e, null, null, null, null, null);
        }
    }

    /* renamed from: c.d.b.c.f1.u.k$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/k$b.class */
    public static class C2855b implements AbstractC2856c {

        /* renamed from: a */
        public final boolean f10392a;

        /* renamed from: b */
        public final Cipher f10393b;

        /* renamed from: c */
        public final SecretKeySpec f10394c;

        /* renamed from: d */
        public final Random f10395d;

        /* renamed from: e */
        public final C2879f f10396e;

        /* renamed from: f */
        public boolean f10397f;

        /* renamed from: g */
        public C2908z f10398g;

        public C2855b(File file, byte[] bArr, boolean z) {
            SecretKeySpec secretKeySpec;
            Cipher cipher;
            Random random = null;
            if (bArr != null) {
                C2877e.m28734a(bArr.length == 16);
                try {
                    cipher = C2853k.m28830e();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                    throw new IllegalStateException(e);
                }
            } else {
                C2877e.m28734a(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.f10392a = z;
            this.f10393b = cipher;
            this.f10394c = secretKeySpec;
            this.f10395d = z ? new Random() : random;
            this.f10396e = new C2879f(file);
        }

        /* renamed from: a */
        public final int m28818a(C2852j jVar, int i) {
            int i2;
            int hashCode = (jVar.f10376a * 31) + jVar.f10377b.hashCode();
            if (i < 2) {
                long a = C2857l.m28806a(jVar.m28856a());
                i2 = (hashCode * 31) + ((int) (a ^ (a >>> 32)));
            } else {
                i2 = (hashCode * 31) + jVar.m28856a().hashCode();
            }
            return i2;
        }

        /* renamed from: a */
        public final C2852j m28819a(int i, DataInputStream dataInputStream) throws IOException {
            C2860o oVar;
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            if (i < 2) {
                long readLong = dataInputStream.readLong();
                C2859n nVar = new C2859n();
                C2859n.m28803a(nVar, readLong);
                oVar = C2860o.f10401c.m28795a(nVar);
            } else {
                oVar = C2853k.m28836b(dataInputStream);
            }
            return new C2852j(readInt, readUTF, oVar);
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28813a(long j) {
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28812a(C2852j jVar) {
            this.f10397f = true;
        }

        /* renamed from: a */
        public final void m28817a(C2852j jVar, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(jVar.f10376a);
            dataOutputStream.writeUTF(jVar.f10377b);
            C2853k.m28837b(jVar.m28856a(), dataOutputStream);
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28811a(C2852j jVar, boolean z) {
            this.f10397f = true;
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28810a(HashMap<String, C2852j> hashMap) throws IOException {
            m28815c(hashMap);
            this.f10397f = false;
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public void mo28809a(HashMap<String, C2852j> hashMap, SparseArray<String> sparseArray) {
            C2877e.m28731b(!this.f10397f);
            if (!m28816b(hashMap, sparseArray)) {
                hashMap.clear();
                sparseArray.clear();
                this.f10396e.m28720a();
            }
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: a */
        public boolean mo28814a() {
            return this.f10396e.m28718b();
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: b */
        public void mo28808b() {
            this.f10396e.m28720a();
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.p202u.C2853k.AbstractC2856c
        /* renamed from: b */
        public void mo28807b(HashMap<String, C2852j> hashMap) throws IOException {
            if (this.f10397f) {
                mo28810a(hashMap);
            }
        }

        /* renamed from: b */
        public final boolean m28816b(HashMap<String, C2852j> hashMap, SparseArray<String> sparseArray) {
            Throwable th;
            BufferedInputStream bufferedInputStream;
            DataInputStream dataInputStream;
            DataInputStream dataInputStream2;
            if (!this.f10396e.m28718b()) {
                return true;
            }
            DataInputStream dataInputStream3 = null;
            DataInputStream dataInputStream4 = null;
            try {
                bufferedInputStream = new BufferedInputStream(this.f10396e.m28717c());
                dataInputStream = new DataInputStream(bufferedInputStream);
            } catch (IOException e) {
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                int readInt = dataInputStream.readInt();
                if (readInt < 0 || readInt > 2) {
                    C2885h0.m28671a((Closeable) dataInputStream);
                    return false;
                }
                if ((dataInputStream.readInt() & 1) == 0) {
                    dataInputStream2 = dataInputStream;
                    if (this.f10392a) {
                        this.f10397f = true;
                        dataInputStream2 = dataInputStream;
                    }
                } else if (this.f10393b == null) {
                    C2885h0.m28671a((Closeable) dataInputStream);
                    return false;
                } else {
                    byte[] bArr = new byte[16];
                    dataInputStream.readFully(bArr);
                    try {
                        this.f10393b.init(2, this.f10394c, new IvParameterSpec(bArr));
                        dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f10393b));
                    } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                        throw new IllegalStateException(e2);
                    }
                }
                int readInt2 = dataInputStream2.readInt();
                int i = 0;
                for (int i2 = 0; i2 < readInt2; i2++) {
                    C2852j a = m28819a(readInt, dataInputStream2);
                    hashMap.put(a.f10377b, a);
                    sparseArray.put(a.f10376a, a.f10377b);
                    i += m28818a(a, readInt);
                }
                int readInt3 = dataInputStream2.readInt();
                boolean z = dataInputStream2.read() == -1;
                if (readInt3 != i || !z) {
                    C2885h0.m28671a((Closeable) dataInputStream2);
                    return false;
                }
                C2885h0.m28671a((Closeable) dataInputStream2);
                return true;
            } catch (IOException e3) {
                dataInputStream3 = dataInputStream;
                if (dataInputStream3 == null) {
                    return false;
                }
                C2885h0.m28671a((Closeable) dataInputStream3);
                return false;
            } catch (Throwable th3) {
                th = th3;
                dataInputStream4 = dataInputStream;
                if (dataInputStream4 != null) {
                    C2885h0.m28671a((Closeable) dataInputStream4);
                }
                throw th;
            }
        }

        /* renamed from: c */
        public final void m28815c(HashMap<String, C2852j> hashMap) throws IOException {
            Throwable th;
            DataOutputStream dataOutputStream;
            DataOutputStream dataOutputStream2 = null;
            try {
                OutputStream e = this.f10396e.m28715e();
                if (this.f10398g == null) {
                    this.f10398g = new C2908z(e);
                } else {
                    this.f10398g.m28500a(e);
                }
                dataOutputStream = new DataOutputStream(this.f10398g);
                dataOutputStream2 = dataOutputStream;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                dataOutputStream.writeInt(2);
                int i = 0;
                dataOutputStream.writeInt(this.f10392a ? 1 : 0);
                DataOutputStream dataOutputStream3 = dataOutputStream;
                if (this.f10392a) {
                    byte[] bArr = new byte[16];
                    this.f10395d.nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        this.f10393b.init(1, this.f10394c, new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream3 = new DataOutputStream(new CipherOutputStream(this.f10398g, this.f10393b));
                    } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                        throw new IllegalStateException(e2);
                    }
                }
                dataOutputStream3.writeInt(hashMap.size());
                for (C2852j jVar : hashMap.values()) {
                    m28817a(jVar, dataOutputStream3);
                    i += m28818a(jVar, 2);
                }
                dataOutputStream3.writeInt(i);
                this.f10396e.m28719a(dataOutputStream3);
                C2885h0.m28671a((Closeable) null);
            } catch (Throwable th3) {
                th = th3;
                C2885h0.m28671a((Closeable) dataOutputStream2);
                throw th;
            }
        }
    }

    /* renamed from: c.d.b.c.f1.u.k$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/k$c.class */
    public interface AbstractC2856c {
        /* renamed from: a */
        void mo28813a(long j);

        /* renamed from: a */
        void mo28812a(C2852j jVar);

        /* renamed from: a */
        void mo28811a(C2852j jVar, boolean z);

        /* renamed from: a */
        void mo28810a(HashMap<String, C2852j> hashMap) throws IOException;

        /* renamed from: a */
        void mo28809a(HashMap<String, C2852j> hashMap, SparseArray<String> sparseArray) throws IOException;

        /* renamed from: a */
        boolean mo28814a() throws IOException;

        /* renamed from: b */
        void mo28808b() throws IOException;

        /* renamed from: b */
        void mo28807b(HashMap<String, C2852j> hashMap) throws IOException;
    }

    public C2853k(AbstractC3007a aVar, File file, byte[] bArr, boolean z, boolean z2) {
        C2877e.m28731b((aVar == null && file == null) ? false : true);
        this.f10381a = new HashMap<>();
        this.f10382b = new SparseArray<>();
        this.f10383c = new SparseBooleanArray();
        this.f10384d = new SparseBooleanArray();
        C2855b bVar = null;
        C2854a aVar2 = aVar != null ? new C2854a(aVar) : null;
        bVar = file != null ? new C2855b(new File(file, "cached_content_index.exi"), bArr, z) : bVar;
        if (aVar2 == null || (bVar != null && z2)) {
            this.f10385e = bVar;
            this.f10386f = aVar2;
            return;
        }
        this.f10385e = aVar2;
        this.f10386f = bVar;
    }

    /* renamed from: a */
    public static int m28843a(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int i = 0;
        int keyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        int i2 = keyAt;
        if (keyAt < 0) {
            while (i < size && i == sparseArray.keyAt(i)) {
                i++;
            }
            i2 = i;
        }
        return i2;
    }

    /* renamed from: b */
    public static C2860o m28836b(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            if (readInt2 >= 0) {
                int min = Math.min(readInt2, (int) Constants.TEN_MB);
                byte[] bArr = C2885h0.f10482f;
                int i2 = 0;
                while (i2 != readInt2) {
                    int i3 = i2 + min;
                    bArr = Arrays.copyOf(bArr, i3);
                    dataInputStream.readFully(bArr, i2, min);
                    min = Math.min(readInt2 - i3, (int) Constants.TEN_MB);
                    i2 = i3;
                }
                hashMap.put(readUTF, bArr);
            } else {
                throw new IOException("Invalid value size: " + readInt2);
            }
        }
        return new C2860o(hashMap);
    }

    /* renamed from: b */
    public static void m28837b(C2860o oVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> a = oVar.m28796a();
        dataOutputStream.writeInt(a.size());
        for (Map.Entry<String, byte[]> entry : a) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    /* renamed from: e */
    public static Cipher m28830e() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (C2885h0.f10477a == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable th) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    /* renamed from: g */
    public static boolean m28827g(String str) {
        return str.startsWith("cached_content_index.exi");
    }

    /* renamed from: a */
    public final C2852j m28840a(String str) {
        int a = m28843a(this.f10382b);
        C2852j jVar = new C2852j(a, str);
        this.f10381a.put(str, jVar);
        this.f10382b.put(a, str);
        this.f10384d.put(a, true);
        this.f10385e.mo28812a(jVar);
        return jVar;
    }

    /* renamed from: a */
    public String m28845a(int i) {
        return this.f10382b.get(i);
    }

    /* renamed from: a */
    public Collection<C2852j> m28846a() {
        return this.f10381a.values();
    }

    /* renamed from: a */
    public void m28844a(long j) throws IOException {
        AbstractC2856c cVar;
        this.f10385e.mo28813a(j);
        AbstractC2856c cVar2 = this.f10386f;
        if (cVar2 != null) {
            cVar2.mo28813a(j);
        }
        if (this.f10385e.mo28814a() || (cVar = this.f10386f) == null || !cVar.mo28814a()) {
            this.f10385e.mo28809a(this.f10381a, this.f10382b);
        } else {
            this.f10386f.mo28809a(this.f10381a, this.f10382b);
            this.f10385e.mo28810a(this.f10381a);
        }
        AbstractC2856c cVar3 = this.f10386f;
        if (cVar3 != null) {
            cVar3.mo28808b();
            this.f10386f = null;
        }
    }

    /* renamed from: a */
    public void m28839a(String str, C2859n nVar) {
        C2852j e = m28829e(str);
        if (e.m28853a(nVar)) {
            this.f10385e.mo28812a(e);
        }
    }

    /* renamed from: b */
    public int m28835b(String str) {
        return m28829e(str).f10376a;
    }

    /* renamed from: b */
    public void m28838b() {
        int size = this.f10381a.size();
        String[] strArr = new String[size];
        this.f10381a.keySet().toArray(strArr);
        for (int i = 0; i < size; i++) {
            m28828f(strArr[i]);
        }
    }

    /* renamed from: c */
    public C2852j m28833c(String str) {
        return this.f10381a.get(str);
    }

    /* renamed from: c */
    public void m28834c() throws IOException {
        this.f10385e.mo28807b(this.f10381a);
        int size = this.f10383c.size();
        for (int i = 0; i < size; i++) {
            this.f10382b.remove(this.f10383c.keyAt(i));
        }
        this.f10383c.clear();
        this.f10384d.clear();
    }

    /* renamed from: d */
    public AbstractC2858m m28831d(String str) {
        C2852j c = m28833c(str);
        return c != null ? c.m28856a() : C2860o.f10401c;
    }

    /* renamed from: e */
    public C2852j m28829e(String str) {
        C2852j jVar = this.f10381a.get(str);
        C2852j jVar2 = jVar;
        if (jVar == null) {
            jVar2 = m28840a(str);
        }
        return jVar2;
    }

    /* renamed from: f */
    public void m28828f(String str) {
        C2852j jVar = this.f10381a.get(str);
        if (jVar != null && jVar.m28848c() && !jVar.m28847d()) {
            this.f10381a.remove(str);
            int i = jVar.f10376a;
            boolean z = this.f10384d.get(i);
            this.f10385e.mo28811a(jVar, z);
            if (z) {
                this.f10382b.remove(i);
                this.f10384d.delete(i);
                return;
            }
            this.f10382b.put(i, null);
            this.f10383c.put(i, true);
        }
    }
}
