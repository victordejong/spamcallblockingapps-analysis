.class public final Le/a/d/o;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/f4/g/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/m;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Le/a/d/m;ILjava/util/Set;)V
    .locals 0

    iput-object p1, p0, Le/a/d/o;->b:Le/a/d/m;

    iput p2, p0, Le/a/d/o;->c:I

    iput-object p3, p0, Le/a/d/o;->d:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/d/o;->b:Le/a/d/m;

    .line 2
    iget-object v1, v1, Le/a/d/m;->d:Lo3/a;

    .line 3
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "UUID.randomUUID()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "voip"

    invoke-interface {v1, v2, v3}, Le/a/f4/g/r;->c(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/i;

    move-result-object v1

    .line 4
    iget v2, p0, Le/a/d/o;->c:I

    .line 5
    iput v2, v1, Le/a/f4/g/i;->g:I

    .line 6
    iget-object v2, p0, Le/a/d/o;->d:Ljava/util/Set;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/String;

    .line 10
    new-instance v5, Le/a/f4/g/i$b;

    invoke-static {v4}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v0, v0}, Le/a/f4/g/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, v1, Le/a/f4/g/i;->d:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, v1, Le/a/f4/g/i;->e:Z

    .line 13
    invoke-virtual {v1}, Le/a/f4/g/i;->a()Le/a/f4/g/t;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
