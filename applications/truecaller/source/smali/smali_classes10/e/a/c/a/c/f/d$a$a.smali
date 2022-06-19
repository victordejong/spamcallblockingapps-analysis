.class public final Le/a/c/a/c/f/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/f/d$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/c/q/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/c/f/d;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/c/f/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/d$a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/c/f/d$a$a;->b:Le/a/c/a/c/f/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/a/c/f/d$a$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/a/c/f/d$a$a$a;

    iget v3, v2, Le/a/c/a/c/f/d$a$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a/c/f/d$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a/c/f/d$a$a$a;

    invoke-direct {v2, v0, v1}, Le/a/c/a/c/f/d$a$a$a;-><init>(Le/a/c/a/c/f/d$a$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/a/c/f/d$a$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/a/c/f/d$a$a$a;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/a/c/f/d$a$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v4, p1

    check-cast v4, Le/a/c/q/g;

    if-eqz v4, :cond_a

    .line 6
    iget-wide v7, v4, Le/a/c/q/g;->e:J

    .line 7
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9}, Lw3/b/a/b;-><init>()V

    const-string v10, "DateTime.now()"

    .line 8
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v9, v9, Lw3/b/a/e0/e;->a:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_3

    const/4 v6, 0x0

    goto/16 :goto_6

    .line 10
    :cond_3
    iget-object v7, v0, Le/a/c/a/c/f/d$a$a;->b:Le/a/c/a/c/f/d;

    .line 11
    iget-object v7, v7, Le/a/c/a/c/f/d;->d:Le/a/c/a/c/c;

    .line 12
    invoke-interface {v7, v4}, Le/a/c/a/c/c;->b(Le/a/c/q/g;)V

    const-string v7, "$this$toOtpCardItem"

    .line 13
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Le/a/c/q/g;->hashCode()I

    move-result v7

    int-to-long v9, v7

    .line 15
    iget-wide v11, v4, Le/a/c/q/g;->a:J

    .line 16
    iget-object v13, v4, Le/a/c/q/g;->b:Ljava/lang/String;

    .line 17
    iget-wide v14, v4, Le/a/c/q/g;->c:J

    .line 18
    iget-object v7, v4, Le/a/c/q/g;->d:Ljava/lang/String;

    .line 19
    iget-wide v5, v4, Le/a/c/q/g;->e:J

    .line 20
    iget-object v8, v4, Le/a/c/q/g;->f:Ljava/util/List;

    .line 21
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Le/a/c/r/j/a;

    .line 22
    instance-of v0, v0, Le/a/c/r/j/a$f$a;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    .line 23
    :goto_2
    check-cast v16, Le/a/c/r/j/a;

    if-eqz v16, :cond_6

    .line 24
    invoke-static/range {v16 .. v16}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_3

    :cond_6
    const/16 v19, 0x0

    .line 25
    :goto_3
    iget-object v0, v4, Le/a/c/q/g;->f:Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Le/a/c/r/j/a;

    .line 27
    instance-of v8, v8, Le/a/c/r/j/a$c;

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    .line 28
    :goto_4
    check-cast v4, Le/a/c/r/j/a;

    if-eqz v4, :cond_9

    .line 29
    invoke-static {v4}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_5

    :cond_9
    const/16 v20, 0x0

    .line 30
    :goto_5
    new-instance v0, Le/a/c/a/l/b$d;

    move-object v8, v0

    move-object/from16 v16, v7

    move-wide/from16 v17, v5

    invoke-direct/range {v8 .. v20}, Le/a/c/a/l/b$d;-><init>(JJLjava/lang/String;JLjava/lang/String;JLe/a/c/a/l/c;Le/a/c/a/l/c;)V

    move-object v6, v0

    :goto_6
    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    move v0, v5

    const/4 v6, 0x0

    .line 31
    :goto_7
    iput v0, v2, Le/a/c/a/c/f/d$a$a$a;->e:I

    invoke-interface {v1, v6, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    :cond_b
    :goto_8
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
