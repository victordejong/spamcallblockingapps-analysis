package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/EntityBuffer.class */
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {

    /* renamed from: b */
    public boolean f23332b;

    /* renamed from: c */
    public ArrayList<Integer> f23333c;

    /* renamed from: a */
    public final int m17423a(int i) {
        if (i >= 0 && i < this.f23333c.size()) {
            return this.f23333c.get(i).intValue();
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("Position ");
        sb.append(i);
        sb.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(sb.toString());
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract T m17422a(int i, int i2);

    @KeepForSdk
    /* renamed from: b */
    public String m17421b() {
        return null;
    }

    @KeepForSdk
    /* renamed from: c */
    public abstract String m17420c();

    /* renamed from: d */
    public final void m17419d() {
        synchronized (this) {
            try {
                if (!this.f23332b) {
                    DataHolder dataHolder = this.f23310a;
                    Preconditions.m17288a(dataHolder);
                    int count = dataHolder.getCount();
                    ArrayList<Integer> arrayList = new ArrayList<>();
                    this.f23333c = arrayList;
                    if (count > 0) {
                        arrayList.add(0);
                        String c = m17420c();
                        String b = this.f23310a.m17427b(c, 0, this.f23310a.m17430a(0));
                        for (int i = 1; i < count; i++) {
                            int a = this.f23310a.m17430a(i);
                            String b2 = this.f23310a.m17427b(c, i, a);
                            if (b2 != null) {
                                b = b;
                                if (!b2.equals(b)) {
                                    this.f23333c.add(Integer.valueOf(i));
                                    b = b2;
                                }
                            } else {
                                StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 78);
                                sb.append("Missing value for markerColumn: ");
                                sb.append(c);
                                sb.append(", at row: ");
                                sb.append(i);
                                sb.append(", for window: ");
                                sb.append(a);
                                throw new NullPointerException(sb.toString());
                            }
                        }
                    }
                    this.f23332b = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public final T get(int i) {
        int i2;
        int i3;
        m17419d();
        int a = m17423a(i);
        int i4 = 0;
        if (i >= 0) {
            if (i == this.f23333c.size()) {
                i4 = 0;
            } else {
                if (i == this.f23333c.size() - 1) {
                    DataHolder dataHolder = this.f23310a;
                    Preconditions.m17288a(dataHolder);
                    i2 = dataHolder.getCount();
                    i3 = this.f23333c.get(i).intValue();
                } else {
                    i2 = this.f23333c.get(i + 1).intValue();
                    i3 = this.f23333c.get(i).intValue();
                }
                i4 = i2 - i3;
                if (i4 == 1) {
                    int a2 = m17423a(i);
                    DataHolder dataHolder2 = this.f23310a;
                    Preconditions.m17288a(dataHolder2);
                    int a3 = dataHolder2.m17430a(a2);
                    String b = m17421b();
                    if (b != null && this.f23310a.m17427b(b, a2, a3) == null) {
                        i4 = 0;
                    }
                }
            }
        }
        return m17422a(a, i4);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public int getCount() {
        m17419d();
        return this.f23333c.size();
    }
}
