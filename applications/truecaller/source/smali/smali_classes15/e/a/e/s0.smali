.class public final Le/a/e/s0;
.super Landroid/app/ProgressDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120719

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->USERARCHIVE:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v0, Le/a/b0/b/n/a;

    invoke-static {p1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/b/n/a;

    invoke-interface {p1}, Le/a/b0/b/n/a;->a()Lx3/b;

    move-result-object p1

    .line 4
    new-instance v0, Le/a/e/h1;

    invoke-direct {v0, p0}, Le/a/e/h1;-><init>(Landroid/app/Dialog;)V

    invoke-interface {p1, v0}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method
