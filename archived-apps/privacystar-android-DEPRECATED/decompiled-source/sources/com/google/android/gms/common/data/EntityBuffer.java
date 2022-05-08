package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayList;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/EntityBuffer.class */
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {
    private boolean zamd = false;
    private ArrayList<Integer> zame;

    @KeepForSdk
    protected EntityBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    private final void zacb() {
        synchronized (this) {
            if (!this.zamd) {
                int count = this.mDataHolder.getCount();
                this.zame = new ArrayList<>();
                if (count > 0) {
                    this.zame.add(0);
                    String primaryDataMarkerColumn = getPrimaryDataMarkerColumn();
                    String string = this.mDataHolder.getString(primaryDataMarkerColumn, 0, this.mDataHolder.getWindowIndex(0));
                    for (int i = 1; i < count; i++) {
                        int windowIndex = this.mDataHolder.getWindowIndex(i);
                        String string2 = this.mDataHolder.getString(primaryDataMarkerColumn, i, windowIndex);
                        if (string2 == null) {
                            StringBuilder sb = new StringBuilder(String.valueOf(primaryDataMarkerColumn).length() + 78);
                            sb.append("Missing value for markerColumn: ");
                            sb.append(primaryDataMarkerColumn);
                            sb.append(", at row: ");
                            sb.append(i);
                            sb.append(", for window: ");
                            sb.append(windowIndex);
                            throw new NullPointerException(sb.toString());
                        }
                        string = string;
                        if (!string2.equals(string)) {
                            this.zame.add(Integer.valueOf(i));
                            string = string2;
                        }
                    }
                }
                this.zamd = true;
            }
        }
    }

    private final int zah(int i) {
        if (i >= 0 && i < this.zame.size()) {
            return this.zame.get(i).intValue();
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("Position ");
        sb.append(i);
        sb.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public final T get(int i) {
        zacb();
        int zah = zah(i);
        int i2 = 0;
        if (i >= 0) {
            if (i == this.zame.size()) {
                i2 = 0;
            } else {
                i2 = i == this.zame.size() - 1 ? this.mDataHolder.getCount() - this.zame.get(i).intValue() : this.zame.get(i + 1).intValue() - this.zame.get(i).intValue();
                if (i2 == 1) {
                    int zah2 = zah(i);
                    int windowIndex = this.mDataHolder.getWindowIndex(zah2);
                    String childDataMarkerColumn = getChildDataMarkerColumn();
                    if (childDataMarkerColumn != null && this.mDataHolder.getString(childDataMarkerColumn, zah2, windowIndex) == null) {
                        i2 = 0;
                    }
                }
            }
        }
        return getEntry(zah, i2);
    }

    @KeepForSdk
    protected String getChildDataMarkerColumn() {
        return null;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public int getCount() {
        zacb();
        return this.zame.size();
    }

    @KeepForSdk
    protected abstract T getEntry(int i, int i2);

    @KeepForSdk
    protected abstract String getPrimaryDataMarkerColumn();
}
