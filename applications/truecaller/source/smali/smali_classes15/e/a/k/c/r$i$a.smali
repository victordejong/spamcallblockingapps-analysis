.class public final Le/a/k/c/r$i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r$i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/c/r$i;

.field public final synthetic c:Le/a/k/c/r$i$b;

.field public final synthetic d:Lq3/a/p1;


# direct methods
.method public constructor <init>(Le/a/k/c/r$i;Le/a/k/c/r$i$b;Lq3/a/p1;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$i$a;->b:Le/a/k/c/r$i;

    iput-object p2, p0, Le/a/k/c/r$i$a;->c:Le/a/k/c/r$i$b;

    iput-object p3, p0, Le/a/k/c/r$i$a;->d:Lq3/a/p1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/c/r$i$a;->b:Le/a/k/c/r$i;

    iget-object v0, v0, Le/a/k/c/r$i;->h:Le/m/a/c/c0;

    iget-object v1, p0, Le/a/k/c/r$i$a;->c:Le/a/k/c/r$i$b;

    invoke-interface {v0, v1}, Le/m/a/c/q0;->removeListener(Le/m/a/c/q0$b;)V

    .line 2
    iget-object v0, p0, Le/a/k/c/r$i$a;->d:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
