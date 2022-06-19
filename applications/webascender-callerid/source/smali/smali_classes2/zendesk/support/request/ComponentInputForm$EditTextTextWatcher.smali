.class Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentInputForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditTextTextWatcher"
.end annotation


# instance fields
.field private final componentInputForm:Lzendesk/support/request/ComponentInputForm;


# direct methods
.method private constructor <init>(Lzendesk/support/request/ComponentInputForm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;->componentInputForm:Lzendesk/support/request/ComponentInputForm;

    return-void
.end method

.method static varargs install(Lzendesk/support/request/ComponentInputForm;[Landroid/widget/EditText;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    new-instance v3, Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;

    invoke-direct {v3, p0}, Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;-><init>(Lzendesk/support/request/ComponentInputForm;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;->componentInputForm:Lzendesk/support/request/ComponentInputForm;

    invoke-static {p1}, Lzendesk/support/request/ComponentInputForm;->access$300(Lzendesk/support/request/ComponentInputForm;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;->componentInputForm:Lzendesk/support/request/ComponentInputForm;

    invoke-static {p1}, Lzendesk/support/request/ComponentInputForm;->access$100(Lzendesk/support/request/ComponentInputForm;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/support/request/ComponentInputForm$EditTextTextWatcher;->componentInputForm:Lzendesk/support/request/ComponentInputForm;

    invoke-static {p1}, Lzendesk/support/request/ComponentInputForm;->access$200(Lzendesk/support/request/ComponentInputForm;)V

    return-void
.end method
