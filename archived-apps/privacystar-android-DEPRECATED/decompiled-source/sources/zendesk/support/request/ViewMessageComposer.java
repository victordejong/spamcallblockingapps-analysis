package zendesk.support.request;

import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.AbstractC0042Px;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.view.animation.FastOutSlowInInterpolator;
import android.support.p001v4.view.animation.LinearOutSlowInInterpolator;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.StringUtils;
import java.util.LinkedList;
import java.util.List;
import zendesk.belvedere.ImageStream;
import zendesk.support.UiUtils;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ViewMessageComposer.class */
public class ViewMessageComposer extends FrameLayout implements View.OnClickListener, View.OnFocusChangeListener, View.OnLayoutChangeListener, TextView.OnEditorActionListener, TextWatcher {
    private static final String LOG_TAG = "ViewMessageComposer";
    private ViewAttachmentsIndicator attachmentsIndicator;
    private AnimatorSet attachmentsOffCollapseAnimatorSet;
    private AnimatorSet attachmentsOffExpandAnimatorSet;
    private AnimatorSet attachmentsOnCollapseAnimatorSet;
    private AnimatorSet attachmentsOnExpandAnimatorSet;
    private ImageStream imageStream;
    private List<InputListener> inputListenerList;
    private EditText inputTextField;
    private boolean isAttachmentsButtonDisabled;
    private boolean isSendButtonDisabled;
    private List<View.OnFocusChangeListener> onFocusChangeListenerList;
    private OnHeightChangeListener onHeightChangeListener;
    private ImageView sendButton;
    private MessageComposerStateHelper stateHelper;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ViewMessageComposer$InputListener.class */
    public interface InputListener {
        void onAddAttachmentsRequested();

