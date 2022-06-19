.class public final Le/a/d/q/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/os/IBinder;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/q/b;


# direct methods
.method public constructor <init>(Le/a/d/q/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/q/e;->b:Le/a/d/q/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/os/IBinder;

    const-string v0, "binder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, Le/a/d/b/a/s;

    .line 4
    iget-object p1, p1, Le/a/d/b/a/s;->a:Le/a/d/b/a/d;

    .line 5
    iget-object v0, p0, Le/a/d/q/e;->b:Le/a/d/q/b;

    .line 6
    iput-object p1, v0, Le/a/d/q/b;->c:Le/a/d/b/a/d;

    .line 7
    invoke-virtual {v0}, Landroid/telecom/Connection;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Le/a/d/q/e;->b:Le/a/d/q/b;

    invoke-virtual {v0}, Landroid/telecom/Connection;->setInitialized()V

    .line 9
    :cond_0
    iget-object v0, p0, Le/a/d/q/e;->b:Le/a/d/q/b;

    invoke-interface {p1}, Le/a/d/b/a/d;->K1()Lq3/a/w2/h;

    move-result-object v1

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Le/a/d/q/h;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Le/a/d/q/h;-><init>(Le/a/d/q/b;Ls1/w/d;)V

    invoke-static {v0, v1, v2}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 12
    iget-object v0, p0, Le/a/d/q/e;->b:Le/a/d/q/b;

    invoke-interface {p1}, Le/a/d/b/a/d;->P1()Lq3/a/w2/h;

    move-result-object p1

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Le/a/d/q/g;

    invoke-direct {v1, v0, v3}, Le/a/d/q/g;-><init>(Le/a/d/q/b;Ls1/w/d;)V

    invoke-static {v0, p1, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
