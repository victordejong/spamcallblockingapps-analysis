.class public final Lcom/truecaller/tcpermissions/AccessContactsActivity;
.super Le/a/h5/g;
.source "SourceFile"

# interfaces
.implements Le/a/h5/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR%\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR%\u0010\u0013\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\r\u001a\u0004\u0008\u0012\u0010\u000fR\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/tcpermissions/AccessContactsActivity;",
        "Ln3/b/a/h;",
        "Le/a/h5/c;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "()V",
        "Landroid/widget/Button;",
        "kotlin.jvm.PlatformType",
        "e",
        "Ls1/g;",
        "getDenyButton",
        "()Landroid/widget/Button;",
        "denyButton",
        "d",
        "getAllowButton",
        "allowButton",
        "Le/a/h5/b;",
        "f",
        "Le/a/h5/b;",
        "getPresenter",
        "()Le/a/h5/b;",
        "setPresenter",
        "(Le/a/h5/b;)V",
        "presenter",
        "<init>",
        "tc-permissions_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public f:Le/a/h5/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/h5/g;-><init>()V

    .line 2
    sget v0, Lcom/truecaller/tcpermissions/R$id;->allow_button:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity;->d:Ls1/g;

    .line 3
    sget v0, Lcom/truecaller/tcpermissions/R$id;->deny_button:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/tcpermissions/R$layout;->activity_access_contacts:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity;->f:Le/a/h5/b;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/u2/a/b;

    .line 4
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 6
    new-instance v0, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity;->e:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 8
    new-instance v0, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity;->f:Le/a/h5/b;

    if-eqz v0, :cond_1

    check-cast v0, Le/a/h5/e;

    .line 2
    iget-object v1, v0, Le/a/h5/e;->f:Le/a/h5/y;

    iget-object v0, v0, Le/a/h5/e;->d:Le/a/h5/l;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h5/l;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2}, Le/a/h5/l;-><init>(ZZI)V

    :goto_0
    invoke-interface {v1, v0}, Le/a/h5/y;->d(Le/a/h5/l;)V

    goto :goto_1

    :cond_1
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_2
    :goto_1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void
.end method
