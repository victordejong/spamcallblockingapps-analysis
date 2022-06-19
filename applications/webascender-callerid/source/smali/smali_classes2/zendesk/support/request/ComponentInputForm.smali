.class Lzendesk/support/request/ComponentInputForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/k;
.implements Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;
.implements Lzendesk/belvedere/o$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentInputForm$InputFormSelector;,
        Lzendesk/support/request/ComponentInputForm$InputFormModel;,
        Lzendesk/support/request/ComponentInputForm$Validator;,
        Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;,
        Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt/a/k<",
        "Lzendesk/support/request/ComponentInputForm$InputFormModel;",
        ">;",
        "Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;",
        "Lzendesk/belvedere/o$c;"
    }
.end annotation


# instance fields
.field private final actionFactory:Lzendesk/support/request/ActionFactory;

.field private final attachmentHelper:Lzendesk/support/request/AttachmentHelper;

.field private final dispatcher:Lt/a/f;

.field private final emailField:Landroid/widget/EditText;

.field private final emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final emailValidator:Lzendesk/support/request/ComponentInputForm$Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/support/request/ComponentInputForm$Validator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inlineValidation:Z

.field private final logo:Landroid/view/View;

.field private final messageField:Landroid/widget/EditText;

.field private final messageLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final nameField:Landroid/widget/EditText;

