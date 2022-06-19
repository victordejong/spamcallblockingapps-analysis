.class public final Le/a/g5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g5/p;


# instance fields
.field public final a:Le/a/b0/p/d;


# direct methods
.method public constructor <init>(Le/a/b0/p/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tagManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g5/q;->a:Le/a/b0/p/d;

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/p/c;)Le/a/b0/p/c;
    .locals 10

    const-string v1, "tag"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p1, Le/a/b0/p/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 2
    iget-object v1, p1, Le/a/b0/p/c;->d:Ljava/lang/Long;

    :goto_0
    move-object v7, v1

    goto :goto_1

    .line 3
    :cond_0
    iget-object v5, p0, Le/a/g5/q;->a:Le/a/b0/p/d;

    invoke-interface {v5, v1, v2}, Le/a/b0/p/d;->h(J)Le/a/b0/p/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v1, Le/a/b0/p/c;->d:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    move-object v7, v6

    .line 5
    :goto_1
    iget-wide v1, p1, Le/a/b0/p/c;->c:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 6
    iget-object v1, p1, Le/a/b0/p/c;->e:Ljava/lang/String;

    :goto_2
    move-object v8, v1

    goto :goto_3

    .line 7
    :cond_2
    iget-object v3, p0, Le/a/g5/q;->a:Le/a/b0/p/d;

    invoke-interface {v3, v1, v2}, Le/a/b0/p/d;->h(J)Le/a/b0/p/c;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v1, Le/a/b0/p/c;->e:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v8, v6

    :goto_3
    const/4 v9, 0x7

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p1

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    .line 9
    invoke-static/range {v0 .. v8}, Le/a/b0/p/c;->a(Le/a/b0/p/c;JLjava/lang/String;JLjava/lang/Long;Ljava/lang/String;I)Le/a/b0/p/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;
    .locals 8

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->d0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/entity/Tag;

    const-string v4, "tag"

    .line 2
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 3
    sget-object v6, Le/a/p5/g0;->a:Ljava/util/Set;

    .line 4
    invoke-static {v4}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    int-to-long v4, v5

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 6
    invoke-virtual {p0, v3}, Le/a/g5/q;->e(Lcom/truecaller/data/entity/Tag;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v0

    .line 7
    :cond_2
    iget-object v6, p0, Le/a/g5/q;->a:Le/a/b0/p/d;

    invoke-interface {v6, v4, v5}, Le/a/b0/p/d;->h(J)Le/a/b0/p/c;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0, v3}, Le/a/g5/q;->e(Lcom/truecaller/data/entity/Tag;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v2}, Le/a/g5/q;->e(Lcom/truecaller/data/entity/Tag;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p0, v4}, Le/a/g5/q;->d(Le/a/b0/p/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Le/a/g5/q;->d(Le/a/b0/p/c;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    move-object v2, v3

    move-object v1, v4

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p0, v1}, Le/a/g5/q;->a(Le/a/b0/p/c;)Le/a/b0/p/c;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public c(J)Le/a/b0/p/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g5/q;->a:Le/a/b0/p/d;

    invoke-interface {v0, p1, p2}, Le/a/b0/p/d;->h(J)Le/a/b0/p/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/a/g5/q;->a(Le/a/b0/p/c;)Le/a/b0/p/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final d(Le/a/b0/p/c;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p1, Le/a/b0/p/c;->c:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p1, Le/a/b0/p/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final e(Lcom/truecaller/data/entity/Tag;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getSource()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
