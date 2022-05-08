package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzue.class */
public final class zzue implements zzuj {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzud zzbuc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzue(zzud zzudVar) {
        this.zzbuc = zzudVar;
        this.limit = this.zzbuc.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Byte next() {
        return Byte.valueOf(nextByte());
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final byte nextByte() {
        try {
            zzud zzudVar = this.zzbuc;
            int i = this.position;
            this.position = i + 1;
            return zzudVar.zzal(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
