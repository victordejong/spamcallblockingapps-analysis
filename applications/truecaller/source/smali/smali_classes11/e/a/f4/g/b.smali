.class public abstract Le/a/f4/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx3/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/f4/g/b;->a:Lx3/b;

    return-void
.end method


# virtual methods
.method public a(Lx3/a0;Ljava/lang/Object;)Lx3/a0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/a0<",
            "TT;>;TT;)",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public final cancel()V
    .locals 2

    const-string v0, "Don\'t call #cancel()"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/f4/g/b;->clone()Lx3/b;

    move-result-object v0

    return-object v0
.end method

.method public final enqueue(Lx3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string p1, "Don\'t call #enqueue()"

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public execute()Lx3/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/f4/g/b;->a:Lx3/b;

    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lx3/a0;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0, v1}, Le/a/f4/g/b;->a(Lx3/a0;Ljava/lang/Object;)Lx3/a0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/g/b;->a:Lx3/b;

    invoke-interface {v0}, Lx3/b;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request()Lu3/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/g/b;->a:Lx3/b;

    invoke-interface {v0}, Lx3/b;->request()Lu3/g0;

    move-result-object v0

    return-object v0
.end method
