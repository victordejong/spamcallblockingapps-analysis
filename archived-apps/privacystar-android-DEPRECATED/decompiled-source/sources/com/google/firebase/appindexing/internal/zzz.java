package com.google.firebase.appindexing.internal;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzz.class */
public final /* synthetic */ class zzz implements Comparator {
    static final Comparator zzdh = new zzz();

    private zzz() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Thing.zzc((String) obj, (String) obj2);
    }
}
