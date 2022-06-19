package p193e.p194a.p372b0.p413i;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import java.util.ArrayList;
import java.util.Objects;
/* renamed from: e.a.b0.i.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/d.class */
public abstract class AbstractC8453d extends ContentProvider {

    /* renamed from: a */
    public AbstractC8455b f26163a = C8454a.f26164a;

    /* renamed from: e.a.b0.i.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/d$a.class */
    public static class C8454a implements AbstractC8455b {

        /* renamed from: a */
        public static final AbstractC8455b f26164a = new C8454a();
    }

    /* renamed from: e.a.b0.i.d$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/d$b.class */
    public interface AbstractC8455b {
    }

    /* renamed from: a */
    public abstract ContentProviderResult[] mo28523a(ArrayList<ContentProviderOperation> arrayList) throws OperationApplicationException;

    @Override // android.content.ContentProvider
    public final ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> arrayList) throws OperationApplicationException {
        Objects.requireNonNull((C8454a) this.f26163a);
        try {
            return mo28523a(arrayList);
        } finally {
            Objects.requireNonNull((C8454a) this.f26163a);
        }
    }

    @Override // android.content.ContentProvider
    public final int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        Objects.requireNonNull((C8454a) this.f26163a);
        try {
            return mo28522c(uri, contentValuesArr);
        } finally {
            Objects.requireNonNull((C8454a) this.f26163a);
        }
    }

    /* renamed from: c */
    public abstract int mo28522c(Uri uri, ContentValues[] contentValuesArr);

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        Objects.requireNonNull((C8454a) this.f26163a);
        try {
            return mo28521d(str, str2, bundle);
        } finally {
            Objects.requireNonNull((C8454a) this.f26163a);
        }
    }

    /* renamed from: d */
    public abstract Bundle mo28521d(String str, String str2, Bundle bundle);

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        Objects.requireNonNull((C8454a) this.f26163a);
        try {
            return mo28520e(uri, str, strArr);
        } finally {
            Objects.requireNonNull((C8454a) this.f26163a);
        }
    }

    /* renamed from: e */
    public abstract int mo28520e(Uri uri, String str, String[] strArr);

    /* renamed from: f */
    public abstract Uri mo28519f(Uri uri, ContentValues contentValues);

    /* renamed from: g */
    public abstract Cursor mo28518g(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);

    /* renamed from: h */
    public abstract int mo28517h(Uri uri, ContentValues contentValues, String str, String[] strArr);

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        Objects.requireNonNull((C8454a) this.f26163a);
        try {
            return mo28519f(uri, contentValues);
        } finally {
            Objects.requireNonNull((C8454a) this.f26163a);
        }
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return query(uri, strArr, str, strArr2, str2, null);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        Objects.requireNonNull((C8454a) this.f26163a);
        try {
            return mo28518g(uri, strArr, str, strArr2, str2, cancellationSignal);
        } finally {
            Objects.requireNonNull((C8454a) this.f26163a);
        }
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        Objects.requireNonNull((C8454a) this.f26163a);
        try {
            return mo28517h(uri, contentValues, str, strArr);
        } finally {
            Objects.requireNonNull((C8454a) this.f26163a);
        }
    }
}
