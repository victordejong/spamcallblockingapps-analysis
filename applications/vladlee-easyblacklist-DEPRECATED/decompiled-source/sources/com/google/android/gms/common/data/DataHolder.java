package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.sqlite.CursorWrapper;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zac();

    /* renamed from: k */
    private static final Builder f6612k = new C1645a(new String[0]);

    /* renamed from: a */
    private final int f6613a;

    /* renamed from: b */
    private final String[] f6614b;

    /* renamed from: c */
    private Bundle f6615c;

    /* renamed from: d */
    private final CursorWindow[] f6616d;

    /* renamed from: e */
    private final int f6617e;

    /* renamed from: f */
    private final Bundle f6618f;

    /* renamed from: g */
    private int[] f6619g;

    /* renamed from: h */
    private int f6620h;

    /* renamed from: i */
    private boolean f6621i;

    /* renamed from: j */
    private boolean f6622j;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private final String[] f6623a;

        /* renamed from: b */
        private final ArrayList<HashMap<String, Object>> f6624b;

        /* renamed from: c */
        private final String f6625c;

        /* renamed from: d */
        private final HashMap<Object, Integer> f6626d;

        /* renamed from: e */
        private boolean f6627e;

        /* renamed from: f */
        private String f6628f;

        private Builder(String[] strArr) {
            this.f6623a = (String[]) Preconditions.checkNotNull(strArr);
            this.f6624b = new ArrayList<>();
            this.f6625c = null;
            this.f6626d = new HashMap<>();
            this.f6627e = false;
            this.f6628f = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ Builder(String[] strArr, byte b) {
            this(strArr);
        }

        public DataHolder build(int i) {
            return new DataHolder(this, i, (byte) 0);
        }

        public DataHolder build(int i, Bundle bundle) {
            return new DataHolder(this, i, bundle, (byte) 0);
        }

        public Builder withRow(ContentValues contentValues) {
            Asserts.checkNotNull(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return zaa(hashMap);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x005f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.android.gms.common.data.DataHolder.Builder zaa(java.util.HashMap<java.lang.String, java.lang.Object> r5) {
            /*
                r4 = this;
                r0 = r5
                com.google.android.gms.common.internal.Asserts.checkNotNull(r0)
                r0 = r4
                java.lang.String r0 = r0.f6625c
                r6 = r0
                r0 = r6
                if (r0 != 0) goto L_0x0012
            L_0x000d:
                r0 = -1
                r7 = r0
                goto L_0x004e
            L_0x0012:
                r0 = r5
                r1 = r6
                java.lang.Object r0 = r0.get(r1)
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L_0x0021
                goto L_0x000d
            L_0x0021:
                r0 = r4
                java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.f6626d
                r1 = r8
                java.lang.Object r0 = r0.get(r1)
                java.lang.Integer r0 = (java.lang.Integer) r0
                r6 = r0
                r0 = r6
                if (r0 != 0) goto L_0x0049
                r0 = r4
                java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.f6626d
                r1 = r8
                r2 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r2 = r2.f6624b
                int r2 = r2.size()
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r0 = r0.put(r1, r2)
                goto L_0x000d
            L_0x0049:
                r0 = r6
                int r0 = r0.intValue()
                r7 = r0
            L_0x004e:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x005f
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.f6624b
                r1 = r5
                boolean r0 = r0.add(r1)
                goto L_0x0071
            L_0x005f:
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.f6624b
                r1 = r7
                java.lang.Object r0 = r0.remove(r1)
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.f6624b
                r1 = r7
                r2 = r5
                r0.add(r1, r2)
            L_0x0071:
                r0 = r4
                r1 = 0
                r0.f6627e = r1
                r0 = r4
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.Builder.zaa(java.util.HashMap):com.google.android.gms.common.data.DataHolder$Builder");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$zaa.class */
    public static final class zaa extends RuntimeException {
        public zaa(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f6621i = false;
        this.f6622j = true;
        this.f6613a = i;
        this.f6614b = strArr;
        this.f6616d = cursorWindowArr;
        this.f6617e = i2;
        this.f6618f = bundle;
    }

    public DataHolder(Cursor cursor, int i, Bundle bundle) {
        this(new CursorWrapper(cursor), i, bundle);
    }

    private DataHolder(Builder builder, int i) {
        this(builder.f6623a, m5760a(builder), i, (Bundle) null);
    }

    /* synthetic */ DataHolder(Builder builder, int i, byte b) {
        this(builder, i);
    }

    private DataHolder(Builder builder, int i, Bundle bundle) {
        this(builder.f6623a, m5760a(builder), i, bundle);
    }

    /* synthetic */ DataHolder(Builder builder, int i, Bundle bundle, byte b) {
        this(builder, i, bundle);
    }

    private DataHolder(CursorWrapper cursorWrapper, int i, Bundle bundle) {
        this(cursorWrapper.getColumnNames(), m5759a(cursorWrapper), i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.f6621i = false;
        this.f6622j = true;
        this.f6613a = 1;
        this.f6614b = (String[]) Preconditions.checkNotNull(strArr);
        this.f6616d = (CursorWindow[]) Preconditions.checkNotNull(cursorWindowArr);
        this.f6617e = i;
        this.f6618f = bundle;
        zaby();
    }

    /* renamed from: a */
    private final void m5758a(String str, int i) {
        Bundle bundle = this.f6615c;
        if (bundle == null || !bundle.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i < 0 || i >= this.f6620h) {
            throw new CursorIndexOutOfBoundsException(i, this.f6620h);
        }
    }

    /* renamed from: a */
    private static CursorWindow[] m5760a(Builder builder) {
        long j;
        if (builder.f6623a.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList arrayList = builder.f6624b;
        int size = arrayList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(builder.f6623a.length);
        boolean z = false;
        int i = 0;
        while (i < size) {
            try {
                if (!cursorWindow.allocRow()) {
                    StringBuilder sb = new StringBuilder(72);
                    sb.append("Allocating additional cursor window for large data set (row ");
                    sb.append(i);
                    sb.append(")");
                    Log.d("DataHolder", sb.toString());
                    CursorWindow cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i);
                    cursorWindow2.setNumColumns(builder.f6623a.length);
                    arrayList2.add(cursorWindow2);
                    cursorWindow = cursorWindow2;
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList2.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                Map map = (Map) arrayList.get(i);
                boolean z2 = true;
                for (int i2 = 0; i2 < builder.f6623a.length && z2; i2++) {
                    String str = builder.f6623a[i2];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z2 = cursorWindow.putNull(i, i2);
                    } else if (obj instanceof String) {
                        z2 = cursorWindow.putString((String) obj, i, i2);
                    } else {
                        if (obj instanceof Long) {
                            j = ((Long) obj).longValue();
                        } else if (obj instanceof Integer) {
                            z2 = cursorWindow.putLong(((Integer) obj).intValue(), i, i2);
                        } else if (obj instanceof Boolean) {
                            j = ((Boolean) obj).booleanValue() ? 1L : 0L;
                        } else if (obj instanceof byte[]) {
                            z2 = cursorWindow.putBlob((byte[]) obj, i, i2);
                        } else if (obj instanceof Double) {
                            z2 = cursorWindow.putDouble(((Double) obj).doubleValue(), i, i2);
                        } else if (obj instanceof Float) {
                            z2 = cursorWindow.putDouble(((Float) obj).floatValue(), i, i2);
                        } else {
                            String valueOf = String.valueOf(obj);
                            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length());
                            sb2.append("Unsupported object for column ");
                            sb2.append(str);
                            sb2.append(": ");
                            sb2.append(valueOf);
                            throw new IllegalArgumentException(sb2.toString());
                        }
                        z2 = cursorWindow.putLong(j, i, i2);
                    }
                }
                if (z2) {
                    z = false;
                } else if (!z) {
                    StringBuilder sb3 = new StringBuilder(74);
                    sb3.append("Couldn't populate window data for row ");
                    sb3.append(i);
                    sb3.append(" - allocating new window.");
                    Log.d("DataHolder", sb3.toString());
                    cursorWindow.freeLastRow();
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i);
                    cursorWindow.setNumColumns(builder.f6623a.length);
                    arrayList2.add(cursorWindow);
                    i--;
                    z = true;
                } else {
                    throw new zaa("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                }
                i++;
            } catch (RuntimeException e) {
                int size2 = arrayList2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ((CursorWindow) arrayList2.get(i3)).close();
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private static CursorWindow[] m5759a(CursorWrapper cursorWrapper) {
        int i;
        ArrayList arrayList = new ArrayList();
        try {
            int count = cursorWrapper.getCount();
            CursorWindow window = cursorWrapper.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                i = 0;
            } else {
                window.acquireReference();
                cursorWrapper.setWindow(null);
                arrayList.add(window);
                i = window.getNumRows();
            }
            while (i < count) {
                if (!cursorWrapper.moveToPosition(i)) {
                    break;
                }
                CursorWindow window2 = cursorWrapper.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    cursorWrapper.setWindow(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(i);
                    cursorWrapper.fillWindow(i, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                i = window2.getStartPosition() + window2.getNumRows();
            }
            cursorWrapper.close();
            return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
        } catch (Throwable th) {
            cursorWrapper.close();
            throw th;
        }
    }

    public static Builder builder(String[] strArr) {
        return new Builder(strArr, (byte) 0);
    }

    public static DataHolder empty(int i) {
        return new DataHolder(f6612k, i);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.f6621i) {
                this.f6621i = true;
                for (int i = 0; i < this.f6616d.length; i++) {
                    this.f6616d[i].close();
                }
            }
        }
    }

    protected final void finalize() {
        try {
            if (this.f6622j && this.f6616d.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean getBoolean(String str, int i, int i2) {
        m5758a(str, i);
        return this.f6616d[i2].getLong(i, this.f6615c.getInt(str)) == 1;
    }

    public final byte[] getByteArray(String str, int i, int i2) {
        m5758a(str, i);
        return this.f6616d[i2].getBlob(i, this.f6615c.getInt(str));
    }

    public final int getCount() {
        return this.f6620h;
    }

    public final int getInteger(String str, int i, int i2) {
        m5758a(str, i);
        return this.f6616d[i2].getInt(i, this.f6615c.getInt(str));
    }

    public final long getLong(String str, int i, int i2) {
        m5758a(str, i);
        return this.f6616d[i2].getLong(i, this.f6615c.getInt(str));
    }

    public final Bundle getMetadata() {
        return this.f6618f;
    }

    public final int getStatusCode() {
        return this.f6617e;
    }

    public final String getString(String str, int i, int i2) {
        m5758a(str, i);
        return this.f6616d[i2].getString(i, this.f6615c.getInt(str));
    }

    public final int getWindowIndex(int i) {
        int i2;
        int i3 = 0;
        Preconditions.checkState(i >= 0 && i < this.f6620h);
        while (true) {
            int[] iArr = this.f6619g;
            i2 = i3;
            if (i3 >= iArr.length) {
                break;
            } else if (i < iArr[i3]) {
                i2 = i3 - 1;
                break;
            } else {
                i3++;
            }
        }
        int i4 = i2;
        if (i2 == this.f6619g.length) {
            i4 = i2 - 1;
        }
        return i4;
    }

    public final boolean hasColumn(String str) {
        return this.f6615c.containsKey(str);
    }

    public final boolean hasNull(String str, int i, int i2) {
        m5758a(str, i);
        return this.f6616d[i2].isNull(i, this.f6615c.getInt(str));
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f6621i;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.f6614b, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.f6616d, i, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.f6613a);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final float zaa(String str, int i, int i2) {
        m5758a(str, i);
        return this.f6616d[i2].getFloat(i, this.f6615c.getInt(str));
    }

    public final void zaa(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        m5758a(str, i);
        this.f6616d[i2].copyStringToBuffer(i, this.f6615c.getInt(str), charArrayBuffer);
    }

    public final double zab(String str, int i, int i2) {
        m5758a(str, i);
        return this.f6616d[i2].getDouble(i, this.f6615c.getInt(str));
    }

    public final void zaby() {
        this.f6615c = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.f6614b;
            if (i2 >= strArr.length) {
                break;
            }
            this.f6615c.putInt(strArr[i2], i2);
            i2++;
        }
        this.f6619g = new int[this.f6616d.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f6616d;
            if (i < cursorWindowArr.length) {
                this.f6619g[i] = i3;
                i3 += this.f6616d[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
                i++;
            } else {
                this.f6620h = i3;
                return;
            }
        }
    }
}
