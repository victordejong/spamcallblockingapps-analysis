.class Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentInputForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmailFieldFocusListener"
.end annotation


# instance fields
.field private final componentInputForm:Lzendesk/support/request/ComponentInputForm;

.field private final editText:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lzendesk/support/request/ComponentInputForm;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;->componentInputForm:Lzendesk/support/request/ComponentInputForm;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;->editText:Landroid/widget/EditText;

    return-void
.end method

.method static install(Lzendesk/support/request/ComponentInputForm;Landroid/widget/EditText;)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;-><init>(Lzendesk/support/request/ComponentInputForm;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;->componentInputForm:Lzendesk/support/request/ComponentInputForm;

    invoke-static {p1}, Lzendesk/support/request/ComponentInputForm;->access$100(Lzendesk/support/request/ComponentInputForm;)V

    .line 4
    iget-object p1, p0, Lzendesk/support/request/ComponentInputForm$EmailFieldFocusListener;->componentInputForm:Lzendesk/support/request/ComponentInputForm;

    invoke-static {p1}, Lzendesk/support/request/ComponentInputForm;->access$200(Lzendesk/support/request/ComponentInputForm;)V

    :cond_0
    return-void
.end method
