.class public final Le/a/j3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j3/f;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/j3/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/r2/l;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/r2/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/j3/d;",
            ">;",
            "Le/a/r2/l;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactRequestNetworkHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j3/g;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/j3/g;->b:Le/a/r2/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/a/j3/f$a;)V
    .locals 2

    const-string v0, "webId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/j3/g;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j3/d;

    invoke-interface {v0, p1}, Le/a/j3/d;->b(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    iget-object v0, p0, Le/a/j3/g;->b:Le/a/r2/l;

    invoke-interface {v0}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v0

    new-instance v1, Le/a/j3/g$a;

    invoke-direct {v1, p2}, Le/a/j3/g$a;-><init>(Le/a/j3/f$a;)V

    invoke-virtual {p1, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public b(Ljava/lang/String;Le/a/j3/f$a;)V
    .locals 2

    const-string v0, "webId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/j3/g;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j3/d;

    invoke-interface {v0, p1}, Le/a/j3/d;->a(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    iget-object v0, p0, Le/a/j3/g;->b:Le/a/r2/l;

    invoke-interface {v0}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v0

    new-instance v1, Le/a/j3/g$c;

    invoke-direct {v1, p2}, Le/a/j3/g$c;-><init>(Le/a/j3/f$a;)V

    invoke-virtual {p1, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Le/a/j3/f$b;)V
    .locals 2

    const-string v0, "receiver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/j3/g;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j3/d;

    invoke-interface {v0, p1, p2}, Le/a/j3/d;->c(Ljava/lang/String;Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    iget-object v0, p0, Le/a/j3/g;->b:Le/a/r2/l;

    invoke-interface {v0}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v0

    new-instance v1, Le/a/j3/g$b;

    invoke-direct {v1, p3, p2}, Le/a/j3/g$b;-><init>(Le/a/j3/f$b;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method
