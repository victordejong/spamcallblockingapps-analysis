package p081h.p119d.p120a.p124s.p125h;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.d.a.s.h.i */
/* loaded from: classes-dex2jar.jar:h/d/a/s/h/i.class */
public class C5822i extends AbstractC5820g<InputStream> {

    /* renamed from: d */
    public static final UriMatcher f14670d = new UriMatcher(-1);

    static {
        f14670d.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f14670d.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f14670d.addURI("com.android.contacts", "contacts/#/photo", 2);
        f14670d.addURI("com.android.contacts", "contacts/#", 3);
        f14670d.addURI("com.android.contacts", "contacts/#/display_photo", 4);
    }

    public C5822i(Context context, Uri uri) {
        super(context, uri);
    }

    @TargetApi(14)
    /* renamed from: a */
    public final InputStream m24301a(ContentResolver contentResolver, Uri uri) {
        return Build.VERSION.SDK_INT < 14 ? ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri) : ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5820g
    /* renamed from: a */
    public InputStream mo5520a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        return m24300a(uri, contentResolver, f14670d.match(uri));
    }

    /* renamed from: a */
    public final InputStream m24300a(Uri uri, ContentResolver contentResolver, int i) throws FileNotFoundException {
        if (i != 1 && i != 3) {
            return contentResolver.openInputStream(uri);
        }
        Uri uri2 = uri;
        if (i == 1) {
            uri2 = ContactsContract.Contacts.lookupContact(contentResolver, uri);
            if (uri2 == null) {
                throw new FileNotFoundException("Contact cannot be found");
            }
        }
        return m24301a(contentResolver, uri2);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo5518a(InputStream inputStream) throws IOException {
        inputStream.close();
    }
}
