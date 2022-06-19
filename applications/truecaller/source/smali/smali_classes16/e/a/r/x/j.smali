.class public final synthetic Le/a/r/x/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/r/x/q;


# direct methods
.method public synthetic constructor <init>(Le/a/r/x/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/x/j;->a:Le/a/r/x/q;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Le/a/r/x/j;->a:Le/a/r/x/q;

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Le/a/r/x/q;->o:Le/a/r/x/s;

    check-cast p1, Le/a/r/x/u;

    .line 3
    new-instance p2, Le/a/r/x/u$a$c;

    invoke-direct {p2, v1}, Le/a/r/x/u$a$c;-><init>(Z)V

    iput-object p2, p1, Le/a/r/x/u;->d:Le/a/r/x/u$a;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Le/a/r/x/t;->u(Landroid/net/Uri;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Le/a/b0/q/s;->c()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2, v0}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p1, Le/a/r/t/e;->f:Le/a/p5/a0;

    const-string v2, "android.permission.CAMERA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p1}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Le/a/b0/q/s;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2, v1}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v0, v2}, Le/a/p5/s0/g;->w0(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    sget p1, Lcom/truecaller/wizard/R$string;->PermissionDialog_camera_reson:I

    invoke-static {v0, v2, p1}, Le/a/p5/s0/g;->z1(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/16 p2, 0xc9

    .line 10
    invoke-static {p1, v2, p2, v1}, Le/a/p5/s0/g;->d1(Landroidx/fragment/app/Fragment;Ljava/lang/String;IZ)Z

    :cond_5
    :goto_0
    return-void
.end method
