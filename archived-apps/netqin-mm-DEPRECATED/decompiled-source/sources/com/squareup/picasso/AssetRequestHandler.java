package com.squareup.picasso;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import p610i.C10270k;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/AssetRequestHandler.class */
public class AssetRequestHandler extends RequestHandler {
    public static final String ANDROID_ASSET = "android_asset";
    public static final int ASSET_PREFIX_LENGTH = 22;
    public AssetManager assetManager;
    public final Context context;
    public final Object lock = new Object();

    public AssetRequestHandler(Context context) {
        this.context = context;
    }

    public static String getFilePath(Request request) {
        return request.uri.toString().substring(ASSET_PREFIX_LENGTH);
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        Uri uri = request.uri;
        boolean z = false;
        if ("file".equals(uri.getScheme())) {
            z = false;
            if (!uri.getPathSegments().isEmpty()) {
                z = false;
                if (ANDROID_ASSET.equals(uri.getPathSegments().get(0))) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        if (this.assetManager == null) {
            synchronized (this.lock) {
                if (this.assetManager == null) {
                    this.assetManager = this.context.getAssets();
                }
            }
        }
        return new RequestHandler.Result(C10270k.m751a(this.assetManager.open(getFilePath(request))), Picasso.LoadedFrom.DISK);
    }
}
