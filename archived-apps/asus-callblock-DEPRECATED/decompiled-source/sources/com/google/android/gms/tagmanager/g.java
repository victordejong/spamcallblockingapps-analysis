package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/g.class */
final class g extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4410b = h.DEVICE_ID.toString();
    private final Context c;

    public g(Context context) {
        super(f4410b, new String[0]);
        this.c = context;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        String string = Settings.Secure.getString(this.c.getContentResolver(), "android_id");
        return string == null ? cn.f() : cn.a((Object) string);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
