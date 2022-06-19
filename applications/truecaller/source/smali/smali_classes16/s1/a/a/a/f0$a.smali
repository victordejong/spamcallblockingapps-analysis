.class public final Ls1/a/a/a/f0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/f0;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/f0;

.field public final synthetic c:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/f0;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/f0$a;->b:Ls1/a/a/a/f0;

    iput-object p2, p0, Ls1/a/a/a/f0$a;->c:Ls1/z/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Ls1/a/a/a/f0$a;->b:Ls1/a/a/a/f0;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/f0;->c:Ls1/a/a/a/v0/m/e0;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    goto/16 :goto_3

    .line 5
    :cond_0
    sget-object v1, Ls1/h;->b:Ls1/h;

    new-instance v2, Ls1/a/a/a/e0;

    invoke-direct {v2, p0}, Ls1/a/a/a/e0;-><init>(Ls1/a/a/a/f0$a;)V

    invoke-static {v1, v2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    if-ltz v3, :cond_6

    .line 8
    check-cast v4, Ls1/a/a/a/v0/m/y0;

    .line 9
    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10
    sget-object v3, Ls1/a/o;->d:Ls1/a/o$a;

    .line 11
    sget-object v3, Ls1/a/o;->c:Ls1/a/o;

    goto :goto_2

    .line 12
    :cond_1
    new-instance v7, Ls1/a/a/a/f0;

    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v8

    const-string v9, "typeProjection.type"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Ls1/a/a/a/f0$a;->c:Ls1/z/b/a;

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v9, Ls1/a/a/a/d0;

    invoke-direct {v9, v3, p0, v1, v6}, Ls1/a/a/a/d0;-><init>(ILs1/a/a/a/f0$a;Ls1/g;Ls1/a/l;)V

    move-object v6, v9

    :goto_1
    invoke-direct {v7, v8, v6}, Ls1/a/a/a/f0;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/z/b/a;)V

    .line 13
    invoke-interface {v4}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "type"

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 14
    sget-object v3, Ls1/a/o;->d:Ls1/a/o$a;

    .line 15
    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v3, Ls1/a/o;

    sget-object v4, Ls1/a/p;->c:Ls1/a/p;

    invoke-direct {v3, v4, v7}, Ls1/a/o;-><init>(Ls1/a/p;Ls1/a/m;)V

    goto :goto_2

    .line 17
    :cond_3
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 18
    :cond_4
    sget-object v3, Ls1/a/o;->d:Ls1/a/o$a;

    .line 19
    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v3, Ls1/a/o;

    sget-object v4, Ls1/a/p;->b:Ls1/a/p;

    invoke-direct {v3, v4, v7}, Ls1/a/o;-><init>(Ls1/a/p;Ls1/a/m;)V

    goto :goto_2

    .line 21
    :cond_5
    sget-object v3, Ls1/a/o;->d:Ls1/a/o$a;

    .line 22
    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v3, Ls1/a/o;

    sget-object v4, Ls1/a/p;->a:Ls1/a/p;

    invoke-direct {v3, v4, v7}, Ls1/a/o;-><init>(Ls1/a/p;Ls1/a/m;)V

    .line 24
    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 25
    :cond_6
    invoke-static {}, Ls1/u/i;->N0()V

    throw v6

    :cond_7
    move-object v0, v2

    :goto_3
    return-object v0
.end method
