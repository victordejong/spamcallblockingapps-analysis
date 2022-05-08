package com.bumptech.glide.module;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/module/RegistersComponents.class */
public interface RegistersComponents {
    void registerComponents(@NonNull Context context, @NonNull Glide glide, @NonNull Registry registry);
}
