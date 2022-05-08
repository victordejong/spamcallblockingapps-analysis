package com.google.android.gms.common.data;

import android.content.ContentValues;
import com.google.android.gms.common.data.DataHolder;
import java.util.HashMap;
/* renamed from: com.google.android.gms.common.data.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/a.class */
final class C1645a extends DataHolder.Builder {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1645a(String[] strArr) {
        super(strArr, (byte) 0);
    }

    @Override // com.google.android.gms.common.data.DataHolder.Builder
    public final DataHolder.Builder withRow(ContentValues contentValues) {
        throw new UnsupportedOperationException("Cannot add data to empty builder");
    }

    @Override // com.google.android.gms.common.data.DataHolder.Builder
    public final DataHolder.Builder zaa(HashMap<String, Object> hashMap) {
        throw new UnsupportedOperationException("Cannot add data to empty builder");
    }
}
