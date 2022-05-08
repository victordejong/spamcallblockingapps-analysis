package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.model.StoredFile;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment;
import com.apptentive.android.sdk.module.messagecenter.view.ApptentiveAvatarView;
import com.apptentive.android.sdk.module.messagecenter.view.MessageCenterRecyclerViewAdapter;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ApptentiveImageGridView;
import com.apptentive.android.sdk.util.image.ImageItem;
import com.apptentive.android.sdk.util.image.ImageUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/IncomingCompoundMessageHolder.class */
public class IncomingCompoundMessageHolder extends MessageHolder {
    public ApptentiveAvatarView avatar;
    private View container;
    private ApptentiveImageGridView imageBandView;
    private TextView messageBodyView;
    private TextView nameView;
    private View root;

    public IncomingCompoundMessageHolder(View view) {
        super(view);
        this.root = view.findViewById(C0726R.C0729id.message_root);
        this.container = view.findViewById(C0726R.C0729id.apptentive_compound_message_body_container);
        this.avatar = (ApptentiveAvatarView) view.findViewById(C0726R.C0729id.avatar);
        this.nameView = (TextView) view.findViewById(C0726R.C0729id.sender_name);
        this.messageBodyView = (TextView) view.findViewById(C0726R.C0729id.apptentive_compound_message_body);
        this.imageBandView = (ApptentiveImageGridView) view.findViewById(C0726R.C0729id.grid);
    }

    public void bindView(MessageCenterFragment messageCenterFragment, RecyclerView recyclerView, final MessageCenterRecyclerViewAdapter messageCenterRecyclerViewAdapter, CompoundMessage compoundMessage) {
        super.bindView(messageCenterFragment, recyclerView, compoundMessage);
        this.imageBandView.setupUi();
        ImageUtil.startDownloadAvatarTask(this.avatar, compoundMessage.getSenderProfilePhoto());
        this.root.measure(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), 0);
        int measuredWidth = this.container.getMeasuredWidth();
        this.messageBodyView.setText(compoundMessage.getBody());
        AccessibilityManager accessibilityManager = (AccessibilityManager) messageCenterFragment.getContext().getSystemService("accessibility");
        if (accessibilityManager != null) {
            this.messageBodyView.setTextIsSelectable(accessibilityManager.getEnabledAccessibilityServiceList(1).isEmpty());
        }
        String senderUsername = compoundMessage.getSenderUsername();
        if (senderUsername == null || senderUsername.isEmpty()) {
            this.nameView.setVisibility(8);
        } else {
            this.nameView.setVisibility(0);
            this.nameView.setText(senderUsername);
        }
        final List<StoredFile> remoteAttachments = compoundMessage.getRemoteAttachments();
        if (this.imageBandView == null) {
            return;
        }
        if (remoteAttachments == null || remoteAttachments.size() == 0) {
            this.imageBandView.setVisibility(8);
            return;
        }
        this.imageBandView.setVisibility(0);
        this.imageBandView.setAdapterItemSize(measuredWidth, this.itemView.getResources().getInteger(C0726R.integer.apptentive_image_grid_default_column_number_incoming));
        ArrayList arrayList = new ArrayList();
        final File diskCacheDir = Util.getDiskCacheDir(this.imageBandView.getContext());
        for (StoredFile storedFile : remoteAttachments) {
            String sourceUriOrPath = storedFile.getSourceUriOrPath();
            String apptentiveUri = storedFile.getApptentiveUri();
            if (!TextUtils.isEmpty(sourceUriOrPath)) {
                arrayList.add(new ImageItem(sourceUriOrPath, Util.generateCacheFileFullPath(sourceUriOrPath, diskCacheDir), storedFile.getMimeType(), storedFile.getCreationTime()));
            } else {
                arrayList.add(new ImageItem(apptentiveUri, Util.generateCacheFileFullPath(apptentiveUri, diskCacheDir), storedFile.getMimeType(), storedFile.getCreationTime()));
            }
        }
        this.imageBandView.setData(arrayList);
        this.imageBandView.setListener(new ApptentiveImageGridView.ImageItemClickedListener(this) { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.IncomingCompoundMessageHolder.1
            @Override // com.apptentive.android.sdk.util.image.ApptentiveImageGridView.ImageItemClickedListener
            public void onClick(int i, ImageItem imageItem) {
                StoredFile storedFile2 = (StoredFile) remoteAttachments.get(i);
                String apptentiveUri2 = storedFile2.getApptentiveUri();
                String generateCacheFileFullPath = Util.generateCacheFileFullPath(apptentiveUri2, diskCacheDir);
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onClickAttachment(i, new ImageItem(apptentiveUri2, generateCacheFileFullPath, storedFile2.getMimeType(), storedFile2.getCreationTime()));
                }
            }
        });
    }
}
