package androidx.core.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import androidx.core.p032c.C0624a;
import androidx.core.p032c.C0625b;
/* renamed from: androidx.core.content.a */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a.class */
public final class C0630a {
    /* renamed from: a */
    public static Cursor m8681a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, C0624a aVar) {
        Object c;
        if (Build.VERSION.SDK_INT >= 16) {
            if (aVar != null) {
                try {
                    c = aVar.m8689c();
                } catch (Exception e) {
                    if (e instanceof OperationCanceledException) {
                        throw new C0625b();
                    }
                    throw e;
                }
            } else {
                c = null;
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) c);
        } else if (aVar == null || !aVar.m8691a()) {
            return contentResolver.query(uri, strArr, str, strArr2, str2);
        } else {
            throw new C0625b();
        }
    }
}
