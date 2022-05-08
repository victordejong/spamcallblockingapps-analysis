package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder.class */
public class ResourceDrawableDecoder implements ResourceDecoder<Uri, Drawable> {
    private static final int ID_PATH_SEGMENTS = 1;
    private static final int NAME_PATH_SEGMENT_INDEX = 1;
    private static final int NAME_URI_PATH_SEGMENTS = 2;
    private static final int RESOURCE_ID_SEGMENT_INDEX = 0;
    private static final int TYPE_PATH_SEGMENT_INDEX = 0;
    private final Context context;

    public ResourceDrawableDecoder(Context context) {
        this.context = context.getApplicationContext();
    }

    @NonNull
    private Context getContextForPackage(Uri uri, String str) {
        try {
            return this.context.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
        }
    }

    @DrawableRes
    private int loadResourceIdFromUri(Uri uri) {
        Integer num;
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            String authority = uri.getAuthority();
            String str = pathSegments.get(0);
            num = Integer.valueOf(this.context.getResources().getIdentifier(pathSegments.get(1), str, authority));
        } else {
            if (pathSegments.size() == 1) {
                try {
                    num = Integer.valueOf(pathSegments.get(0));
                } catch (NumberFormatException e) {
                }
            }
            num = null;
        }
        if (num == null) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
        } else if (num.intValue() != 0) {
            return num.intValue();
        } else {
            throw new IllegalArgumentException("Failed to obtain resource id for: " + uri);
        }
    }

    @Nullable
    public Resource<Drawable> decode(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        int loadResourceIdFromUri = loadResourceIdFromUri(uri);
        String authority = uri.getAuthority();
        return NonOwnedDrawableResource.newInstance(DrawableDecoderCompat.getDrawable(this.context, authority.equals(this.context.getPackageName()) ? this.context : getContextForPackage(uri, authority), loadResourceIdFromUri));
    }

    public boolean handles(@NonNull Uri uri, @NonNull Options options) {
        return uri.getScheme().equals("android.resource");
    }
}
