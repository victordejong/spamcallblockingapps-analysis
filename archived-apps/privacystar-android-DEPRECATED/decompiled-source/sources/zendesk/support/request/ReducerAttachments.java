package zendesk.support.request;

import android.support.annotation.NonNull;
import com.zendesk.logger.Logger;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import zendesk.belvedere.MediaResult;
import zendesk.suas.Action;
import zendesk.suas.Reducer;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ReducerAttachments.class */
class ReducerAttachments extends Reducer<StateAttachments> {
    private static final String LOG_FORMAT_ATTACHMENT_DROPPED = "Cannot add attachment %s. Size is %d, max attachment size is %d.";
    private static final String LOG_MESSAGE_ATTACHMENTS_DISABLED = "Cannot add attachments, they are disabled in your Zendesk settings.";

    @Override // zendesk.suas.Reducer
    @NonNull
    public StateAttachments getInitialState() {
        return new StateAttachments();
    }

    @Override // zendesk.suas.Reducer
    public /* bridge */ /* synthetic */ StateAttachments reduce(@NonNull StateAttachments stateAttachments, @NonNull Action action) {
        return reduce2(stateAttachments, (Action<?>) action);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: reduce  reason: avoid collision after fix types in other method */
    public StateAttachments reduce2(@NonNull StateAttachments stateAttachments, @NonNull Action<?> action) {
        char c;
        String actionType = action.getActionType();
        switch (actionType.hashCode()) {
            case -1326172566:
                if (actionType.equals("ATTACHMENTS_SELECTED")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -635275733:
                if (actionType.equals("ATTACHMENTS_DESELECTED")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -91317760:
                if (actionType.equals("LOAD_SETTINGS_SUCCESS")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 207206879:
                if (actionType.equals("START_CONFIG")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 979542142:
                if (actionType.equals("CLEAR_ATTACHMENTS")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                List<MediaResult> list = (List) action.getData();
                ArrayList arrayList = new ArrayList();
                for (MediaResult mediaResult : list) {
                    arrayList.add(StateRequestAttachment.convert(mediaResult));
                }
                return stateAttachments.newBuilder().addAllSelectedAttachments(arrayList).setSelectedAttachments(CollectionUtils.combineLists(arrayList, stateAttachments.getSelectedAttachments())).build();
            case 1:
                List<StateRequestAttachment> files = ((RequestUiConfig) action.getData()).getFiles();
                return stateAttachments.newBuilder().addAllSelectedAttachments(files).setSelectedAttachments(files).build();
            case 2:
                List<MediaResult> list2 = (List) action.getData();
                HashSet hashSet = new HashSet();
                for (MediaResult mediaResult2 : list2) {
                    hashSet.add(mediaResult2.getOriginalUri());
                }
                ArrayList arrayList2 = new ArrayList();
                for (StateRequestAttachment stateRequestAttachment : stateAttachments.getSelectedAttachments()) {
                    if (!hashSet.contains(stateRequestAttachment.getParsedLocalUri())) {
                        arrayList2.add(stateRequestAttachment);
                    }
                }
                return stateAttachments.newBuilder().setSelectedAttachments(arrayList2).build();
            case 3:
                StateSettings stateSettings = (StateSettings) action.getData();
                ArrayList arrayList3 = new ArrayList();
                if (stateSettings.isAttachmentsEnabled()) {
                    long maxAttachmentSize = stateSettings.getMaxAttachmentSize();
                    for (StateRequestAttachment stateRequestAttachment2 : stateAttachments.getSelectedAttachments()) {
                        if (stateRequestAttachment2.getSize() > maxAttachmentSize) {
                            Logger.m298d("RequestActivity", LOG_FORMAT_ATTACHMENT_DROPPED, stateRequestAttachment2.getName(), Long.valueOf(stateRequestAttachment2.getSize()), Long.valueOf(maxAttachmentSize));
                        } else {
                            arrayList3.add(stateRequestAttachment2);
                        }
                    }
                    return stateAttachments.newBuilder().setSelectedAttachments(arrayList3).build();
                }
                Logger.m289w("RequestActivity", LOG_MESSAGE_ATTACHMENTS_DISABLED, new Object[0]);
                return new StateAttachments();
            case 4:
                return new StateAttachments();
            default:
                return null;
        }
    }
}
