.class final Lcom/hiya/stingray/ui/v/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/v/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/v/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/v/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "clipData"

    .line 3
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/v/a;->h1(Lcom/hiya/stingray/ui/v/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    iget-object v2, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/v/a;->g1(Lcom/hiya/stingray/ui/v/a;)Lcom/hiya/stingray/ui/local/dialer/f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/dialer/f;->i(Z)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/v/a;->h1(Lcom/hiya/stingray/ui/v/a;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/v/a;->h1(Lcom/hiya/stingray/ui/v/a;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/v/a;->h1(Lcom/hiya/stingray/ui/v/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/v/a;->g1(Lcom/hiya/stingray/ui/v/a;)Lcom/hiya/stingray/ui/local/dialer/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/dialer/f;->q()V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/a$d;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-static {p1, v1}, Lcom/hiya/stingray/ui/v/a;->i1(Lcom/hiya/stingray/ui/v/a;Z)V

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
