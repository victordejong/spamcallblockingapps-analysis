package com.squareup.picasso;

import android.content.Context;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/ContentStreamRequestHandler.class */
public class ContentStreamRequestHandler extends RequestHandler {
    final Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContentStreamRequestHandler(Context context) {
        this.context = context;
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        return FirebaseAnalytics.Param.CONTENT.equals(request.uri.getScheme());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputStream getInputStream(Request request) throws FileNotFoundException {
        return this.context.getContentResolver().openInputStream(request.uri);
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        return new RequestHandler.Result(getInputStream(request), Picasso.LoadedFrom.DISK);
    }
}
