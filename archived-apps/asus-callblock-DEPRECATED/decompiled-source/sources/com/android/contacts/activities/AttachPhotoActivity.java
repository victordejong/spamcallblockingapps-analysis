package com.android.contacts.activities;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.Loader;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.c;
import com.android.contacts.model.d;
import com.android.contacts.model.f;
import com.android.contacts.p;
import com.android.contacts.q;
import com.android.contacts.util.ContactPhotoUtils;
import com.asus.updatesdk.BuildConfig;
import java.io.FileNotFoundException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AttachPhotoActivity.class */
public class AttachPhotoActivity extends p {
    private static final String KEY_CONTACT_URI = "contact_uri";
    private static final String KEY_CROPPED_PHOTO_URI = "cropped_photo_uri";
    private static final String KEY_TEMP_PHOTO_URI = "temp_photo_uri";
    private static final int REQUEST_CROP_PHOTO = 2;
    private static final int REQUEST_PICK_CONTACT = 1;
    private static final String TAG = AttachPhotoActivity.class.getSimpleName();
    private static final int mDefaultPhotoDim = 720;
    private static int mPhotoDim;
    private Uri mContactUri;
    private ContentResolver mContentResolver;
    private Uri mCroppedPhotoUri;
    private Uri mTempPhotoUri;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AttachPhotoActivity$Listener.class */
    public interface Listener {
        void onContactLoaded(c cVar);
    }

    private boolean hasIntentHandler(Intent intent) {
        List<ResolveInfo> queryIntentActivities = getPackageManager().queryIntentActivities(intent, 65536);
        return queryIntentActivities != null && queryIntentActivities.size() > 0;
    }

