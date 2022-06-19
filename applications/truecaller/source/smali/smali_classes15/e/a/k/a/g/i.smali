.class public final Le/a/k/a/g/i;
.super Ln3/a/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k/a/g/i;->a:Le/a/k/a/g/f;

    invoke-direct {p0, p2}, Ln3/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/a/g/i;->a:Le/a/k/a/g/f;

    invoke-virtual {v0}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object v0

    check-cast v0, Le/a/k/a/g/y;

    .line 2
    iget-boolean v1, v0, Le/a/k/a/g/y;->f:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/g/x;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/k/a/g/x;->t()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/g/x;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/k/a/g/x;->Q8()V

    :cond_1
    :goto_0
    return-void
.end method
