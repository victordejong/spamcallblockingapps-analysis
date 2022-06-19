.class public Le/a/a/c/w7;
.super Ln3/r/a/k;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Le/a/a/c/f4;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/r/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Le/a/a/c/f3;

    invoke-interface {p1}, Le/a/a/c/f3;->z9()Le/a/a/c/v3;

    move-result-object p1

    .line 3
    check-cast p1, Le/a/a/c/r5;

    .line 4
    iget-object p1, p1, Le/a/a/c/r5;->v:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/f4;

    .line 5
    iput-object p1, p0, Le/a/a/c/w7;->a:Le/a/a/c/f4;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12025a

    .line 2
    invoke-virtual {p1, v0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    const v0, 0x7f120259

    .line 3
    invoke-virtual {p1, v0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    new-instance v0, Le/a/a/c/v2;

    invoke-direct {v0, p0}, Le/a/a/c/v2;-><init>(Le/a/a/c/w7;)V

    const v1, 0x7f120258

    .line 4
    invoke-virtual {p1, v1, v0}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    new-instance v0, Le/a/a/c/v2;

    invoke-direct {v0, p0}, Le/a/a/c/v2;-><init>(Le/a/a/c/w7;)V

    const v1, 0x7f120257

    .line 5
    invoke-virtual {p1, v1, v0}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {p1}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    return-object p1
.end method