        void onSendMessageRequested(@NonNull String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ViewMessageComposer$MessageComposerState.class */
    public static class MessageComposerState {
        static final int BUTTON_DISABLED = 11;
        static final int BUTTON_ENABLED = 12;
        static final int BUTTON_HIDDEN = 10;
        static final int FIELD_COLLAPSED = 2;
        static final int FIELD_EXPANDED = 1;
        private final int attachmentButtonState;
        private final int fieldState;
        private final int sendButtonState;

        MessageComposerState(int i, int i2, int i3) {
            this.fieldState = i;
            this.sendButtonState = i2;
            this.attachmentButtonState = i3;
        }

        int getFieldState() {
            return this.fieldState;
        }

        int getSendButtonState() {
            return this.sendButtonState;
        }

        boolean isAttachmentButtonActivated() {
            return this.attachmentButtonState == 12;
        }

        boolean isAttachmentButtonEnabled() {
            return this.attachmentButtonState != 10;
        }

        public String toString() {
            return "MessageComposerState{fieldState=" + this.fieldState + ", sendButtonState=" + this.sendButtonState + ", attachmentButtonEnabled=" + this.attachmentButtonState + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ViewMessageComposer$MessageComposerStateHelper.class */
    public static class MessageComposerStateHelper {
        MessageComposerStateHelper() {
        }

        private boolean hasAttachments(ViewAttachmentsIndicator viewAttachmentsIndicator) {
            return viewAttachmentsIndicator.getAttachmentsCount() > 0;
        }

        private boolean hasLength(String str) {
            return str != null && str.length() > 0;
        }

        private boolean hasValidText(String str) {
            return StringUtils.hasLength(str);
        }

        @VisibleForTesting
        int getAttachmentButtonState(boolean z, boolean z2) {
            if (z) {
                return 10;
            }
            return z2 ? 12 : 11;
        }

        @VisibleForTesting
        int getFieldState(boolean z, boolean z2, boolean z3, boolean z4) {
            return (z || z2 || z4 || z3) ? 1 : 2;
        }

        @VisibleForTesting
        int getSendButtonState(boolean z, boolean z2, boolean z3, int i) {
            if (z2) {
                return 12;
            }
            if (z3 && !z) {
                return 12;
            }
            if (i == 1) {
                return 11;
            }
            return i == 2 ? 10 : 10;
        }

        MessageComposerState getState(EditText editText, EditText editText2, ViewAttachmentsIndicator viewAttachmentsIndicator, boolean z, boolean z2, boolean z3) {
            String obj = editText.getText().toString();
            boolean hasLength = hasLength(obj);
            boolean hasValidText = hasValidText(obj);
            boolean hasFocus = editText.hasFocus();
            boolean hasFocus2 = editText2.hasFocus();
            boolean hasAttachments = hasAttachments(viewAttachmentsIndicator);
            int fieldState = getFieldState(hasFocus, hasLength, hasFocus2, hasAttachments);
            return new MessageComposerState(fieldState, getSendButtonState(z2, hasValidText, hasAttachments, fieldState), getAttachmentButtonState(z3, z));
        }

        MessageComposerState onAttachmentClicked(boolean z, boolean z2, EditText editText, EditText editText2, ViewAttachmentsIndicator viewAttachmentsIndicator) {
            MessageComposerState state = getState(editText, editText2, viewAttachmentsIndicator, true, z, z2);
            return new MessageComposerState(1, state.getSendButtonState() == 10 ? 11 : state.getSendButtonState(), getAttachmentButtonState(z2, true));
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ViewMessageComposer$OnHeightChangeListener.class */
    interface OnHeightChangeListener {
        void onHeightChange(@AbstractC0042Px int i);
    }

    public ViewMessageComposer(Context context) {
        super(context);
        this.onFocusChangeListenerList = new LinkedList();
        this.inputListenerList = new LinkedList();
        this.isSendButtonDisabled = true;
        this.isAttachmentsButtonDisabled = true;
        viewInit(context);
    }

    public ViewMessageComposer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.onFocusChangeListenerList = new LinkedList();
        this.inputListenerList = new LinkedList();
        this.isSendButtonDisabled = true;
        this.isAttachmentsButtonDisabled = true;
        viewInit(context);
    }

    public ViewMessageComposer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.onFocusChangeListenerList = new LinkedList();
        this.inputListenerList = new LinkedList();
        this.isSendButtonDisabled = true;
        this.isAttachmentsButtonDisabled = true;
        viewInit(context);
    }

    @RequiresApi(api = 21)
    public ViewMessageComposer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.onFocusChangeListenerList = new LinkedList();
        this.inputListenerList = new LinkedList();
        this.isSendButtonDisabled = true;
        this.isAttachmentsButtonDisabled = true;
        viewInit(context);
    }

    @VisibleForTesting
    ViewMessageComposer(Context context, ViewAttachmentsIndicator viewAttachmentsIndicator, EditText editText, ImageView imageView, AnimatorSet animatorSet, AnimatorSet animatorSet2, AnimatorSet animatorSet3, AnimatorSet animatorSet4) {
        super(context);
        this.onFocusChangeListenerList = new LinkedList();
        this.inputListenerList = new LinkedList();
        this.isSendButtonDisabled = true;
        this.isAttachmentsButtonDisabled = true;
        this.attachmentsIndicator = viewAttachmentsIndicator;
        this.inputTextField = editText;
        this.sendButton = imageView;
        this.attachmentsOnExpandAnimatorSet = animatorSet;
        this.attachmentsOffExpandAnimatorSet = animatorSet3;
        this.attachmentsOnCollapseAnimatorSet = animatorSet2;
        this.attachmentsOffCollapseAnimatorSet = animatorSet4;
        this.stateHelper = new MessageComposerStateHelper();
    }

    private void applyState(MessageComposerState messageComposerState) {
        if (messageComposerState.getFieldState() != 1 || isExpanded()) {
            if (messageComposerState.getFieldState() == 2 && isExpanded()) {
                if (this.isAttachmentsButtonDisabled) {
                    this.attachmentsOffCollapseAnimatorSet.start();
                } else {
                    this.attachmentsOnCollapseAnimatorSet.start();
                }
            }
        } else if (this.isAttachmentsButtonDisabled) {
            this.attachmentsOffExpandAnimatorSet.start();
        } else {
            this.attachmentsOnExpandAnimatorSet.start();
        }
        int i = 0;
        if (messageComposerState.getSendButtonState() == 10) {
            updateSendBtn(false, false);
        } else if (messageComposerState.getSendButtonState() == 11) {
            updateSendBtn(true, false);
        } else if (messageComposerState.getSendButtonState() == 12) {
            updateSendBtn(true, true);
        }
        if (!messageComposerState.isAttachmentButtonEnabled()) {
            i = 8;
        }
        if (this.attachmentsIndicator.getVisibility() != i) {
            updateAttachmentButtonPosition();
            this.attachmentsIndicator.setVisibility(i);
        }
        if (messageComposerState.isAttachmentButtonEnabled() && this.attachmentsIndicator.getAttachmentsCount() == 0) {
            this.attachmentsIndicator.enableActiveState(messageComposerState.isAttachmentButtonActivated());
            this.attachmentsIndicator.setBottomBorderVisible(messageComposerState.isAttachmentButtonActivated());
        }
    }

    private void bindViews() {
        this.inputTextField = (EditText) findViewById(C1790R.C1793id.message_composer_input_text);
        this.attachmentsIndicator = (ViewAttachmentsIndicator) findViewById(C1790R.C1793id.message_composer_attachments_indicator);
        this.sendButton = (ImageView) findViewById(C1790R.C1793id.message_composer_send_btn);
    }

    private void initAnimationsAndAdjustLeftMargin() {
        Resources resources = getResources();
        int integer = resources.getInteger(C1790R.integer.zs_request_message_composer_animation_duration);
        int dimensionPixelSize = resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_collapsed_height);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_expanded_min_height);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_expanded_side_margin);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_collapsed_side_margin);
        int dimensionPixelSize5 = resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_expanded_top_padding);
        int dimensionPixelSize6 = resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_collapsed_top_padding);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C1790R.dimen.zs_request_message_composer_expanded_bottom_padding);
        this.attachmentsOnExpandAnimatorSet = new AnimatorSet();
        this.attachmentsOffExpandAnimatorSet = new AnimatorSet();
        this.attachmentsOnCollapseAnimatorSet = new AnimatorSet();
        this.attachmentsOffCollapseAnimatorSet = new AnimatorSet();
        LinearOutSlowInInterpolator linearOutSlowInInterpolator = new LinearOutSlowInInterpolator();
        FastOutSlowInInterpolator fastOutSlowInInterpolator = new FastOutSlowInInterpolator();
        this.attachmentsOnExpandAnimatorSet.setInterpolator(linearOutSlowInInterpolator);
        this.attachmentsOffExpandAnimatorSet.setInterpolator(linearOutSlowInInterpolator);
        this.attachmentsOnCollapseAnimatorSet.setInterpolator(fastOutSlowInInterpolator);
        this.attachmentsOffCollapseAnimatorSet.setInterpolator(fastOutSlowInInterpolator);
        this.attachmentsOnExpandAnimatorSet.play(UtilsAnimation.minHeightAnimator(this.inputTextField, dimensionPixelSize, dimensionPixelSize2, integer)).with(UtilsAnimation.sideMarginsAnimator(this.inputTextField, dimensionPixelSize4, dimensionPixelSize3, integer)).with(UtilsAnimation.topPaddingAnimator(this.inputTextField, dimensionPixelSize6, dimensionPixelSize5, integer)).with(UtilsAnimation.bottomPaddingAnimator(this.inputTextField, 0, dimensionPixelOffset, integer));
        this.attachmentsOnCollapseAnimatorSet.play(UtilsAnimation.sideMarginsAnimator(this.inputTextField, dimensionPixelSize3, dimensionPixelSize4, integer)).with(UtilsAnimation.topPaddingAnimator(this.inputTextField, dimensionPixelSize5, dimensionPixelSize6, integer)).with(UtilsAnimation.minHeightAnimator(this.inputTextField, dimensionPixelSize2, dimensionPixelSize, integer)).with(UtilsAnimation.bottomPaddingAnimator(this.inputTextField, dimensionPixelOffset, 0, integer));
        this.attachmentsOffExpandAnimatorSet.play(UtilsAnimation.minHeightAnimator(this.inputTextField, dimensionPixelSize, dimensionPixelSize2, integer)).with(UtilsAnimation.sideMarginsAnimator(this.inputTextField, dimensionPixelSize3, dimensionPixelSize3, integer)).with(UtilsAnimation.topPaddingAnimator(this.inputTextField, dimensionPixelSize6, dimensionPixelSize5, integer)).with(UtilsAnimation.bottomPaddingAnimator(this.inputTextField, 0, dimensionPixelOffset, integer));
        this.attachmentsOffCollapseAnimatorSet.play(UtilsAnimation.sideMarginsAnimator(this.inputTextField, dimensionPixelSize3, dimensionPixelSize3, integer)).with(UtilsAnimation.topPaddingAnimator(this.inputTextField, dimensionPixelSize5, dimensionPixelSize6, integer)).with(UtilsAnimation.minHeightAnimator(this.inputTextField, dimensionPixelSize2, dimensionPixelSize, integer)).with(UtilsAnimation.bottomPaddingAnimator(this.inputTextField, dimensionPixelOffset, 0, integer));
        updateAttachmentButtonPosition();
    }

    private void initListener() {
        this.attachmentsIndicator.setOnClickListener(this);
        this.sendButton.setOnClickListener(this);
        this.inputTextField.addTextChangedListener(this);
        this.inputTextField.setOnEditorActionListener(this);
        this.inputTextField.setOnFocusChangeListener(this);
        addOnLayoutChangeListener(this);
    }

    private boolean isExpanded() {
        return this.inputTextField.getHeight() > this.inputTextField.getResources().getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_collapsed_height);
    }

    private void notifyAddAttachmentsRequested() {
        for (InputListener inputListener : this.inputListenerList) {
            inputListener.onAddAttachmentsRequested();
        }
    }

    private void notifyOnFocusChangeListeners(View view, boolean z) {
        for (View.OnFocusChangeListener onFocusChangeListener : this.onFocusChangeListenerList) {
            onFocusChangeListener.onFocusChange(view, z);
        }
    }

    private void notifySendMessageRequested(String str) {
        for (InputListener inputListener : this.inputListenerList) {
            inputListener.onSendMessageRequested(str);
        }
    }

    private void updateAttachmentButtonPosition() {
        Resources resources = getResources();
        r6 = resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_expanded_side_margin);
        int dimensionPixelSize = resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_collapsed_side_margin);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.inputTextField.getLayoutParams();
        if (this.isAttachmentsButtonDisabled) {
        }
        layoutParams.leftMargin = dimensionPixelSize;
        this.inputTextField.setLayoutParams(layoutParams);
    }

    private void updateSendBtn(boolean z, boolean z2) {
        Context context = getContext();
        int themeAttributeToColor = z2 ? UiUtils.themeAttributeToColor(C1790R.C1791attr.colorPrimary, context, C1790R.color.zs_request_fallback_color_primary) : UiUtils.resolveColor(C1790R.color.zs_request_message_composer_send_btn_color_inactive, context);
        int i = 0;
        this.sendButton.setEnabled(z && z2);
        ImageView imageView = this.sendButton;
        if (!z) {
            i = 4;
        }
        imageView.setVisibility(i);
        UiUtils.setTint(themeAttributeToColor, this.sendButton.getDrawable(), this.sendButton);
    }

    private void viewInit(Context context) {
        inflate(context, C1790R.C1794layout.zs_view_request_message_composer, this);
        if (!isInEditMode()) {
            bindViews();
            initListener();
            initAnimationsAndAdjustLeftMargin();
            this.stateHelper = new MessageComposerStateHelper();
        }
    }

    public void addListener(InputListener inputListener) {
        this.inputListenerList.add(inputListener);
    }

    public void addOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.onFocusChangeListenerList.add(onFocusChangeListener);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        triggerStateUpdate();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            this.inputTextField.clearFocus();
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableAttachmentsButton(boolean z) {
        this.isAttachmentsButtonDisabled = !z;
        triggerStateUpdate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableSendButton(boolean z) {
        this.isSendButtonDisabled = !z;
        triggerStateUpdate();
    }

    public String getMessage() {
        return this.inputTextField.getText().toString();
    }

    public void hide(boolean z) {
        if (z) {
            setVisibility(8);
            this.onHeightChangeListener.onHeightChange(0);
            return;
        }
        setVisibility(0);
        requestLayout();
    }

    public void init(ImageStream imageStream) {
        this.imageStream = imageStream;
        triggerStateUpdate();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == this.attachmentsIndicator.getId()) {
            applyState(this.stateHelper.onAttachmentClicked(this.isSendButtonDisabled, this.isAttachmentsButtonDisabled, this.inputTextField, this.imageStream.getKeyboardHelper().getInputTrap(), this.attachmentsIndicator));
            notifyAddAttachmentsRequested();
        } else if (view.getId() == this.sendButton.getId()) {
            String trim = this.inputTextField.getText().toString().trim();
            this.inputTextField.setText("");
            this.attachmentsIndicator.reset();
            triggerStateUpdate();
            notifySendMessageRequested(trim);
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView.getId() != this.inputTextField.getId() || i != 6) {
            return false;
        }
        this.inputTextField.clearFocus();
        UiUtils.dismissKeyboard(this.inputTextField);
        triggerStateUpdate();
        return false;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (view.getId() == this.inputTextField.getId()) {
            notifyOnFocusChangeListeners(view, z);
            triggerStateUpdate();
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i4 - i2;
        if (i9 != i8 - i6 && this.onHeightChangeListener != null) {
            this.onHeightChangeListener.onHeightChange(i9);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void removeAllListener() {
        this.inputListenerList.clear();
    }

    public void requestFocusForInput() {
        this.inputTextField.requestFocus();
    }

    public void setAttachmentsCount(int i) {
        this.attachmentsIndicator.setAttachmentsCount(i);
        triggerStateUpdate();
    }

    public void setOnHeightChangeListener(OnHeightChangeListener onHeightChangeListener) {
        this.onHeightChangeListener = onHeightChangeListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void triggerStateUpdate() {
        if (this.imageStream != null) {
            applyState(this.stateHelper.getState(this.inputTextField, this.imageStream.getKeyboardHelper().getInputTrap(), this.attachmentsIndicator, this.imageStream.isAttachmentsPopupVisible(), this.isSendButtonDisabled, this.isAttachmentsButtonDisabled));
        }
    }
}
