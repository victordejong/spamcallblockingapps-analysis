.class public final Le/a/k/a/d/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/d/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Le/a/k/a/d/a;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Le/a/k/a/d/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/d/a$c;->a:Landroid/app/Dialog;

    iput-object p2, p0, Le/a/k/a/d/a$c;->b:Le/a/k/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "keyEvent"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p1, p0, Le/a/k/a/d/a$c;->b:Le/a/k/a/d/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    .line 3
    instance-of p3, p1, Le/a/k/a/d/l;

    if-eqz p3, :cond_0

    .line 4
    check-cast p1, Le/a/k/a/d/l;

    invoke-interface {p1}, Le/a/k/a/d/l;->q3()V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/k/a/d/a$c;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
