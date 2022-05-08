package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.graphics.drawable.DrawableCompat;
import android.support.p004v7.widget.RecyclerView;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.util.Linkify;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment;
import com.apptentive.android.sdk.module.messagecenter.model.Composer;
import com.apptentive.android.sdk.module.messagecenter.view.MessageCenterRecyclerViewAdapter;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ApptentiveImageGridView;
import com.apptentive.android.sdk.util.image.ImageItem;
import com.apptentive.android.sdk.view.ApptentiveAlertDialog;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder.class */
public class MessageComposerHolder extends RecyclerView.ViewHolder {
    private ImageButton attachButton;
    private ApptentiveImageGridView attachments;
    private ImageButton closeButton;
    private List<ImageItem> images = new ArrayList();
    private int maxAllowedAttachments;
    public EditText message;
    private ImageButton sendButton;
    private TextWatcher textWatcher;
    private TextView title;

    public MessageComposerHolder(View view) {
        super(view);
        this.closeButton = (ImageButton) view.findViewById(C0724R.C0727id.close_button);
        this.title = (TextView) view.findViewById(C0724R.C0727id.title);
        this.attachButton = (ImageButton) view.findViewById(C0724R.C0727id.attach_button);
        this.sendButton = (ImageButton) view.findViewById(C0724R.C0727id.send_button);
        this.message = (EditText) view.findViewById(C0724R.C0727id.message);
        this.attachments = (ApptentiveImageGridView) view.findViewById(C0724R.C0727id.attachments);
        this.maxAllowedAttachments = view.getResources().getInteger(C0724R.integer.apptentive_image_grid_default_attachments_total);
        ColorStateList colorStateList = ContextCompat.getColorStateList(view.getContext(), Util.getResourceIdFromAttribute(view.getContext().getTheme(), C0724R.C0725attr.apptentiveButtonTintColorStateList));
        Drawable wrap = DrawableCompat.wrap(this.closeButton.getDrawable());
        DrawableCompat.setTintList(wrap, colorStateList);
        this.closeButton.setImageDrawable(wrap);
        Drawable wrap2 = DrawableCompat.wrap(this.sendButton.getDrawable());
        DrawableCompat.setTintList(wrap2, colorStateList);
        this.sendButton.setImageDrawable(wrap2);
        Drawable wrap3 = DrawableCompat.wrap(this.attachButton.getDrawable());
        DrawableCompat.setTintList(wrap3, colorStateList);
        this.attachButton.setImageDrawable(wrap3);
    }

    private void addAdditionalAttachItem() {
        ArrayList arrayList = new ArrayList(this.images);
        if (arrayList.size() < this.maxAllowedAttachments) {
            arrayList.add(new ImageItem("", "", "Image/*", 0L));
        }
        this.attachments.setData(arrayList);
    }

    public void addImagesToImageAttachmentBand(List<ImageItem> list) {
        if (list != null && list.size() != 0) {
            this.attachments.setupLayoutListener();
            this.attachments.setVisibility(0);
            this.images.addAll(list);
            setAttachButtonState();
            addAdditionalAttachItem();
            this.attachments.notifyDataSetChanged();
        }
    }

    public void bindView(final MessageCenterFragment messageCenterFragment, final MessageCenterRecyclerViewAdapter messageCenterRecyclerViewAdapter, final Composer composer) {
        this.title.setText(composer.title);
        this.title.setContentDescription(composer.title);
        this.closeButton.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!TextUtils.isEmpty(MessageComposerHolder.this.message.getText().toString().trim()) || !MessageComposerHolder.this.images.isEmpty()) {
                    Bundle bundle = new Bundle();
                    bundle.putString("message", composer.closeBody);
                    bundle.putString("positive", composer.closeDiscard);
                    bundle.putString("negative", composer.closeCancel);
                    ApptentiveAlertDialog.show(messageCenterFragment, bundle, 20);
                } else if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onCancelComposing();
                }
            }
        }));
        this.sendButton.setContentDescription(composer.sendButton);
        this.sendButton.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onFinishComposing();
                }
            }
        }));
        this.message.setHint(composer.messageHint);
        this.message.removeTextChangedListener(this.textWatcher);
        this.textWatcher = new TextWatcher() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().afterComposingTextChanged(editable.toString());
                }
                Linkify.addLinks(editable, 15);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().beforeComposingTextChanged(charSequence);
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onComposingTextChanged(charSequence);
                }
            }
        };
        this.message.addTextChangedListener(this.textWatcher);
        this.attachButton.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onAttachImage();
                }
            }
        }));
        this.attachments.setupUi();
        this.attachments.setupLayoutListener();
        this.attachments.setListener(new ApptentiveImageGridView.ImageItemClickedListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.5
            @Override // com.apptentive.android.sdk.util.image.ApptentiveImageGridView.ImageItemClickedListener
            public void onClick(int i, ImageItem imageItem) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onClickAttachment(i, imageItem);
                }
            }
        });
        this.attachments.setAdapterIndicator(C0724R.C0726drawable.apptentive_remove_button);
        this.attachments.setImageIndicatorCallback(messageCenterFragment);
        clearImageAttachmentBand();
        this.attachments.setVisibility(8);
        this.attachments.setData(new ArrayList());
        setAttachButtonState();
        if (messageCenterRecyclerViewAdapter.getListener() != null) {
            messageCenterRecyclerViewAdapter.getListener().onComposingViewCreated(this, this.message, this.attachments);
        }
    }

    public void clearImageAttachmentBand() {
        this.attachments.setVisibility(8);
        this.images.clear();
        this.attachments.setData(null);
    }

    public void onViewAttachedToWindow() {
        this.message.setEnabled(false);
        this.message.setEnabled(true);
    }

    public void removeImageFromImageAttachmentBand(int i) {
        this.images.remove(i);
        this.attachments.setupLayoutListener();
        setAttachButtonState();
        if (this.images.size() == 0) {
            this.attachments.setVisibility(8);
        } else {
            addAdditionalAttachItem();
        }
    }

    public void setAttachButtonState() {
        setButtonState(this.attachButton, this.images.size() < this.maxAllowedAttachments);
    }

    public void setButtonState(ImageButton imageButton, boolean z) {
        imageButton.setEnabled(z);
        if (z) {
            if (Build.VERSION.SDK_INT < 23) {
                imageButton.setColorFilter(Util.getThemeColor(this.itemView.getContext(), C0724R.C0725attr.apptentiveButtonTintColor));
            }
        } else if (Build.VERSION.SDK_INT < 23) {
            imageButton.setColorFilter(Util.getThemeColor(this.itemView.getContext(), C0724R.C0725attr.apptentiveButtonTintColorDisabled));
        }
    }

    public void setSendButtonState() {
        setButtonState(this.sendButton, !TextUtils.isEmpty(this.message.getText().toString().trim()) || !this.images.isEmpty());
    }
}
