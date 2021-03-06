package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import java.io.InputStream;
import p610i.C10270k;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/ContactsPhotoRequestHandler.class */
public class ContactsPhotoRequestHandler extends RequestHandler {
    public static final int ID_CONTACT = 3;
    public static final int ID_DISPLAY_PHOTO = 4;
    public static final int ID_LOOKUP = 1;
    public static final int ID_THUMBNAIL = 2;
    public static final UriMatcher matcher;
    public final Context context;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        matcher = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        matcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        matcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        matcher.addURI("com.android.contacts", "contacts/#", 3);
        matcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    public ContactsPhotoRequestHandler(Context context) {
        this.context = context;
    }

    private InputStream getInputStream(Request request) throws IOException {
        Uri uri;
        ContentResolver contentResolver = this.context.getContentResolver();
        Uri uri2 = request.uri;
        int match = matcher.match(uri2);
        if (match != 1) {
            if (match != 2) {
                uri = uri2;
                if (match != 3) {
                    if (match != 4) {
                        throw new IllegalStateException("Invalid uri: " + uri2);
                    }
                }
            }
            return contentResolver.openInputStream(uri2);
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri2);
        uri = lookupContact;
        if (lookupContact == null) {
            return null;
        }
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        Uri uri = request.uri;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && matcher.match(request.uri) != -1;
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        InputStream inputStream = getInputStream(request);
        if (inputStream == null) {
            return null;
        }
        return new RequestHandler.Result(C10270k.m751a(inputStream), Picasso.LoadedFrom.DISK);
    }
}
