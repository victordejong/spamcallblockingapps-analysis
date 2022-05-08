package zendesk.belvedere;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.p001v4.app.Fragment;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/PermissionManager.class */
public class PermissionManager {
    private static final int PERMISSION_REQUEST_CODE = 9842;
    private InternalPermissionCallback permissionListener = null;
    private PermissionStorage preferences;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/PermissionManager$InternalPermissionCallback.class */
    public interface InternalPermissionCallback {
        void result(Map<String, Boolean> map, List<String> list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/PermissionManager$PermissionCallback.class */
    public interface PermissionCallback {
        void onPermissionsDenied();

        void onPermissionsGranted(List<MediaIntent> list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PermissionManager(Context context) {
        this.preferences = new PermissionStorage(context);
    }

    private void askForPermissions(Fragment fragment, List<String> list, final InternalPermissionCallback internalPermissionCallback) {
        setListener(new InternalPermissionCallback() { // from class: zendesk.belvedere.PermissionManager.2
            @Override // zendesk.belvedere.PermissionManager.InternalPermissionCallback
            public void result(Map<String, Boolean> map, List<String> list2) {
                for (String str : list2) {
                    PermissionManager.this.preferences.neverEverAskForThatPermissionAgain(str);
                }
                internalPermissionCallback.result(map, list2);
                PermissionManager.this.setListener(null);
            }
        });
        fragment.requestPermissions((String[]) list.toArray(new String[list.size()]), PERMISSION_REQUEST_CODE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canShowImageStream(Context context) {
        boolean z = false;
        boolean z2 = Build.VERSION.SDK_INT < 19;
        boolean isPermissionGranted = isPermissionGranted(context, "android.permission.READ_EXTERNAL_STORAGE");
        if (z2 || isPermissionGranted) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MediaIntent> filterMediaIntents(Context context, List<MediaIntent> list) {
        ArrayList arrayList = new ArrayList();
        for (MediaIntent mediaIntent : list) {
            if (mediaIntent.isAvailable()) {
                if (TextUtils.isEmpty(mediaIntent.getPermission())) {
                    arrayList.add(mediaIntent);
                } else if (isPermissionGranted(context, mediaIntent.getPermission())) {
                    arrayList.add(mediaIntent);
                }
            }
        }
        return arrayList;
    }

    private List<String> getPermissionsForImageStream(Context context) {
        ArrayList arrayList = new ArrayList();
        boolean canShowImageStream = canShowImageStream(context);
        boolean shouldINeverEverAskForThatPermissionAgain = this.preferences.shouldINeverEverAskForThatPermissionAgain("android.permission.READ_EXTERNAL_STORAGE");
        if (!canShowImageStream && (!shouldINeverEverAskForThatPermissionAgain)) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        return arrayList;
    }

    private List<String> getPermissionsFromIntents(List<MediaIntent> list) {
        ArrayList arrayList = new ArrayList();
        for (MediaIntent mediaIntent : list) {
            if (!TextUtils.isEmpty(mediaIntent.getPermission()) && !this.preferences.shouldINeverEverAskForThatPermissionAgain(mediaIntent.getPermission()) && mediaIntent.isAvailable()) {
                arrayList.add(mediaIntent.getPermission());
            }
        }
        return arrayList;
    }

    private boolean isPermissionGranted(Context context, String str) {
        return PermissionUtil.isPermissionGranted(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListener(InternalPermissionCallback internalPermissionCallback) {
        this.permissionListener = internalPermissionCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handlePermissions(Fragment fragment, final List<MediaIntent> list, final PermissionCallback permissionCallback) {
        final Context context = fragment.getContext();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getPermissionsForImageStream(context));
        arrayList.addAll(getPermissionsFromIntents(list));
        if (canShowImageStream(context) && arrayList.isEmpty()) {
            permissionCallback.onPermissionsGranted(filterMediaIntents(context, list));
        } else if (canShowImageStream(context) || !arrayList.isEmpty()) {
            askForPermissions(fragment, arrayList, new InternalPermissionCallback() { // from class: zendesk.belvedere.PermissionManager.1
                @Override // zendesk.belvedere.PermissionManager.InternalPermissionCallback
                public void result(Map<String, Boolean> map, List<String> list2) {
                    List<MediaIntent> filterMediaIntents = PermissionManager.this.filterMediaIntents(context, list);
                    if (PermissionManager.this.canShowImageStream(context)) {
                        permissionCallback.onPermissionsGranted(filterMediaIntents);
                    } else {
                        permissionCallback.onPermissionsDenied();
                    }
                }
            });
        } else {
            permissionCallback.onPermissionsDenied();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onRequestPermissionsResult(Fragment fragment, int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i != PERMISSION_REQUEST_CODE) {
            return false;
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (iArr[i2] == 0) {
                hashMap.put(strArr[i2], true);
            } else if (iArr[i2] == -1) {
                hashMap.put(strArr[i2], false);
                if (!fragment.shouldShowRequestPermissionRationale(strArr[i2])) {
                    arrayList.add(strArr[i2]);
                }
            }
        }
        if (this.permissionListener == null) {
            return true;
        }
        this.permissionListener.result(hashMap, arrayList);
        return true;
    }
}
