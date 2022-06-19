.class public final Le/a/a/c/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/m;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Le/a/a/c/m;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Le/a/a/c/m;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/m$e;->a:Landroid/app/Dialog;

    iput-object p2, p0, Le/a/a/c/m$e;->b:Le/a/a/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/m$e;->b:Le/a/a/c/m;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Le/a/a/c/m$e$a;

    invoke-direct {v0, p0}, Le/a/a/c/m$e$a;-><init>(Le/a/a/c/m$e;)V

    invoke-static {p1, v0}, Le/a/p5/s0/f;->y(Landroid/view/View;Ls1/z/b/a;)V

    :cond_0
    return-void
.end method