    private void loadContact(Uri uri, final Listener listener) {
        d dVar = new d(this, uri);
        dVar.registerListener(0, new Loader.OnLoadCompleteListener<c>() { // from class: com.android.contacts.activities.AttachPhotoActivity.3
            public void onLoadComplete(Loader<c> loader, c cVar) {
                try {
                    loader.reset();
                } catch (RuntimeException e) {
                    Log.e(AttachPhotoActivity.TAG, "Error resetting loader", e);
                }
                listener.onContactLoaded(cVar);
            }
        });
        dVar.startLoading();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveContact(c cVar) {
        if (cVar.o == null) {
            Log.w(TAG, "No raw contacts found for contact");
            Toast.makeText(this, getString(2131755450), 0).show();
            finish();
            return;
        }
        RawContactDeltaList a2 = cVar.a();
        RawContactDelta b2 = a2.b(this);
        if (b2 == null) {
            Log.w(TAG, "no writable raw-contact found");
            Toast.makeText(this, getString(2131755450), 0).show();
            finish();
            return;
        }
        saveToContact(cVar, a2, b2);
    }

    private void saveToContact(c cVar, RawContactDeltaList rawContactDeltaList, RawContactDelta rawContactDelta) {
        int c = q.c(this);
        try {
            Bitmap bitmapFromUri = ContactPhotoUtils.getBitmapFromUri(this, this.mCroppedPhotoUri);
            if (bitmapFromUri == null) {
                Log.w(TAG, "Could not decode bitmap");
                finish();
                return;
            }
            byte[] compressBitmap = ContactPhotoUtils.compressBitmap(Bitmap.createScaledBitmap(bitmapFromUri, c, c, false));
            if (compressBitmap == null) {
                Log.w(TAG, "could not create scaled and compressed Bitmap");
                finish();
                return;
            }
            RawContactDelta.ValuesDelta a2 = f.a(rawContactDelta, rawContactDelta.a(this), "vnd.android.cursor.item/photo");
            if (a2 == null) {
                Log.w(TAG, "cannot attach photo to this account type");
                finish();
                return;
            }
            a2.a(compressBitmap);
            Log.v(TAG, "all prerequisites met, about to save photo to contact");
            startService(ContactSaveService.a(this, rawContactDeltaList, BuildConfig.FLAVOR, cVar.B, rawContactDelta.a() != null ? rawContactDelta.a().longValue() : -1L, this.mCroppedPhotoUri.toString()));
            finish();
        } catch (FileNotFoundException e) {
            Log.w(TAG, "Could not find bitmap");
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        boolean z;
        if (i2 != -1) {
            finish();
            return;
        }
        Uri data = intent.getData();
        if (i != 1 || !data.getScheme().equals("content") || (!data.getAuthority().equals("com.android.contacts") && !data.getAuthority().equals("contacts"))) {
            if (i == 2) {
                getContentResolver().delete(this.mTempPhotoUri, null, null);
                if (i2 != -1) {
                    finish();
                    return;
                } else {
                    loadContact(this.mContactUri, new Listener() { // from class: com.android.contacts.activities.AttachPhotoActivity.2
                        @Override // com.android.contacts.activities.AttachPhotoActivity.Listener
                        public void onContactLoaded(c cVar) {
                            AttachPhotoActivity.this.saveContact(cVar);
                        }
                    });
                    z = false;
                }
            } else {
                Log.w(TAG, "Unsupported URI.");
                z = true;
            }
        } else if (i2 != -1) {
            finish();
            return;
        } else {
            Intent intent2 = getIntent();
            if (!ContactPhotoUtils.savePhotoFromUriToUri(this, intent2.getData(), this.mTempPhotoUri, false)) {
                finish();
                return;
            }
            Intent intent3 = new Intent("com.android.camera.action.CROP", this.mTempPhotoUri);
            if (intent2.getStringExtra("mimeType") != null) {
                intent3.setDataAndType(this.mTempPhotoUri, intent2.getStringExtra("mimeType"));
            }
            ContactPhotoUtils.addPhotoPickerExtras(intent3, this.mCroppedPhotoUri);
            ContactPhotoUtils.addCropExtras(intent3, mPhotoDim != 0 ? mPhotoDim : mDefaultPhotoDim);
            if (!hasIntentHandler(intent3)) {
                this.mCroppedPhotoUri = this.mTempPhotoUri;
                this.mContactUri = intent.getData();
                loadContact(this.mContactUri, new Listener() { // from class: com.android.contacts.activities.AttachPhotoActivity.1
                    @Override // com.android.contacts.activities.AttachPhotoActivity.Listener
                    public void onContactLoaded(c cVar) {
                        AttachPhotoActivity.this.saveContact(cVar);
                    }
                });
                return;
            }
            try {
                startActivityForResult(intent3, 2);
                z = false;
            } catch (Exception e) {
                Log.i(TAG, e.getMessage().toString());
                z = true;
            }
            this.mContactUri = intent.getData();
        }
        if (z) {
            Toast.makeText(this, 2131755443, 1).show();
            finish();
        }
    }

    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Cursor query;
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            if (bundle != null) {
                String string = bundle.getString("contact_uri");
                this.mContactUri = string == null ? null : Uri.parse(string);
                this.mTempPhotoUri = Uri.parse(bundle.getString(KEY_TEMP_PHOTO_URI));
                this.mCroppedPhotoUri = Uri.parse(bundle.getString(KEY_CROPPED_PHOTO_URI));
            } else {
                this.mTempPhotoUri = ContactPhotoUtils.generateTempImageUri(this);
                this.mCroppedPhotoUri = ContactPhotoUtils.generateTempCroppedImageUri(this);
                Intent intent = new Intent("android.intent.action.PICK");
                intent.setType("vnd.android.cursor.dir/contact");
                intent.putExtra("photoPick", true);
                startActivityForResult(intent, 1);
            }
            this.mContentResolver = getContentResolver();
            if (mPhotoDim == 0 && (query = this.mContentResolver.query(ContactsContract.DisplayPhoto.CONTENT_MAX_DIMENSIONS_URI, new String[]{"display_max_dim"}, null, null, null)) != null) {
                try {
                    if (query.moveToFirst()) {
                        mPhotoDim = query.getInt(0);
                    }
                } finally {
                    query.close();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.mContactUri != null) {
            bundle.putString("contact_uri", this.mContactUri.toString());
        }
        if (this.mTempPhotoUri != null) {
            bundle.putString(KEY_TEMP_PHOTO_URI, this.mTempPhotoUri.toString());
        }
        if (this.mCroppedPhotoUri != null) {
            bundle.putString(KEY_CROPPED_PHOTO_URI, this.mCroppedPhotoUri.toString());
        }
    }
}
