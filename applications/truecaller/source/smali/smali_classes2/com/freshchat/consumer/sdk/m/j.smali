.class public Lcom/freshchat/consumer/sdk/m/j;
.super Lcom/freshchat/consumer/sdk/m/a;
.source "SourceFile"


# instance fields
.field private dS:Landroidx/appcompat/widget/AppCompatEditText;

.field private dT:Landroidx/appcompat/widget/AppCompatButton;

.field private pc:Lcom/freshchat/consumer/sdk/k/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/m/j;)Lcom/freshchat/consumer/sdk/k/k;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/m/j;->pc:Lcom/freshchat/consumer/sdk/k/k;

    return-object p0
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/m/j;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/m/j;->dT:Landroidx/appcompat/widget/AppCompatButton;

    return-object p0
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/m/j;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/m/j;->dS:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_email_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/j;->dS:Landroidx/appcompat/widget/AppCompatEditText;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_next_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/j;->dT:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/j;->dS:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v0, Lcom/freshchat/consumer/sdk/m/l;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/m/l;-><init>(Lcom/freshchat/consumer/sdk/m/j;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/j;->dT:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/freshchat/consumer/sdk/m/m;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/m/m;-><init>(Lcom/freshchat/consumer/sdk/m/j;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/j;->pc:Lcom/freshchat/consumer/sdk/k/k;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/k;->bi()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/j;->dS:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cc(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/k/k;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/k/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/j;->pc:Lcom/freshchat/consumer/sdk/k/k;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_fragment_calendar_email_entry:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/m/j;->g(Landroid/view/View;)V

    new-instance p2, Lcom/freshchat/consumer/sdk/m/k;

    invoke-direct {p2, p0, p1}, Lcom/freshchat/consumer/sdk/m/k;-><init>(Lcom/freshchat/consumer/sdk/m/j;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
