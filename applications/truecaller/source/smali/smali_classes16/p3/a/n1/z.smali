.class public abstract Lp3/a/n1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lp3/a/q;


# direct methods
.method public constructor <init>(Lp3/a/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/z;->a:Lp3/a/q;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/z;->a:Lp3/a/q;

    invoke-virtual {v0}, Lp3/a/q;->d()Lp3/a/q;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lp3/a/n1/z;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lp3/a/n1/z;->a:Lp3/a/q;

    invoke-virtual {v1, v0}, Lp3/a/q;->q(Lp3/a/q;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lp3/a/n1/z;->a:Lp3/a/q;

    invoke-virtual {v2, v0}, Lp3/a/q;->q(Lp3/a/q;)V

    throw v1
.end method
