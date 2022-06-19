.class public final Lk3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

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
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lk3;->b:I

    iput-object p2, p0, Lk3;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lk3;->b:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1
    iget-object v1, p0, Lk3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/g/o$a;

    iget-object v1, v1, Le/a/l/g/o$a;->b:Le/a/l/g/o;

    .line 2
    invoke-virtual {v1}, Le/a/l/g/o;->Ij()V

    return-object v0

    .line 3
    :cond_0
    throw v2

    .line 4
    :cond_1
    iget-object v1, p0, Lk3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/g/o$a;

    iget-object v1, v1, Le/a/l/g/o$a;->b:Le/a/l/g/o;

    .line 5
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/l/g/m;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Le/a/l/g/m;->q1()V

    :cond_2
    return-object v0

    .line 6
    :cond_3
    iget-object v1, p0, Lk3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/g/o$a;

    iget-object v3, v1, Le/a/l/g/o$a;->b:Le/a/l/g/o;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v6, Le/a/l/g/a;

    invoke-direct {v6, v3, v2}, Le/a/l/g/a;-><init>(Le/a/l/g/o;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0
.end method
