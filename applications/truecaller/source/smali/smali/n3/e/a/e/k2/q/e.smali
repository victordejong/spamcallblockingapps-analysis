.class public Ln3/e/a/e/k2/q/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Ln3/e/a/e/k2/p/m;

    invoke-static {v0}, Ln3/e/a/e/k2/p/e;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v0

    check-cast v0, Ln3/e/a/e/k2/p/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Ln3/e/a/e/k2/q/e;->a:Z

    return-void
.end method
