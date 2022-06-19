package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.Set;
/* renamed from: androidx.core.app.n */
/* loaded from: classes-dex2jar.jar:androidx/core/app/n.class */
public final class C0198n {
    /* renamed from: a */
    static RemoteInput m6089a(C0198n c0198n) {
        RemoteInput.Builder addExtras = new RemoteInput.Builder(c0198n.m6081i()).setLabel(c0198n.m6082h()).setChoices(c0198n.m6085e()).setAllowFreeFormInput(c0198n.m6087c()).addExtras(c0198n.m6083g());
        if (Build.VERSION.SDK_INT >= 29) {
            addExtras.setEditChoicesBeforeSending(c0198n.m6084f());
        }
        return addExtras.build();
    }

    /* renamed from: b */
    static RemoteInput[] m6088b(C0198n[] c0198nArr) {
        if (c0198nArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[c0198nArr.length];
        for (int i = 0; i < c0198nArr.length; i++) {
            remoteInputArr[i] = m6089a(c0198nArr[i]);
        }
        return remoteInputArr;
    }

    /* renamed from: c */
    public boolean m6087c() {
        throw null;
    }

    /* renamed from: d */
    public Set<String> m6086d() {
        throw null;
    }

    /* renamed from: e */
    public CharSequence[] m6085e() {
        throw null;
    }

    /* renamed from: f */
    public int m6084f() {
        throw null;
    }

    /* renamed from: g */
    public Bundle m6083g() {
        throw null;
    }

    /* renamed from: h */
    public CharSequence m6082h() {
        throw null;
    }

    /* renamed from: i */
    public String m6081i() {
        throw null;
    }
}
