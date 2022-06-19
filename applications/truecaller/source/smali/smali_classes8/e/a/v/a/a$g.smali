.class public final Le/a/v/a/a$g;
.super Ln3/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/a;


# direct methods
.method public constructor <init>(Le/a/v/a/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/a$g;->a:Le/a/v/a/a;

    invoke-direct {p0, p2}, Ln3/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/a$g;->a:Le/a/v/a/a;

    invoke-virtual {v0}, Le/a/v/a/a;->SA()Le/a/v/a/f;

    move-result-object v0

    check-cast v0, Le/a/v/a/q;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v/a/g;->finish()V

    :cond_0
    return-void
.end method
