.class public abstract Le/a/r/c/c;
.super Ln3/w/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/w/b/a<",
        "TDataType;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/w/b/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/w/b/b;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/r/c/c;->a:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/r/c/c;->a:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/a/r/c/c;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ln3/w/b/b;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-super {p0, p1}, Ln3/w/b/b;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ln3/w/b/a;->onCanceled(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/r/c/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public onReset()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/w/b/b;->onReset()V

    .line 2
    invoke-virtual {p0}, Ln3/w/b/b;->cancelLoad()Z

    .line 3
    iget-object v0, p0, Le/a/r/c/c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/r/c/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public onStartLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/c/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Le/a/r/c/c;->deliverResult(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/w/b/b;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/r/c/c;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Ln3/w/b/b;->forceLoad()V

    :cond_2
    return-void
.end method

.method public onStopLoading()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/w/b/b;->cancelLoad()Z

    return-void
.end method
