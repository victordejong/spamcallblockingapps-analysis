package com.android.contacts.ezmode;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.android.contacts.activities.RequestCameraPermissionsActivity;
import com.android.contacts.detail.PhotoSelectionHandler;
import com.android.contacts.editor.d;
import com.android.contacts.util.ContactPhotoUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/g.class */
public class g extends PhotoSelectionHandler {

    /* renamed from: b  reason: collision with root package name */
    private ImageView f1263b;
    private Activity d;
    private b e;
    private boolean f;

    /* renamed from: a  reason: collision with root package name */
    private final String f1262a = g.class.getSimpleName();
    private final a c = new a();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/g$a.class */
    public final class a extends PhotoSelectionHandler.PhotoActionListener implements d.a {
        public a() {
            super();
        }

        @Override // com.android.contacts.editor.d.a
        public final void a(int i) {
            Log.d(g.this.f1262a, "onRequest: " + i);
            if (i == 1) {
                g.this.onClick(g.this.f1263b);
            }
        }

        @Override // com.android.contacts.editor.d.a
        public final void a(d dVar) {
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
        public final String getCurrentPhotoFile() {
            return g.this.e.c();
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener, com.android.contacts.editor.f.b
        public final void onChangePhotoChosen() {
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
        public final void onPhotoSelected(Uri uri) {
            Bitmap bitmapFromUri = ContactPhotoUtils.getBitmapFromUri(g.this.mContext, uri);
            if (bitmapFromUri == null || bitmapFromUri.getHeight() < 0 || bitmapFromUri.getWidth() < 0) {
                Log.w(g.this.f1262a, "Invalid bitmap passed to setPhoto()");
            }
            if (uri != null) {
                g.this.e.a(bitmapFromUri, uri.toString());
            } else {
                Log.d(g.this.f1262a, "uri is null.");
            }
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
        public final void onPhotoSelectionDismissed() {
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener, com.android.contacts.editor.f.b
        public final void onRemovePictureChosen() {
            g.this.e.a();
            g.this.e.a(null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/g$b.class */
    public interface b {
        void a();

        void a(Bitmap bitmap, String str);

        void a(String str);

        String c();
    }

    public g(Context context, View view, int i, boolean z) {
        super(context, view, i, z, null);
        this.d = (Activity) context;
        this.e = (b) context;
        this.f = z;
    }

    @Override // com.android.contacts.detail.PhotoSelectionHandler
    public PhotoSelectionHandler.PhotoActionListener getListener() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.detail.PhotoSelectionHandler
    public int getWritableEntityIndex() {
        return this.f ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.detail.PhotoSelectionHandler
    public void startPhotoActivity(Intent intent, int i, String str) {
        this.e.a(str);
        if (i == 1001 && RequestCameraPermissionsActivity.startPermissionActivity(this.d, intent, i, null)) {
            return;
        }
        if (this.d.getPackageManager().resolveActivity(intent, 65536) != null) {
            this.d.startActivityForResult(intent, i);
        } else {
            Toast.makeText(this.d, 2131755026, 0).show();
        }
    }
}
