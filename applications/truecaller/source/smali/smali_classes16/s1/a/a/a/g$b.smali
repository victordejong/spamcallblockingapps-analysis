.class public final Ls1/a/a/a/g$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/ArrayList<",
        "Ls1/a/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/g;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/g$b;->b:Ls1/a/a/a/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Ls1/a/a/a/g$b;->b:Ls1/a/a/a/g;

    invoke-virtual {v0}, Ls1/a/a/a/g;->e()Ls1/a/a/a/v0/b/b;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Ls1/a/a/a/g$b;->b:Ls1/a/a/a/g;

    invoke-virtual {v2}, Ls1/a/a/a/g;->g()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-static {v0}, Ls1/a/a/a/s0;->d(Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/b/n0;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v5, Ls1/a/a/a/v;

    iget-object v6, p0, Ls1/a/a/a/g$b;->b:Ls1/a/a/a/g;

    sget-object v7, Ls1/a/i$a;->a:Ls1/a/i$a;

    new-instance v8, Lt2;

    invoke-direct {v8, v3, v2}, Lt2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v5, v6, v3, v7, v8}, Ls1/a/a/a/v;-><init>(Ls1/a/a/a/g;ILs1/a/i$a;Ls1/z/b/a;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 6
    :goto_0
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7
    new-instance v6, Ls1/a/a/a/v;

    iget-object v7, p0, Ls1/a/a/a/g$b;->b:Ls1/a/a/a/g;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Ls1/a/i$a;->b:Ls1/a/i$a;

    new-instance v10, Lt2;

    invoke-direct {v10, v4, v5}, Lt2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v6, v7, v2, v9, v10}, Ls1/a/a/a/v;-><init>(Ls1/a/a/a/g;ILs1/a/i$a;Ls1/z/b/a;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v3

    .line 8
    :cond_2
    :goto_1
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v5

    const-string v6, "descriptor.valueParameters"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_3

    .line 9
    new-instance v6, Ls1/a/a/a/v;

    iget-object v7, p0, Ls1/a/a/a/g$b;->b:Ls1/a/a/a/g;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Ls1/a/i$a;->c:Ls1/a/i$a;

    new-instance v10, Ls1/a/a/a/i;

    invoke-direct {v10, v0, v3}, Ls1/a/a/a/i;-><init>(Ls1/a/a/a/v0/b/b;I)V

    invoke-direct {v6, v7, v2, v9, v10}, Ls1/a/a/a/v;-><init>(Ls1/a/a/a/g;ILs1/a/i$a;Ls1/z/b/a;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v2, v8

    goto :goto_2

    .line 10
    :cond_3
    iget-object v2, p0, Ls1/a/a/a/g$b;->b:Ls1/a/a/a/g;

    invoke-virtual {v2}, Ls1/a/a/a/g;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v0, v0, Ls1/a/a/a/v0/d/a/c0/b;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    new-instance v0, Ls1/a/a/a/h;

    invoke-direct {v0}, Ls1/a/a/a/h;-><init>()V

    invoke-static {v1, v0}, Le/q/f/a/d/a;->V2(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method
