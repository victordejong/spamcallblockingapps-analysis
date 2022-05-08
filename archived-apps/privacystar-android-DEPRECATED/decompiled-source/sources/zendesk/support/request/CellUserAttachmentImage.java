package zendesk.support.request;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.zendesk.sdk.C1790R;
import java.util.Date;
import java.util.List;
import zendesk.support.request.CellType;
import zendesk.support.request.ComponentRequestAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellUserAttachmentImage.class */
public class CellUserAttachmentImage extends CellBase implements CellType.Attachment, CellType.Stateful {
    private final StateRequestAttachment attachment;
    private final List<StateMessage> erroredMessages;
    private final Rect insets;
    private final boolean lastErrorCellOfBlock;
    private final boolean markAsDelivered;
    private final StateMessage message;
    private final boolean showError;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellUserAttachmentImage(CellBindHelper cellBindHelper, StateMessage stateMessage, StateRequestAttachment stateRequestAttachment, Date date, boolean z, boolean z2, List<StateMessage> list, boolean z3) {
        super(cellBindHelper, C1790R.C1794layout.zs_request_user_attachment_image, stateRequestAttachment.getId(), -2147483647L, date);
        this.message = stateMessage;
        this.attachment = stateRequestAttachment;
        this.markAsDelivered = z;
        this.showError = z2;
        this.erroredMessages = list;
        this.insets = cellBindHelper.getInsets(0, 0, 0, C1790R.dimen.zs_request_message_inset_user_bottom);
        this.lastErrorCellOfBlock = z3;
    }

    private String buildTalkBackString(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getString(C1790R.string.zs_request_message_user_image_accessibility, this.attachment.getName()));
        sb.append(" ");
        if (!this.showError) {
            sb.append(context.getString(C1790R.string.zs_request_message_user_sent_accessibility, DateUtils.getRelativeTimeSpanString(context, this.message.getDate().getTime(), true)));
        } else {
            sb.append(context.getString(C1790R.string.zs_request_message_user_error_accessibility));
        }
        return sb.toString();
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public boolean areContentsTheSame(CellType.Base base) {
        return this.utils.areAttachmentCellContentsTheSame(this, base) && this.utils.areStatefulCellContentsTheSame(this, base);
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public void bind(@NonNull ComponentRequestAdapter.RequestViewHolder requestViewHolder) {
        ImageView imageView = (ImageView) requestViewHolder.findCachedView(C1790R.C1793id.request_user_message_attachment_image);
        this.utils.bindImage(imageView, this.attachment);
        this.utils.addOnClickListenerForImageAttachment(imageView, this.attachment);
        this.utils.bindStatusLabel((TextView) requestViewHolder.findCachedView(C1790R.C1793id.request_user_attachment_image_status), this.lastErrorCellOfBlock, this.markAsDelivered);
        View.OnClickListener errorClickListener = this.utils.errorClickListener(this.showError, this.erroredMessages);
        requestViewHolder.itemView.setOnClickListener(errorClickListener);
        imageView.setColorFilter(this.utils.colorForErrorImage(this.showError));
        if (errorClickListener != null) {
            imageView.setOnClickListener(errorClickListener);
        }
        View findCachedView = requestViewHolder.findCachedView(C1790R.C1793id.request_user_message_attachment_container);
        findCachedView.setContentDescription(buildTalkBackString(findCachedView.getContext()));
    }

    @Override // zendesk.support.request.CellType.Attachment
    public StateRequestAttachment getAttachment() {
        return this.attachment;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public List<StateMessage> getErrorGroupMessages() {
        return this.erroredMessages;
    }

    @Override // zendesk.support.request.CellBase, zendesk.support.request.CellType.Base
    public Rect getInsets() {
        return this.insets;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public StateMessage getStateMessage() {
        return this.message;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public boolean isErrorShown() {
        return this.showError;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public boolean isLastErrorCellOfBlock() {
        return this.lastErrorCellOfBlock;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public boolean isMarkedAsDelivered() {
        return this.markAsDelivered;
    }

    @Override // zendesk.support.request.CellType.Stateful
    public CellType.Stateful markAsDelivered() {
        return new CellUserAttachmentImage(this.utils, this.message, this.attachment, getTimeStamp(), true, this.showError, this.erroredMessages, this.lastErrorCellOfBlock);
    }

    @Override // zendesk.support.request.CellType.Stateful
    public CellType.Stateful markAsErrored(List<StateMessage> list, boolean z) {
        return new CellUserAttachmentImage(this.utils, this.message, this.attachment, getTimeStamp(), this.markAsDelivered, true, list, z);
    }
}
