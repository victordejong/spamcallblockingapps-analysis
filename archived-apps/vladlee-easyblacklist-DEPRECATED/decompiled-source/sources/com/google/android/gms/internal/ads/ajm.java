package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajm.class */
public final class ajm implements Iterator<ahl> {

    /* renamed from: a */
    private final ArrayDeque<ajh> f7489a;

    /* renamed from: b */
    private ahl f7490b;

    private ajm(zzdqk zzdqkVar) {
        ahl ahlVar;
        zzdqk zzdqkVar2;
        if (zzdqkVar instanceof ajh) {
            ajh ajhVar = (ajh) zzdqkVar;
            this.f7489a = new ArrayDeque<>(ajhVar.mo3409a());
            this.f7489a.push(ajhVar);
            zzdqkVar2 = ajhVar.f7474c;
            ahlVar = m5186a(zzdqkVar2);
        } else {
            this.f7489a = null;
            ahlVar = (ahl) zzdqkVar;
        }
        this.f7490b = ahlVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ajm(zzdqk zzdqkVar, byte b) {
        this(zzdqkVar);
    }

    /* renamed from: a */
    private final ahl m5186a(zzdqk zzdqkVar) {
        while (zzdqkVar instanceof ajh) {
            ajh ajhVar = (ajh) zzdqkVar;
            this.f7489a.push(ajhVar);
            zzdqkVar = ajhVar.f7474c;
        }
        return (ahl) zzdqkVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7490b != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ ahl next() {
        ahl ahlVar;
        zzdqk zzdqkVar;
        ahl ahlVar2 = this.f7490b;
        if (ahlVar2 != null) {
            do {
                ArrayDeque<ajh> arrayDeque = this.f7489a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    ahlVar = null;
                    break;
                }
                zzdqkVar = this.f7489a.pop().f7475d;
                ahlVar = m5186a(zzdqkVar);
            } while (ahlVar.isEmpty());
            this.f7490b = ahlVar;
            return ahlVar2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
