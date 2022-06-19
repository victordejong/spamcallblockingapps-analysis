.class public final Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;
.super Le/a/f/a/w/b;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/w/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u000eJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u000eR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;",
        "Ln3/b/a/h;",
        "Le/a/f/a/w/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "Le/a/f/a/w/c;",
        "phoneAccountsInfo",
        "o8",
        "(Ljava/util/List;)V",
        "onPause",
        "()V",
        "V0",
        "t",
        "onDestroy",
        "Ln3/b/a/g;",
        "e",
        "Ln3/b/a/g;",
        "dialog",
        "Le/a/f/a/w/g;",
        "d",
        "Le/a/f/a/w/g;",
        "pa",
        "()Le/a/f/a/w/g;",
        "setPresenter",
        "(Le/a/f/a/w/g;)V",
        "presenter",
        "<init>",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/f/a/w/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Ln3/b/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/f/a/w/b;-><init>()V

    return-void
.end method


# virtual methods
.method public V0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;->e:Ln3/b/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln3/b/a/p;->dismiss()V

    :cond_0
    return-void
.end method

.method public o8(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/f/a/w/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "phoneAccountsInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v1

    .line 2
    iget v1, v1, Le/a/i5/d;->c:I

    .line 3
    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4
    new-instance v1, Le/a/f/a/w/f;

    invoke-direct {v1, v0, p1}, Le/a/f/a/w/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 5
    new-instance p1, Ln3/b/a/g$a;

    invoke-direct {p1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 6
    sget v0, Lcom/truecaller/incallui/R$string;->incallui_phone_accounts_dialog_title:I

    invoke-virtual {p1, v0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 7
    new-instance v0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$a;-><init>(Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;Le/a/f/a/w/f;)V

    .line 8
    iget-object v2, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    .line 9
    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 10
    sget v0, Lcom/truecaller/incallui/R$string;->incallui_phone_accounts_cancel_button:I

    new-instance v1, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$b;

    invoke-direct {v1, p0}, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$b;-><init>(Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;)V

    invoke-virtual {p1, v0, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 11
    iget-object v0, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 12
    new-instance v1, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$c;

    invoke-direct {v1, p0}, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$c;-><init>(Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;)V

    .line 13
    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 14
    invoke-virtual {p1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;->e:Ln3/b/a/g;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;->d:Le/a/f/a/w/g;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/f/a/w/k;

    invoke-virtual {p1, p0}, Le/a/f/a/w/k;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;->d:Le/a/f/a/w/g;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onPause()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;->d:Le/a/f/a/w/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/f/a/w/k;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v5, Le/a/f/a/w/j;

    invoke-direct {v5, v2, v1}, Le/a/f/a/w/j;-><init>(Le/a/f/a/w/k;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    invoke-super {p0}, Ln3/r/a/l;->onPause()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final pa()Le/a/f/a/w/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;->d:Le/a/f/a/w/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
