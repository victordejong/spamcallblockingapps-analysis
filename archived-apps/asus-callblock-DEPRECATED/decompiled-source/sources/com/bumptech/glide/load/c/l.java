package com.bumptech.glide.load.c;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.a.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/l.class */
public class l<T> implements j<Integer, T> {

    /* renamed from: a  reason: collision with root package name */
    private final j<Uri, T> f3579a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f3580b;

    public l(Context context, j<Uri, T> jVar) {
        this(context.getResources(), jVar);
    }

    private l(Resources resources, j<Uri, T> jVar) {
        this.f3580b = resources;
        this.f3579a = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c<T> a(Integer num, int i, int i2) {
        Uri uri;
        c<T> cVar = null;
        try {
            uri = Uri.parse("android.resource://" + this.f3580b.getResourcePackageName(num.intValue()) + '/' + this.f3580b.getResourceTypeName(num.intValue()) + '/' + this.f3580b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e);
            }
            uri = null;
        }
        if (uri != null) {
            cVar = this.f3579a.a(uri, i, i2);
        }
        return cVar;
    }
}
