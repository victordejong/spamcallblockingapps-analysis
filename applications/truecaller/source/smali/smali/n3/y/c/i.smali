.class public Ln3/y/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/i;->a:Ln3/y/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/c/i;->a:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    .line 2
    invoke-virtual {v0}, Ln3/y/c/j0;->c()I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 4
    iget-object v0, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 5
    invoke-virtual {v0}, Ln3/y/b/a/k0;->n()V

    .line 6
    iget-object v0, v0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-virtual {v0}, Ln3/y/b/a/t;->b()J

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
