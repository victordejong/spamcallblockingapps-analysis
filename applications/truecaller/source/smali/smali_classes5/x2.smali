.class public final Lx2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/c/y/i;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lx2;->b:I

    iput-object p2, p0, Lx2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lx2;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lx2;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Le/a/c/y/i;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lx2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/p/d/q/j;

    iget-object v2, p0, Lx2;->d:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/p/c/d$e;

    invoke-virtual {v1, p1, v2}, Le/a/c/a/p/d/q/j;->U4(Le/a/c/y/i;Le/a/c/a/p/c/d$e;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    check-cast p1, Le/a/c/y/i;

    .line 6
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lx2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/p/d/q/j;

    iget-object v2, p0, Lx2;->d:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/p/c/d$e;

    invoke-virtual {v1, p1, v2}, Le/a/c/a/p/d/q/j;->U4(Le/a/c/y/i;Le/a/c/a/p/c/d$e;)V

    return-object v0
.end method
