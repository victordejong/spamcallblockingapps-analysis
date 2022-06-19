.class public Ln3/e/b/j1/t1/c/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/j1/t1/c/i;-><init>(Ljava/util/List;ZLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/h/a/d<",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/b/j1/t1/c/i;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/t1/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/t1/c/i$a;->a:Ln3/e/b/j1/t1/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/h/a/b<",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/t1/c/i$a;->a:Ln3/e/b/j1/t1/c/i;

    iget-object v0, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The result can only set once!"

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/t1/c/i$a;->a:Ln3/e/b/j1/t1/c/i;

    iput-object p1, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ListFuture["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
