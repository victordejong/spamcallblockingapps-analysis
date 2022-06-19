.class public final synthetic Le/a/r/y/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/r/y/g;


# direct methods
.method public synthetic constructor <init>(Le/a/r/y/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/y/a;->a:Le/a/r/y/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/r/y/a;->a:Le/a/r/y/g;

    .line 1
    iget-object v1, v0, Le/a/r/y/g;->b:Le/a/r/y/h;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Le/a/r/y/g;->b:Le/a/r/y/h;

    iget-object v0, v0, Le/a/r/y/h;->k:Le/a/r/y/j;

    invoke-interface {v0}, Le/a/r/y/j;->Cj()V

    :cond_0
    return-void
.end method