.field private final nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private sendButton:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lzendesk/support/request/ComponentInputForm$Validator;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lt/a/f;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/EditText;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Landroid/widget/EditText;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lzendesk/support/request/ComponentInputForm$Validator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/EditText;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lt/a/f;",
            "Lzendesk/support/request/ActionFactory;",
            "Lzendesk/support/request/AttachmentHelper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lzendesk/support/request/ComponentInputForm;->inlineValidation:Z

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ComponentInputForm;->logo:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lzendesk/support/request/ComponentInputForm;->nameField:Landroid/widget/EditText;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/ComponentInputForm;->emailField:Landroid/widget/EditText;

    .line 6
    iput-object p7, p0, Lzendesk/support/request/ComponentInputForm;->messageField:Landroid/widget/EditText;

    .line 7
    iput-object p3, p0, Lzendesk/support/request/ComponentInputForm;->nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 8
    iput-object p5, p0, Lzendesk/support/request/ComponentInputForm;->emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    iput-object p8, p0, Lzendesk/support/request/ComponentInputForm;->messageLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    iput-object p6, p0, Lzendesk/support/request/ComponentInputForm;->emailValidator:Lzendesk/support/request/ComponentInputForm$Validator;

    .line 11
    iput-object p9, p0, Lzendesk/support/request/ComponentInputForm;->dispatcher:Lt/a/f;

    .line 12
    iput-object p10, p0, Lzendesk/support/request/ComponentInputForm;->actionFactory:Lzendesk/support/request/ActionFactory;

    .line 13
    iput-object p11, p0, Lzendesk/support/request/ComponentInputForm;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/widget/EditText;

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p4, p1, p2

    const/4 p2, 0x2

    aput-object p7, p1, p2

    .line 14
    invoke-static {p0, p1}, Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;->install(Lzendesk/support/request/ComponentInputForm;[Landroid/widget/EditText;)V

    .line 15
    invoke-static {p0, p4}, Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;->install(Lzendesk/support/request/ComponentInputForm;Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ComponentInputForm;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentInputForm;->logo:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/ComponentInputForm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->updateEmailValidation()V

    return-void
.end method

.method static synthetic access$200(Lzendesk/support/request/ComponentInputForm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->updateSendButton()V

    return-void
.end method

.method static synthetic access$300(Lzendesk/support/request/ComponentInputForm;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzendesk/support/request/ComponentInputForm;->inlineValidation:Z

    return p0
.end method

.method static create(Landroid/view/View;Lt/a/f;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentHelper;)Lzendesk/support/request/ComponentInputForm;
    .locals 12

    .line 1
    new-instance v6, Lzendesk/support/request/ComponentInputForm$1;

    invoke-direct {v6}, Lzendesk/support/request/ComponentInputForm$1;-><init>()V

    .line 2
    sget v0, Lg/k/c/f;->I0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    sget v0, Lg/k/c/f;->H0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 4
    sget v0, Lg/k/c/f;->m0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    sget v0, Lg/k/c/f;->l0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 6
    sget v0, Lg/k/c/f;->G0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    sget v0, Lg/k/c/f;->F0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 8
    sget v0, Lg/k/c/f;->V0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 9
    new-instance p0, Lzendesk/support/request/ComponentInputForm;

    move-object v0, p0

    move-object v9, p1

    move-object v10, p2

    move-object v11, p3

    invoke-direct/range {v0 .. v11}, Lzendesk/support/request/ComponentInputForm;-><init>(Landroid/view/View;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lzendesk/support/request/ComponentInputForm$Validator;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lt/a/f;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentHelper;)V

    return-object p0
.end method

.method private doFieldsContainText()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->nameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm;->emailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lzendesk/support/request/ComponentInputForm;->messageField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->isNameFieldVisible()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->isEmailFieldVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 6
    :goto_3
    invoke-static {v2}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4
.end method

.method private isEmailFieldVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEmailInputValid()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->isEmailFieldVisible()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm;->emailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->emailValidator:Lzendesk/support/request/ComponentInputForm$Validator;

    invoke-interface {v0, v1}, Lzendesk/support/request/ComponentInputForm$Validator;->isValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNameFieldVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSendButtonEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->sendButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm;->messageLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lg/k/c/g;->b:I

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v0, v1, 0x64

    .line 4
    :goto_0
    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm;->sendButton:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->sendButton:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private updateEmailValidation()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->isEmailInputValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lzendesk/support/request/ComponentInputForm;->inlineValidation:Z

    .line 4
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm;->emailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lg/k/c/j;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateSendButton()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentInputForm;->inlineValidation:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->doFieldsContainText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->isEmailInputValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->doFieldsContainText()Z

    move-result v0

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lzendesk/support/request/ComponentInputForm;->setSendButtonEnabled(Z)V

    return-void
.end method


# virtual methods
.method getSelector()Lt/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt/a/p<",
            "Lzendesk/support/request/ComponentInputForm$InputFormModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentInputForm$InputFormSelector;

    invoke-direct {v0}, Lzendesk/support/request/ComponentInputForm$InputFormSelector;-><init>()V

    return-object v0
.end method

.method hasUnsavedInput()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->nameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm;->emailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lzendesk/support/request/ComponentInputForm;->messageField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lzendesk/support/request/ComponentInputForm;->nameField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    .line 5
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->emailField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 6
    :cond_1
    invoke-static {v2}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    invoke-virtual {v0}, Lzendesk/support/request/AttachmentHelper;->getSelectedAttachments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_0
    return v4
.end method

.method public onKeyboardDismissed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->logo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->logo:Landroid/view/View;

    new-instance v1, Lzendesk/support/request/ComponentInputForm$3;

    invoke-direct {v1, p0}, Lzendesk/support/request/ComponentInputForm$3;-><init>(Lzendesk/support/request/ComponentInputForm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onKeyboardVisible()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->logo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->logo:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onMenuItemsClicked(Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lg/k/c/f;->g0:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lzendesk/support/request/ComponentInputForm;->onSendMessageRequested()V

    :cond_0
    return-void
.end method

.method public onMenuItemsInflated(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ComponentInputForm;->sendButton:Landroid/view/MenuItem;

    .line 2
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->updateSendButton()V

    return-void
.end method

.method onSendMessageRequested()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->doFieldsContainText()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->isEmailInputValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->isNameFieldVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->isEmailFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->nameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm;->emailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lzendesk/support/request/ComponentInputForm;->dispatcher:Lt/a/f;

    iget-object v3, p0, Lzendesk/support/request/ComponentInputForm;->actionFactory:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v3, v0, v1}, Lzendesk/support/request/ActionFactory;->updateNameEmailAsync(Ljava/lang/String;Ljava/lang/String;)Lt/a/a;

    move-result-object v0

    invoke-interface {v2, v0}, Lt/a/f;->c(Lt/a/a;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->messageField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    .line 8
    invoke-virtual {v1}, Lzendesk/support/request/AttachmentHelper;->getSelectedAttachments()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lg/k/d/a;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lzendesk/support/request/ComponentInputForm;->dispatcher:Lt/a/f;

    iget-object v3, p0, Lzendesk/support/request/ComponentInputForm;->actionFactory:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v3}, Lzendesk/support/request/ActionFactory;->clearMessages()Lt/a/a;

    move-result-object v3

    invoke-interface {v2, v3}, Lt/a/f;->c(Lt/a/a;)V

    .line 11
    iget-object v2, p0, Lzendesk/support/request/ComponentInputForm;->dispatcher:Lt/a/f;

    iget-object v3, p0, Lzendesk/support/request/ComponentInputForm;->actionFactory:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v3, v0, v1}, Lzendesk/support/request/ActionFactory;->createCommentAsync(Ljava/lang/String;Ljava/util/List;)Lt/a/a;

    move-result-object v0

    invoke-interface {v2, v0}, Lt/a/f;->c(Lt/a/a;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->updateEmailValidation()V

    .line 13
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->updateSendButton()V

    :goto_0
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ComponentInputForm$InputFormModel;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentInputForm;->update(Lzendesk/support/request/ComponentInputForm$InputFormModel;)V

    return-void
.end method

.method public update(Lzendesk/support/request/ComponentInputForm$InputFormModel;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->logo:Landroid/view/View;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->getLogoVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->getNameFieldVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->getEmailFieldVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->messageLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->getMessageFieldVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->nameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isLoading()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->emailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isLoading()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm;->messageLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isLoading()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 9
    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentInputForm;->setSendButtonEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isLogoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance v0, Lzendesk/support/request/ComponentInputForm$2;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/ComponentInputForm$2;-><init>(Lzendesk/support/request/ComponentInputForm;Lzendesk/support/request/ComponentInputForm$InputFormModel;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lzendesk/support/request/ComponentInputForm;->logo:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm;->updateSendButton()V

    :goto_0
    return-void
.end method
