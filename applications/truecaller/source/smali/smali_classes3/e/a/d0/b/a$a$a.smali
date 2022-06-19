.class public final Le/a/d0/b/a$a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/b/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d0/b/a$a$a;->b:I

    iput-object p2, p0, Le/a/d0/b/a$a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Le/a/d0/b/a$a$a;->b:I

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 1
    iget-object v0, p0, Le/a/d0/b/a$a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/b/a$a;

    iget-object v3, v0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    iget-object v0, v0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 2
    iget-object v4, v3, Le/a/d0/b/a;->f:Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->q()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1a

    if-ge v4, v6, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v5

    .line 3
    :goto_0
    iget-object v6, v3, Le/a/d0/b/a;->f:Le/a/p5/g;

    invoke-interface {v6}, Le/a/p5/g;->q()I

    move-result v6

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    .line 4
    :goto_1
    iget-object v7, v3, Le/a/d0/b/a;->f:Le/a/p5/g;

    invoke-interface {v7}, Le/a/p5/g;->f()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v3, Le/a/d0/b/a;->f:Le/a/p5/g;

    invoke-interface {v7}, Le/a/p5/g;->r()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v2

    :goto_3
    const-string v8, "Dropping state "

    if-eqz v6, :cond_8

    .line 5
    iget-object v9, v3, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-static {v9}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/d0/b/i;

    if-eqz v9, :cond_5

    .line 6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v11

    invoke-static {v10, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v2

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    move v10, v5

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v2

    :goto_5
    if-eqz v10, :cond_6

    .line 7
    iget-object v10, v0, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-nez v10, :cond_6

    if-nez v7, :cond_6

    .line 8
    iget-object v1, v3, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as it is a new state change with null number"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_a

    :cond_6
    if-eqz v9, :cond_7

    .line 10
    iget-object v9, v9, Le/a/d0/b/i;->a:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v9, v1

    :goto_6
    if-eqz v9, :cond_8

    iget-object v9, v0, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as it\'s not a new state change, previous state had a number and this one doesn\'t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_a

    :cond_8
    if-nez v4, :cond_a

    if-eqz v7, :cond_9

    goto :goto_7

    :cond_9
    move v4, v5

    goto :goto_8

    :cond_a
    :goto_7
    move v4, v2

    :goto_8
    if-eqz v6, :cond_b

    .line 12
    iget-object v6, v0, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-nez v6, :cond_b

    move v6, v2

    goto :goto_9

    :cond_b
    move v6, v5

    :goto_9
    if-eqz v4, :cond_e

    .line 13
    iget-object v4, v3, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v6, :cond_e

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s a duplicate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    iget-object v3, v3, Le/a/d0/b/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Le/a/d0/b/i$d;

    if-nez v4, :cond_c

    move-object v3, v1

    :cond_c
    check-cast v3, Le/a/d0/b/i$d;

    .line 16
    instance-of v0, v0, Le/a/d0/b/i$d;

    if-eqz v0, :cond_f

    if-eqz v3, :cond_d

    .line 17
    iget-object v1, v3, Le/a/d0/b/i$d;->d:Ljava/lang/Integer;

    :cond_d
    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    move v2, v5

    .line 18
    :cond_f
    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 19
    :cond_10
    throw v1

    .line 20
    :cond_11
    iget-object v0, p0, Le/a/d0/b/a$a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/b/a$a;

    iget-object v1, v0, Le/a/d0/b/a$a;->e:Le/a/d0/b/a;

    .line 21
    iget-object v1, v1, Le/a/d0/b/a;->q:Le/a/d/f;

    .line 22
    iget-object v0, v0, Le/a/d0/b/a$a;->f:Le/a/d0/b/i;

    .line 23
    iget-object v0, v0, Le/a/d0/b/i;->a:Ljava/lang/String;

    .line 24
    invoke-interface {v1, v0}, Le/a/d/f;->i(Ljava/lang/String;)Z

    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
