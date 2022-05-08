package zendesk.belvedere;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.support.p001v4.util.Pair;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/MediaSource.class */
public class MediaSource {
    private final Context context;
    private final IntentRegistry intentRegistry;
    private final Storage storage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaSource(Context context, Storage storage, IntentRegistry intentRegistry) {
        this.context = context;
        this.storage = storage;
        this.intentRegistry = intentRegistry;
    }

    private boolean canPickImageFromCamera(Context context) {
        return hasCamera(context);
    }

    @SuppressLint({"NewApi"})
    private List<Uri> extractUrisFromIntent(Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 16 && intent.getClipData() != null) {
            ClipData clipData = intent.getClipData();
            int itemCount = clipData.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                ClipData.Item itemAt = clipData.getItemAt(i);
                if (itemAt.getUri() != null) {
                    arrayList.add(itemAt.getUri());
                }
            }
        } else if (intent.getData() != null) {
            arrayList.add(intent.getData());
        }
        return arrayList;
    }

    @TargetApi(19)
    private Intent getDocumentAndroidIntent(String str, boolean z) {
        Intent intent;
        if (Build.VERSION.SDK_INT >= 19) {
            C2598L.m7d("Belvedere", "Gallery Intent, using 'ACTION_OPEN_DOCUMENT'");
            intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        } else {
            C2598L.m7d("Belvedere", "Gallery Intent, using 'ACTION_GET_CONTENT'");
            intent = new Intent("android.intent.action.GET_CONTENT");
        }
        intent.setType(str);
        intent.addCategory("android.intent.category.OPENABLE");
        if (Build.VERSION.SDK_INT >= 18) {
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", z);
        }
        return intent;
    }

    private boolean hasCamera(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.media.action.IMAGE_CAPTURE");
        PackageManager packageManager = context.getPackageManager();
        boolean z = true;
        boolean z2 = packageManager.hasSystemFeature("android.hardware.camera") || packageManager.hasSystemFeature("android.hardware.camera.front");
        boolean isIntentResolvable = isIntentResolvable(intent, context);
        C2598L.m7d("Belvedere", String.format(Locale.US, "Camera present: %b, Camera App present: %b", Boolean.valueOf(z2), Boolean.valueOf(isIntentResolvable)));
        if (!z2 || !isIntentResolvable) {
            z = false;
        }
        return z;
    }

    private boolean hasDocumentApp(Context context) {
        return isIntentResolvable(getDocumentAndroidIntent("*/*", false), context);
    }

    private boolean isIntentResolvable(Intent intent, Context context) {
        return (intent == null || intent.resolveActivity(context.getPackageManager()) == null) ? false : true;
    }

    private Pair<MediaIntent, MediaResult> pickImageFromCameraInternal(Context context, int i) {
        File fileForCamera = this.storage.getFileForCamera(context);
        String str = null;
        if (fileForCamera == null) {
            C2598L.m4w("Belvedere", "Camera Intent: Image path is null. There's something wrong with the storage.");
            return null;
        }
        Uri fileProviderUri = this.storage.getFileProviderUri(context, fileForCamera);
        if (fileProviderUri == null) {
            C2598L.m4w("Belvedere", "Camera Intent: Uri to file is null. There's something wrong with the storage or FileProvider configuration.");
            return null;
        }
        C2598L.m7d("Belvedere", String.format(Locale.US, "Camera Intent: Request Id: %s - File: %s - Uri: %s", Integer.valueOf(i), fileForCamera, fileProviderUri));
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", fileProviderUri);
        this.storage.grantPermissionsForUri(context, intent, fileProviderUri, 3);
        boolean z = PermissionUtil.hasPermissionInManifest(context, "android.permission.CAMERA") && !PermissionUtil.isPermissionGranted(context, "android.permission.CAMERA");
        MediaResult mediaResultForUri = Storage.getMediaResultForUri(context, fileProviderUri);
        MediaResult mediaResult = new MediaResult(fileForCamera, fileProviderUri, fileProviderUri, fileForCamera.getName(), mediaResultForUri.getMimeType(), mediaResultForUri.getSize(), mediaResultForUri.getWidth(), mediaResultForUri.getHeight());
        if (z) {
            str = "android.permission.CAMERA";
        }
        return new Pair<>(new MediaIntent(i, intent, str, true, 2), mediaResult);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<MediaIntent, MediaResult> getCameraIntent(int i) {
        return canPickImageFromCamera(this.context) ? pickImageFromCameraInternal(this.context, i) : new Pair<>(MediaIntent.notAvailable(), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getFilesFromActivityOnResult(Context context, int i, int i2, Intent intent, Callback<List<MediaResult>> callback, boolean z) {
        ArrayList arrayList = new ArrayList();
        MediaResult forRequestCode = this.intentRegistry.getForRequestCode(i);
        if (forRequestCode != null) {
            if (forRequestCode.getFile() == null || forRequestCode.getUri() == null) {
                C2598L.m7d("Belvedere", String.format(Locale.US, "Parsing activity result - Gallery - Ok: %s", Boolean.valueOf(i2 == -1)));
                if (i2 == -1) {
                    List<Uri> extractUrisFromIntent = extractUrisFromIntent(intent);
                    C2598L.m7d("Belvedere", String.format(Locale.US, "Number of items received from gallery: %s", Integer.valueOf(extractUrisFromIntent.size())));
                    if (z) {
                        C2598L.m7d("Belvedere", "Resolving items");
                        ResolveUriTask.start(context, this.storage, callback, extractUrisFromIntent);
                        return;
                    }
                    C2598L.m7d("Belvedere", "Resolving items turned off");
                    for (Uri uri : extractUrisFromIntent) {
                        arrayList.add(Storage.getMediaResultForUri(context, uri));
                    }
                }
            } else {
                C2598L.m7d("Belvedere", String.format(Locale.US, "Parsing activity result - Camera - Ok: %s", Boolean.valueOf(i2 == -1)));
                this.storage.revokePermissionsFromUri(context, forRequestCode.getUri(), 3);
                if (i2 == -1) {
                    MediaResult mediaResultForUri = Storage.getMediaResultForUri(context, forRequestCode.getUri());
                    arrayList.add(new MediaResult(forRequestCode.getFile(), forRequestCode.getUri(), forRequestCode.getOriginalUri(), forRequestCode.getName(), mediaResultForUri.getMimeType(), mediaResultForUri.getSize(), mediaResultForUri.getWidth(), mediaResultForUri.getHeight()));
                    C2598L.m7d("Belvedere", String.format(Locale.US, "Image from camera: %s", forRequestCode.getFile()));
                }
                this.intentRegistry.freeSlot(i);
            }
        }
        if (callback != null) {
            callback.internalSuccess(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaIntent getGalleryIntent(int i, String str, boolean z) {
        return hasDocumentApp(this.context) ? new MediaIntent(i, getDocumentAndroidIntent(str, z), null, true, 1) : MediaIntent.notAvailable();
    }
}
