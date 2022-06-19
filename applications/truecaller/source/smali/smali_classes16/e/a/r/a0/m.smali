.class public final Le/a/r/a0/m;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/a0/m$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Le/a/r/a0/m;",
        "Landroidx/fragment/app/Fragment;",
        "Ls1/s;",
        "onStop",
        "()V",
        "Ln3/b/a/g;",
        "a",
        "Ln3/b/a/g;",
        "alertDialog",
        "<init>",
        "b",
        "wizard-tc_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final b:Le/a/r/a0/m$a;


# instance fields
.field public a:Ln3/b/a/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/r/a0/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/r/a0/m$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/r/a0/m;->b:Le/a/r/a0/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Le/a/r/a0/m;->a:Ln3/b/a/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ln3/b/a/p;->dismiss()V

    :cond_0
    return-void
.end method
