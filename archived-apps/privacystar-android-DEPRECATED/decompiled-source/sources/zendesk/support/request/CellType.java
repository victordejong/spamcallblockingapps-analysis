package zendesk.support.request;

import android.graphics.Rect;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import java.util.Date;
import java.util.List;
import zendesk.support.request.ComponentRequestAdapter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellType.class */
interface CellType {

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellType$Agent.class */
    public interface Agent extends Base {
        StateRequestUser getAgent();

        boolean isAgentNameVisible();

        void showAgentName(boolean z);
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellType$Attachment.class */
    public interface Attachment extends Base {
        StateRequestAttachment getAttachment();
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellType$Base.class */
    public interface Base {
        boolean areContentsTheSame(Base base);

        void bind(@NonNull ComponentRequestAdapter.RequestViewHolder requestViewHolder);

        long getGroupId();

        Rect getInsets();

        @LayoutRes
        int getLayoutId();

        int getPositionType();

        Date getTimeStamp();

        long getUniqueId();

        void setPositionType(int i);
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellType$Message.class */
    public interface Message extends Base {
        CharSequence getMessage();
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellType$Stateful.class */
    public interface Stateful extends Base {
        List<StateMessage> getErrorGroupMessages();

        StateMessage getStateMessage();

        boolean isErrorShown();

        boolean isLastErrorCellOfBlock();

        boolean isMarkedAsDelivered();

        Stateful markAsDelivered();

        Stateful markAsErrored(List<StateMessage> list, boolean z);
    }
}
