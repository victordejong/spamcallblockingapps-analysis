.class public final Le/a/a/c/k8/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/k8/e;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/c/k8/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/k8/f;->b:Le/a/a/c/k8/e;

    iput-object p2, p0, Le/a/a/c/k8/f;->c:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/f;->b:Le/a/a/c/k8/e;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/k8/n;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/a/c/k8/f;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Le/a/a/c/k8/n;->sp(Ljava/util/List;)V

    .line 4
    invoke-interface {v0}, Le/a/a/c/k8/n;->e()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/c/k8/f;->b:Le/a/a/c/k8/e;

    invoke-virtual {v0}, Le/a/a/c/k8/e;->v6()V

    .line 6
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
