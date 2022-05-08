package com.bumptech.glide.load.c.b;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.c.b;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import java.io.File;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/c.class */
public final class c extends b<InputStream> implements d<File> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/c$a.class */
    public static final class a implements k<File, InputStream> {
        @Override // com.bumptech.glide.load.c.k
        public final j<File, InputStream> a(Context context, com.bumptech.glide.load.c.c cVar) {
            return new c(cVar.a(Uri.class, InputStream.class));
        }
    }

    public c(j<Uri, InputStream> jVar) {
        super(jVar);
    }
}
