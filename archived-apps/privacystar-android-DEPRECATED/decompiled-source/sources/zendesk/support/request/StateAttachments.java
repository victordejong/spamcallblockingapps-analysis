package zendesk.support.request;

import com.zendesk.util.CollectionUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import zendesk.suas.State;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateAttachments.class */
class StateAttachments implements Serializable {
    private final Set<StateRequestAttachment> allSelectedAttachments;
    private final List<StateRequestAttachment> selectedAttachments;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateAttachments$Builder.class */
    public static class Builder {
        private Set<StateRequestAttachment> attachmentNotSelectedButVisible;
        private List<StateRequestAttachment> selectedAttachments;

        private Builder(StateAttachments stateAttachments) {
            this.selectedAttachments = CollectionUtils.copyOf(stateAttachments.getSelectedAttachments());
            this.attachmentNotSelectedButVisible = new TreeSet(new UriComparator());
            this.attachmentNotSelectedButVisible.addAll(stateAttachments.getAllSelectedAttachments());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder addAllSelectedAttachments(List<StateRequestAttachment> list) {
            Collections.reverse(list);
            this.attachmentNotSelectedButVisible.addAll(list);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public StateAttachments build() {
            return new StateAttachments(this.selectedAttachments, this.attachmentNotSelectedButVisible);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setSelectedAttachments(List<StateRequestAttachment> list) {
            this.selectedAttachments = CollectionUtils.copyOf(list);
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateAttachments$UriComparator.class */
    static class UriComparator implements Comparator<StateRequestAttachment>, Serializable {
        UriComparator() {
        }

        public int compare(StateRequestAttachment stateRequestAttachment, StateRequestAttachment stateRequestAttachment2) {
            return stateRequestAttachment.getLocalUri().compareTo(stateRequestAttachment2.getLocalUri());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateAttachments() {
        this.selectedAttachments = new ArrayList();
        this.allSelectedAttachments = new TreeSet(new UriComparator());
    }

    StateAttachments(List<StateRequestAttachment> list, Set<StateRequestAttachment> set) {
        this.selectedAttachments = list;
        this.allSelectedAttachments = set;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateAttachments fromState(State state) {
        Object state2 = state.getState(StateAttachments.class.getSimpleName());
        return state2 instanceof StateAttachments ? (StateAttachments) state2 : new StateAttachments();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<StateRequestAttachment> getAllSelectedAttachments() {
        return this.allSelectedAttachments;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<StateRequestAttachment> getSelectedAttachments() {
        return this.selectedAttachments;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Builder newBuilder() {
        return new Builder();
    }

    public String toString() {
        return "Attachments{selectedAttachments=" + this.selectedAttachments + ", allSelectedAttachments=" + this.allSelectedAttachments + '}';
    }
}
