.class public final Lj2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/d/c0/s;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj2;->b:I

    iput-object p2, p0, Lj2;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lj2;->b:I

    const-string v2, "state"

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 1
    check-cast p1, Le/a/d/c0/s;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/a/d/c0/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lj2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/b;

    .line 5
    invoke-virtual {p1}, Le/a/d/b/a/b;->ak()V

    goto :goto_1

    .line 6
    :cond_0
    instance-of v1, p1, Le/a/d/c0/s$c;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Le/a/d/c0/s$b;

    if-eqz v1, :cond_2

    :goto_0
    iget-object p1, p0, Lj2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/b;

    .line 7
    invoke-virtual {p1, v3}, Le/a/d/b/a/b;->fk(Z)V

    goto :goto_1

    .line 8
    :cond_2
    instance-of p1, p1, Le/a/d/c0/s$a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lj2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/b;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Le/a/d/b/a/b;->fk(Z)V

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    const/4 p1, 0x0

    .line 10
    throw p1

    .line 11
    :cond_5
    check-cast p1, Le/a/d/c0/s;

    .line 12
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lj2;->c:Ljava/lang/Object;

    check-cast v1, Ls1/z/b/l;

    invoke-interface {v1, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
