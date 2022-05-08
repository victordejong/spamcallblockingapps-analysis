package zendesk.belvedere;

import android.util.SparseArray;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/IntentRegistry.class */
class IntentRegistry {
    private static final int END_REQUEST_CODE = 1650;
    private static final int START_REQUEST_CODE = 1600;
    private SparseArray<MediaResult> pendingIntents = new SparseArray<>();

    private int getRequestCode() {
        for (int i = START_REQUEST_CODE; i < END_REQUEST_CODE; i++) {
            if (this.pendingIntents.get(i) == null) {
                return i;
            }
        }
        C2598L.m7d("Belvedere", "No slot free. Clearing registry.");
        this.pendingIntents.clear();
        return getRequestCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void freeSlot(int i) {
        synchronized (this) {
            this.pendingIntents.remove(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaResult getForRequestCode(int i) {
        MediaResult mediaResult;
        synchronized (this) {
            mediaResult = this.pendingIntents.get(i);
        }
        return mediaResult;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int reserveSlot() {
        int requestCode;
        synchronized (this) {
            requestCode = getRequestCode();
            this.pendingIntents.put(requestCode, MediaResult.empty());
        }
        return requestCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateRequestCode(int i, MediaResult mediaResult) {
        synchronized (this) {
            this.pendingIntents.put(i, mediaResult);
        }
    }
}
