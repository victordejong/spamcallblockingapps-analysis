.class public final Le/a/h/b/b;
.super Ln3/r/a/k;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\tJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001f\u0010\u000f\u001a\u0004\u0018\u00010\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Le/a/h/b/b;",
        "Ln3/r/a/k;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Ls1/s;",
        "onDestroyView",
        "()V",
        "",
        "b",
        "Ls1/g;",
        "OA",
        "()Ljava/lang/String;",
        "number",
        "Le/a/h3/b/a;",
        "a",
        "getClipboardDataManager",
        "()Le/a/h3/b/a;",
        "clipboardDataManager",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/r/a/k;-><init>()V

    .line 2
    new-instance v0, Le/a/h/b/b$b;

    invoke-direct {v0, p0}, Le/a/h/b/b$b;-><init>(Le/a/h/b/b;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/b;->a:Ls1/g;

    .line 3
    new-instance v0, Le/a/h/b/b$c;

    invoke-direct {v0, p0}, Le/a/h/b/b$c;-><init>(Le/a/h/b/b;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/b;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public final OA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/h/b/b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 1
    new-instance p1, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-direct {p1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Le/a/h/b/b;->OA()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1202d5

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 4
    new-instance v0, Le/a/h/b/b$a;

    invoke-direct {v0, v4, p0}, Le/a/h/b/b$a;-><init>(ILjava/lang/Object;)V

    const v2, 0x7f1202d6

    invoke-virtual {p1, v2, v0}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    new-instance v0, Le/a/h/b/b$a;

    invoke-direct {v0, v1, p0}, Le/a/h/b/b$a;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f1202d7

    invoke-virtual {p1, v1, v0}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    sget-object v0, Le/a/h/b/b$d;->a:Le/a/h/b/b$d;

    .line 7
    iget-object v1, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 8
    invoke-virtual {p1}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(requ\u2026{ }\n            .create()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/k;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Le/a/h/b/b;->OA()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/h/b/b;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h3/b/a;

    .line 4
    invoke-interface {v0}, Le/a/h3/b/a;->n()V

    :cond_0
    return-void
.end method
