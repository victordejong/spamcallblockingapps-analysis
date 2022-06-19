.class public final Le/a/a/c/m8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/m8/a;


# instance fields
.field public a:J

.field public final b:Le/a/a/c/m8/f;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/u3/g;

.field public final e:Le/m/e/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/u3/g;Le/m/e/k;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/m8/b;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/m8/b;->d:Le/a/u3/g;

    iput-object p3, p0, Le/a/a/c/m8/b;->e:Le/m/e/k;

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Le/a/a/c/m8/b;->a:J

    .line 3
    new-instance p1, Le/a/a/c/m8/f;

    const-string p2, "\ud83d\udc4d"

    const p3, 0x7f080be2

    const-string v0, "ThumbsUp"

    invoke-direct {p1, p2, p3, v0}, Le/a/a/c/m8/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Le/a/a/c/m8/b;->b:Le/a/a/c/m8/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/c/m8/f;
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 2
    iget-wide v2, p0, Le/a/a/c/m8/b;->a:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    iget-boolean v2, p1, Lcom/truecaller/messaging/data/types/Message;->i:Z

    if-nez v2, :cond_9

    iget v2, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    iget v2, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iput-wide v0, p0, Le/a/a/c/m8/b;->a:J

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message.buildMessageText()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/a/c/m8/b;->b:Le/a/a/c/m8/f;

    .line 6
    iget-object v0, v0, Le/a/a/c/m8/f;->a:Ljava/lang/String;

    .line 7
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v3, p0, Le/a/a/c/m8/b;->b:Le/a/a/c/m8/f;

    goto :goto_4

    :cond_1
    const-string v0, "value"

    .line 9
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v4, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    sget-object v0, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t/a/u/f;

    if-eqz v0, :cond_8

    .line 12
    iget-object v0, v0, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    move v2, v1

    .line 13
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 14
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_4

    .line 16
    iget-object v0, v0, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t/a/u/d;

    goto :goto_3

    .line 18
    :cond_4
    iget-object v0, v0, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t/a/u/c;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_6

    .line 20
    iget-object v1, p0, Le/a/a/c/m8/b;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Le/m/d/y/n;->D(Le/a/t/a/u/d;Landroid/content/Context;)I

    move-result v1

    :cond_6
    if-eqz v1, :cond_7

    .line 21
    new-instance v3, Le/a/a/c/m8/f;

    const-string v0, "Other"

    invoke-direct {v3, p1, v1, v0}, Le/a/a/c/m8/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    :goto_4
    return-object v3

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Emoji data loader has not been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    return-object v3
.end method

.method public b()Le/a/a/c/m8/f;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/c/m8/b;->d:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->i3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xd9

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    .line 5
    iget-object v1, p0, Le/a/a/c/m8/b;->e:Le/m/e/k;

    const-class v3, Le/a/a/c/m8/e;

    .line 6
    invoke-virtual {v1, v0, v3}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v3}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Le/a/a/c/m8/e;

    if-eqz v0, :cond_8

    .line 9
    invoke-virtual {v0}, Le/a/a/c/m8/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    .line 10
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_3

    .line 12
    :cond_2
    sget-object v3, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/t/a/u/f;

    if-eqz v3, :cond_7

    .line 13
    iget-object v3, v3, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    move v5, v4

    .line 14
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 15
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 17
    iget-object v1, v3, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/t/a/u/d;

    goto :goto_3

    .line 19
    :cond_3
    iget-object v3, v3, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/t/a/u/c;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 21
    iget-object v1, p0, Le/a/a/c/m8/b;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Le/m/d/y/n;->D(Le/a/t/a/u/d;Landroid/content/Context;)I

    move-result v4

    :cond_5
    if-eqz v4, :cond_6

    .line 22
    new-instance v1, Le/a/a/c/m8/f;

    invoke-virtual {v0}, Le/a/a/c/m8/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Le/a/a/c/m8/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Le/a/a/c/m8/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 23
    :cond_6
    iget-object v1, p0, Le/a/a/c/m8/b;->b:Le/a/a/c/m8/f;

    :goto_4
    return-object v1

    .line 24
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emoji data loader has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_8
    iget-object v0, p0, Le/a/a/c/m8/b;->b:Le/a/a/c/m8/f;

    return-object v0
.end method
