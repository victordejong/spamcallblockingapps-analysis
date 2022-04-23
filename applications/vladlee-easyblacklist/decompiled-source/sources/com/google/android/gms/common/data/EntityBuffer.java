package com.google.android.gms.common.data;

import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/EntityBuffer.class */
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {

    /* renamed from: b */
    private boolean f6629b;

    /* renamed from: c */
    private ArrayList<Integer> f6630c;

    /* renamed from: a */
    private final int m5754a(int i) {
        if (i >= 0 && i < this.f6630c.size()) {
            return this.f6630c.get(i).intValue();
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("Position ");
        sb.append(i);
        sb.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: c */
    private final void m5752c() {
        synchronized (this) {
            if (!this.f6629b) {
                int count = this.f6597a.getCount();
                this.f6630c = new ArrayList<>();
                if (count > 0) {
                    this.f6630c.add(0);
                    String b = m5753b();
                    String string = this.f6597a.getString(b, 0, this.f6597a.getWindowIndex(0));
                    for (int i = 1; i < count; i++) {
                        int windowIndex = this.f6597a.getWindowIndex(i);
                        String string2 = this.f6597a.getString(b, i, windowIndex);
                        if (string2 != null) {
                            string = string;
                            if (!string2.equals(string)) {
                                this.f6630c.add(Integer.valueOf(i));
                                string = string2;
                            }
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 78);
                            sb.append("Missing value for markerColumn: ");
                            sb.append(b);
                            sb.append(", at row: ");
                            sb.append(i);
                            sb.append(", for window: ");
                            sb.append(windowIndex);
                            throw new NullPointerException(sb.toString());
                        }
                    }
                }
                this.f6629b = true;
            }
        }
    }

    /* renamed from: a */
    protected abstract T m5755a();

    /* renamed from: b */
    protected abstract String m5753b();

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public final T get(int i) {
        m5752c();
        m5754a(i);
        if (i >= 0 && i != this.f6630c.size()) {
            if ((i == this.f6630c.size() - 1 ? this.f6597a.getCount() : this.f6630c.get(i + 1).intValue()) - this.f6630c.get(i).intValue() == 1) {
                this.f6597a.getWindowIndex(m5754a(i));
            }
        }
        return m5755a();
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        m5752c();
        return this.f6630c.size();
    }
}
