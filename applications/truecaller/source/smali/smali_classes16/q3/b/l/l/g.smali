.class public final Lq3/b/l/l/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lq3/b/l/l/h;


# direct methods
.method public constructor <init>(Lq3/b/l/l/c;Lq3/b/l/l/h;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    .line 2
    iget-boolean p1, p1, Lq3/b/l/l/c;->c:Z

    iput-boolean p1, p0, Lq3/b/l/l/g;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lq3/b/l/e;
    .locals 10

    .line 1
    iget-object v0, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    invoke-virtual {v0}, Lq3/b/l/l/h;->f()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    iget-byte v4, v0, Lq3/b/l/l/h;->b:B

    if-eqz v4, :cond_15

    const/4 v5, 0x1

    if-eq v4, v5, :cond_14

    const-string v6, "Unexpected leading comma"

    const/4 v7, 0x4

    const/4 v8, 0x6

    if-eq v4, v8, :cond_9

    const/16 v8, 0x8

    if-eq v4, v8, :cond_1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 3
    sget-object v1, Lq3/b/l/i;->a:Lq3/b/l/i;

    invoke-virtual {v0}, Lq3/b/l/l/h;->g()V

    goto/16 :goto_7

    :cond_0
    const-string v4, "Can\'t begin reading element, unexpected token"

    .line 4
    invoke-static {v0, v4, v2, v1}, Lq3/b/l/l/h;->d(Lq3/b/l/l/h;Ljava/lang/String;II)Ljava/lang/Void;

    throw v3

    :cond_1
    if-ne v4, v8, :cond_8

    .line 5
    invoke-virtual {v0}, Lq3/b/l/l/h;->g()V

    .line 6
    iget-object v0, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    iget-byte v1, v0, Lq3/b/l/l/h;->b:B

    if-eq v1, v7, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget v4, v0, Lq3/b/l/l/h;->a:I

    if-eqz v1, :cond_7

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move v1, v2

    .line 8
    :goto_2
    iget-object v4, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    invoke-virtual {v4}, Lq3/b/l/l/h;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {p0}, Lq3/b/l/l/g;->a()Lq3/b/l/e;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    iget-byte v4, v1, Lq3/b/l/l/h;->b:B

    if-eq v4, v7, :cond_4

    const/16 v6, 0x9

    if-ne v4, v6, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget v0, v1, Lq3/b/l/l/h;->c:I

    const-string v2, "Expected end of the array or comma"

    .line 13
    invoke-virtual {v1, v2, v0}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    .line 14
    :cond_4
    invoke-virtual {v1}, Lq3/b/l/l/h;->g()V

    move v1, v5

    goto :goto_2

    .line 15
    :cond_5
    iget-object v2, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    xor-int/2addr v1, v5

    iget v4, v2, Lq3/b/l/l/h;->a:I

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {v2}, Lq3/b/l/l/h;->g()V

    .line 17
    new-instance v1, Lq3/b/l/b;

    invoke-direct {v1, v0}, Lq3/b/l/b;-><init>(Ljava/util/List;)V

    goto/16 :goto_7

    :cond_6
    const-string v0, "Unexpected trailing comma"

    .line 18
    invoke-virtual {v2, v0, v4}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    .line 19
    :cond_7
    invoke-virtual {v0, v6, v4}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    .line 20
    :cond_8
    iget v1, v0, Lq3/b/l/l/h;->c:I

    const-string v2, "Expected start of the array"

    .line 21
    invoke-virtual {v0, v2, v1}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    :cond_9
    if-ne v4, v8, :cond_13

    .line 22
    invoke-virtual {v0}, Lq3/b/l/l/h;->g()V

    .line 23
    iget-object v0, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    iget-byte v1, v0, Lq3/b/l/l/h;->b:B

    if-eq v1, v7, :cond_a

    move v1, v5

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    iget v4, v0, Lq3/b/l/l/h;->a:I

    if-eqz v1, :cond_12

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_4
    move v1, v2

    .line 25
    :goto_5
    iget-object v4, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    invoke-virtual {v4}, Lq3/b/l/l/h;->f()Z

    move-result v4

    const/4 v6, 0x7

    if-eqz v4, :cond_f

    .line 26
    iget-boolean v1, p0, Lq3/b/l/l/g;->a:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    invoke-virtual {v1}, Lq3/b/l/l/h;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    invoke-virtual {v1}, Lq3/b/l/l/h;->j()Ljava/lang/String;

    move-result-object v1

    .line 27
    :goto_6
    iget-object v4, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    const/4 v8, 0x5

    .line 28
    iget-byte v9, v4, Lq3/b/l/l/h;->b:B

    if-ne v9, v8, :cond_e

    .line 29
    invoke-virtual {v4}, Lq3/b/l/l/h;->g()V

    .line 30
    invoke-virtual {p0}, Lq3/b/l/l/g;->a()Lq3/b/l/e;

    move-result-object v4

    .line 31
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    iget-byte v4, v1, Lq3/b/l/l/h;->b:B

    if-eq v4, v7, :cond_d

    if-ne v4, v6, :cond_c

    goto :goto_4

    .line 33
    :cond_c
    iget v0, v1, Lq3/b/l/l/h;->c:I

    const-string v2, "Expected end of the object or comma"

    .line 34
    invoke-virtual {v1, v2, v0}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    .line 35
    :cond_d
    invoke-virtual {v1}, Lq3/b/l/l/h;->g()V

    move v1, v5

    goto :goto_5

    .line 36
    :cond_e
    iget v0, v4, Lq3/b/l/l/h;->c:I

    const-string v1, "Expected \':\'"

    .line 37
    invoke-virtual {v4, v1, v0}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    .line 38
    :cond_f
    iget-object v4, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    if-nez v1, :cond_10

    iget-byte v1, v4, Lq3/b/l/l/h;->b:B

    if-ne v1, v6, :cond_10

    move v2, v5

    :cond_10
    iget v1, v4, Lq3/b/l/l/h;->a:I

    if-eqz v2, :cond_11

    .line 39
    invoke-virtual {v4}, Lq3/b/l/l/h;->g()V

    .line 40
    new-instance v1, Lq3/b/l/j;

    invoke-direct {v1, v0}, Lq3/b/l/j;-><init>(Ljava/util/Map;)V

    goto :goto_7

    :cond_11
    const-string v0, "Expected end of the object"

    .line 41
    invoke-virtual {v4, v0, v1}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    .line 42
    :cond_12
    invoke-virtual {v0, v6, v4}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    .line 43
    :cond_13
    iget v1, v0, Lq3/b/l/l/h;->c:I

    const-string v2, "Expected start of the object"

    .line 44
    invoke-virtual {v0, v2, v1}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v3

    .line 45
    :cond_14
    invoke-virtual {p0, v5}, Lq3/b/l/l/g;->b(Z)Lq3/b/l/e;

    move-result-object v1

    goto :goto_7

    .line 46
    :cond_15
    invoke-virtual {p0, v2}, Lq3/b/l/l/g;->b(Z)Lq3/b/l/e;

    move-result-object v1

    :goto_7
    return-object v1

    .line 47
    :cond_16
    iget-object v0, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    const-string v4, "Can\'t begin reading value from here"

    invoke-static {v0, v4, v2, v1}, Lq3/b/l/l/h;->d(Lq3/b/l/l/h;Ljava/lang/String;II)Ljava/lang/Void;

    throw v3
.end method

.method public final b(Z)Lq3/b/l/e;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq3/b/l/l/g;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    invoke-virtual {v0}, Lq3/b/l/l/h;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lq3/b/l/l/g;->b:Lq3/b/l/l/h;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lq3/b/l/l/h;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lq3/b/l/l/h;->h()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lq3/b/l/h;

    invoke-direct {v1, v0, p1}, Lq3/b/l/h;-><init>(Ljava/lang/Object;Z)V

    return-object v1
.end method
