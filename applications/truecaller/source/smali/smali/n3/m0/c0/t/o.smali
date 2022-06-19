.class public abstract Ln3/m0/c0/t/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Ln3/m0/c0/t/w/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/m0/c0/t/w/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/m0/c0/t/w/c;

    invoke-direct {v0}, Ln3/m0/c0/t/w/c;-><init>()V

    .line 3
    iput-object v0, p0, Ln3/m0/c0/t/o;->a:Ln3/m0/c0/t/w/c;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ln3/m0/c0/t/o;->a()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/m0/c0/t/o;->a:Ln3/m0/c0/t/w/c;

    invoke-virtual {v1, v0}, Ln3/m0/c0/t/w/c;->i(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Ln3/m0/c0/t/o;->a:Ln3/m0/c0/t/w/c;

    invoke-virtual {v1, v0}, Ln3/m0/c0/t/w/c;->j(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
