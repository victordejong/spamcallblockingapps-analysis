.class public final synthetic Le/a/w4/s/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/w4/s/c0;


# direct methods
.method public synthetic constructor <init>(Le/a/w4/s/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/g;->a:Le/a/w4/s/c0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Le/a/w4/s/g;->a:Le/a/w4/s/c0;

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12060d

    .line 2
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const v1, 0x7f1206fb

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    new-instance v1, Le/a/w4/s/f;

    invoke-direct {v1, p1}, Le/a/w4/s/f;-><init>(Le/a/w4/s/c0;)V

    const p1, 0x7f120902

    .line 4
    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method
