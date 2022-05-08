package com.bumptech.glide.load.resource.b;

import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.e;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/a.class */
public final class a implements e<File, File> {
    @Override // com.bumptech.glide.load.e
    public final /* synthetic */ k<File> a(File file, int i, int i2) {
        return new b(file);
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        return BuildConfig.FLAVOR;
    }
}
