.class public final Le/a/d/c/b/m;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/d/v/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c/b/o;


# direct methods
.method public constructor <init>(Le/a/d/c/b/o;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/b/m;->b:Le/a/d/c/b/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Le/a/d/v/b;

    const-string v0, "groupCall"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/d/c/b/m;->b:Le/a/d/c/b/o;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Le/a/d/c/b/l;

    const/4 v0, 0x0

    invoke-direct {v4, v1, p1, v0}, Le/a/d/c/b/l;-><init>(Le/a/d/c/b/o;Le/a/d/v/b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 6
    iget-object v7, p0, Le/a/d/c/b/m;->b:Le/a/d/c/b/o;

    .line 7
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v10, Le/a/d/c/b/i;

    invoke-direct {v10, v7, p1, v0}, Le/a/d/c/b/i;-><init>(Le/a/d/c/b/o;Le/a/d/v/b;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 9
    iget-object v1, p0, Le/a/d/c/b/m;->b:Le/a/d/c/b/o;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v4, Le/a/d/c/b/j;

    invoke-direct {v4, v1, p1, v0}, Le/a/d/c/b/j;-><init>(Le/a/d/c/b/o;Le/a/d/v/b;Ls1/w/d;)V

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 12
    iget-object v7, p0, Le/a/d/c/b/m;->b:Le/a/d/c/b/o;

    .line 13
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v10, Le/a/d/c/b/k;

    invoke-direct {v10, v7, p1, v0}, Le/a/d/c/b/k;-><init>(Le/a/d/c/b/o;Le/a/d/v/b;Ls1/w/d;)V

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
