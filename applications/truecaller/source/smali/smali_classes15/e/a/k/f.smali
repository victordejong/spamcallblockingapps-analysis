.class public final Le/a/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/d;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/o<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/q2/a;

.field public final c:Le/a/k/c/q;

.field public final d:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/k/c/q;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exoPlayerUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/f;->b:Le/a/q2/a;

    iput-object p2, p0, Le/a/k/f;->c:Le/a/k/c/q;

    iput-object p3, p0, Le/a/k/f;->d:Le/a/p5/c;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/k/f;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/l5/a/p;->a()Le/a/l5/a/p$b;

    move-result-object v0

    .line 2
    invoke-static {}, Le/a/l5/a/l4;->a()Le/a/l5/a/l4$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Le/a/l5/a/l4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {p0, p1}, Le/a/k/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l4$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {v1}, Le/a/l5/a/l4$b;->a()Le/a/l5/a/l4;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->i(Le/a/l5/a/l4;)Le/a/l5/a/p$b;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->d(Ljava/lang/Long;)Le/a/l5/a/p$b;

    const-string p1, "DownloadInitiated"

    .line 4
    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->h(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/p$b;

    .line 6
    invoke-virtual {v0, p3}, Le/a/l5/a/p$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 7
    invoke-static {}, Le/a/l5/a/j3;->a()Le/a/l5/a/j3$b;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Le/a/k/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-virtual {p1, v1}, Le/a/l5/a/j3$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0, p2}, Le/a/k/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-virtual {p1, p3}, Le/a/l5/a/j3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    const-string p2, ""

    .line 10
    invoke-virtual {p1, p2}, Le/a/l5/a/j3$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 11
    invoke-virtual {p1}, Le/a/l5/a/j3$b;->a()Le/a/l5/a/j3;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->b(Le/a/l5/a/j3;)Le/a/l5/a/p$b;

    .line 12
    iget-object p1, p0, Le/a/k/f;->b:Le/a/q2/a;

    invoke-virtual {v0}, Le/a/l5/a/p$b;->a()Le/a/l5/a/p;

    move-result-object p2

    const-string p3, "event.build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/l5/a/p;->a()Le/a/l5/a/p$b;

    move-result-object v0

    .line 2
    invoke-static {}, Le/a/l5/a/l4;->a()Le/a/l5/a/l4$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Le/a/l5/a/l4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {p0, p1}, Le/a/k/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l4$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {v1}, Le/a/l5/a/l4$b;->a()Le/a/l5/a/l4;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->i(Le/a/l5/a/l4;)Le/a/l5/a/p$b;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/p$b;

    const-string p1, "VideoPlayed"

    .line 4
    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->h(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 5
    invoke-virtual {v0, p4}, Le/a/l5/a/p$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 6
    invoke-static {}, Le/a/l5/a/j3;->a()Le/a/l5/a/j3$b;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0, p3}, Le/a/k/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p2

    :goto_0
    invoke-virtual {p1, p4}, Le/a/l5/a/j3$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p0, p3}, Le/a/k/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1, p2}, Le/a/l5/a/j3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    const-string p2, ""

    .line 9
    invoke-virtual {p1, p2}, Le/a/l5/a/j3$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 10
    invoke-virtual {p1}, Le/a/l5/a/j3$b;->a()Le/a/l5/a/j3;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->b(Le/a/l5/a/j3;)Le/a/l5/a/p$b;

    .line 11
    iget-object p1, p0, Le/a/k/f;->b:Le/a/q2/a;

    invoke-virtual {v0}, Le/a/l5/a/p$b;->a()Le/a/l5/a/p;

    move-result-object p2

    const-string p3, "event.build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/m/a/c/j1/f;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "downloadEntry"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "analyticsContext"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p1 .. p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/j1/f;

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 3
    :cond_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Le/m/a/c/j1/f;

    .line 6
    iget v7, v6, Le/m/a/c/j1/f;->b:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_0

    .line 7
    iget-object v5, v4, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/offline/DownloadRequest;->c:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "downloadFirst.request.uri.toString()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v7, v4, Le/m/a/c/j1/f;->e:J

    .line 9
    iget-wide v10, v4, Le/m/a/c/j1/f;->c:J

    .line 10
    iget-wide v12, v6, Le/m/a/c/j1/f;->d:J

    .line 11
    iget-wide v14, v6, Le/m/a/c/j1/f;->c:J

    sub-long v14, v12, v14

    .line 12
    invoke-static {}, Le/a/l5/a/p;->a()Le/a/l5/a/p$b;

    move-result-object v4

    .line 13
    invoke-static {}, Le/a/l5/a/l4;->a()Le/a/l5/a/l4$b;

    move-result-object v6

    invoke-virtual {v6, v5}, Le/a/l5/a/l4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {v0, v5}, Le/a/k/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Le/a/l5/a/l4$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 14
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v6, v7, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 15
    iput-object v5, v6, Le/a/l5/a/l4$b;->b:Ljava/lang/Long;

    .line 16
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v9, v5, v9

    .line 17
    invoke-virtual {v6}, Le/a/l5/a/l4$b;->a()Le/a/l5/a/l4;

    move-result-object v5

    invoke-virtual {v4, v5}, Le/a/l5/a/p$b;->i(Le/a/l5/a/l4;)Le/a/l5/a/p$b;

    .line 18
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Le/a/l5/a/p$b;->d(Ljava/lang/Long;)Le/a/l5/a/p$b;

    .line 19
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 20
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v4, v6, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput-object v5, v4, Le/a/l5/a/p$b;->d:Ljava/lang/Long;

    .line 22
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v9, v5, v7

    long-to-int v5, v14

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 24
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v4, v6, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 25
    iput-object v5, v4, Le/a/l5/a/p$b;->e:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v9, v5, v7

    const-string v5, "Downloaded"

    .line 27
    invoke-virtual {v4, v5}, Le/a/l5/a/p$b;->h(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 28
    invoke-virtual {v4, v3}, Le/a/l5/a/p$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 29
    invoke-static {}, Le/a/l5/a/j3;->a()Le/a/l5/a/j3$b;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {v0, v2}, Le/a/k/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    :goto_1
    invoke-virtual {v3, v6}, Le/a/l5/a/j3$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    if-eqz v2, :cond_3

    .line 31
    invoke-virtual {v0, v2}, Le/a/k/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    invoke-virtual {v3, v2}, Le/a/l5/a/j3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    const-string v2, ""

    .line 32
    invoke-virtual {v3, v2}, Le/a/l5/a/j3$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 33
    invoke-virtual {v3}, Le/a/l5/a/j3$b;->a()Le/a/l5/a/j3;

    move-result-object v2

    invoke-virtual {v4, v2}, Le/a/l5/a/p$b;->b(Le/a/l5/a/j3;)Le/a/l5/a/p$b;

    if-lez p4, :cond_5

    .line 34
    sget-object v2, Le/a/l5/a/c4;->c:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/c4$b;

    invoke-direct {v2, v5}, Le/a/l5/a/c4$b;-><init>(Le/a/l5/a/c4$a;)V

    .line 35
    iget v3, v2, Le/a/l5/a/c4$b;->a:I

    .line 36
    invoke-virtual {v2, v3}, Le/a/l5/a/c4$b;->b(I)Le/a/l5/a/c4$b;

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 39
    check-cast v6, Le/m/a/c/j1/f;

    .line 40
    sget-object v7, Le/a/l5/a/d4;->e:Lorg/apache/avro/Schema;

    new-instance v7, Le/a/l5/a/d4$b;

    invoke-direct {v7, v5}, Le/a/l5/a/d4$b;-><init>(Le/a/l5/a/d4$a;)V

    .line 41
    iget-wide v10, v6, Le/m/a/c/j1/f;->c:J

    invoke-virtual {v7, v10, v11}, Le/a/l5/a/d4$b;->c(J)Le/a/l5/a/d4$b;

    .line 42
    iget-wide v10, v6, Le/m/a/c/j1/f;->d:J

    invoke-virtual {v7, v10, v11}, Le/a/l5/a/d4$b;->b(J)Le/a/l5/a/d4$b;

    .line 43
    invoke-virtual {v7}, Le/a/l5/a/d4$b;->a()Le/a/l5/a/d4;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 44
    :cond_4
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v2, v1, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 45
    iput-object v3, v2, Le/a/l5/a/c4$b;->b:Ljava/util/List;

    .line 46
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v9

    .line 47
    invoke-virtual {v2}, Le/a/l5/a/c4$b;->a()Le/a/l5/a/c4;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/l5/a/p$b;->g(Le/a/l5/a/c4;)Le/a/l5/a/p$b;

    .line 48
    :cond_5
    iget-object v1, v0, Le/a/k/f;->b:Le/a/q2/a;

    invoke-virtual {v4}, Le/a/l5/a/p$b;->a()Le/a/l5/a/p;

    move-result-object v2

    const-string v3, "event.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    .line 49
    :cond_6
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "List contains no element matching the predicate."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/l5/a/p;->a()Le/a/l5/a/p$b;

    move-result-object v0

    .line 2
    invoke-static {}, Le/a/l5/a/l4;->a()Le/a/l5/a/l4$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Le/a/l5/a/l4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {p0, p1}, Le/a/k/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l4$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {v1}, Le/a/l5/a/l4$b;->a()Le/a/l5/a/l4;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->i(Le/a/l5/a/l4;)Le/a/l5/a/p$b;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ls1/k;

    const-string p3, "videoPlayedDuration"

    invoke-direct {p2, p3, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-static {p2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->e(Ljava/util/Map;)Le/a/l5/a/p$b;

    const-string p1, "VideoStopped"

    .line 6
    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->h(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 7
    invoke-virtual {v0, p5}, Le/a/l5/a/p$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 8
    invoke-static {}, Le/a/l5/a/j3;->a()Le/a/l5/a/j3$b;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 9
    invoke-virtual {p0, p4}, Le/a/k/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-virtual {p1, p3}, Le/a/l5/a/j3$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    if-eqz p4, :cond_1

    .line 10
    invoke-virtual {p0, p4}, Le/a/k/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1, p2}, Le/a/l5/a/j3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    const-string p2, ""

    .line 11
    invoke-virtual {p1, p2}, Le/a/l5/a/j3$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 12
    invoke-virtual {p1}, Le/a/l5/a/j3$b;->a()Le/a/l5/a/j3;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/p$b;->b(Le/a/l5/a/j3;)Le/a/l5/a/p$b;

    .line 13
    iget-object p1, p0, Le/a/k/f;->b:Le/a/q2/a;

    invoke-virtual {v0}, Le/a/l5/a/p$b;->a()Le/a/l5/a/p;

    move-result-object p2

    const-string p3, "event.build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public e(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "url"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "analyticsContext"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    new-instance v6, Ls1/o;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7, v1, v3}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v7, v0, Le/a/k/f;->a:Ljava/util/List;

    .line 4
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v11, 0x3e8

    const/4 v12, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ls1/o;

    .line 5
    iget-object v14, v13, Ls1/o;->a:Ljava/lang/Object;

    .line 6
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    sub-long v14, v4, v14

    int-to-long v9, v11

    cmp-long v9, v14, v9

    if-gez v9, :cond_2

    .line 7
    iget-object v9, v6, Ls1/o;->b:Ljava/lang/Object;

    iget-object v10, v13, Ls1/o;->b:Ljava/lang/Object;

    .line 8
    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 9
    iget-object v9, v6, Ls1/o;->c:Ljava/lang/Object;

    iget-object v10, v13, Ls1/o;->c:Ljava/lang/Object;

    .line 10
    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_0

    goto :goto_2

    :cond_3
    move-object v8, v12

    .line 11
    :goto_2
    check-cast v8, Ls1/o;

    if-nez v8, :cond_4

    .line 12
    iget-object v7, v0, Le/a/k/f;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v6, v0, Le/a/k/f;->a:Ljava/util/List;

    new-instance v7, Le/a/k/e;

    invoke-direct {v7, v4, v5}, Le/a/k/e;-><init>(J)V

    invoke-static {v6, v7}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_5

    return-void

    :cond_5
    int-to-long v4, v11

    cmp-long v4, p1, v4

    if-lez v4, :cond_6

    move-wide/from16 v4, p1

    goto :goto_4

    .line 14
    :cond_6
    iget-object v4, v0, Le/a/k/f;->d:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->c()J

    move-result-wide v4

    .line 15
    :goto_4
    invoke-static {}, Le/a/l5/a/p;->a()Le/a/l5/a/p$b;

    move-result-object v6

    .line 16
    invoke-static {}, Le/a/l5/a/l4;->a()Le/a/l5/a/l4$b;

    move-result-object v7

    invoke-virtual {v7, v1}, Le/a/l5/a/l4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {v0, v1}, Le/a/k/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Le/a/l5/a/l4$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {v7}, Le/a/l5/a/l4$b;->a()Le/a/l5/a/l4;

    move-result-object v7

    invoke-virtual {v6, v7}, Le/a/l5/a/p$b;->i(Le/a/l5/a/l4;)Le/a/l5/a/p$b;

    .line 17
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 18
    new-instance v5, Ls1/k;

    const-string v7, "createTime"

    invoke-direct {v5, v7, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-static {v5}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v6, v4}, Le/a/l5/a/p$b;->e(Ljava/util/Map;)Le/a/l5/a/p$b;

    const-string v4, "CallCreated"

    .line 20
    invoke-virtual {v6, v4}, Le/a/l5/a/p$b;->h(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 21
    iget-object v4, v0, Le/a/k/f;->c:Le/a/k/c/q;

    invoke-interface {v4, v1}, Le/a/k/c/q;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v1}, Le/a/l5/a/p$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/p$b;

    .line 22
    invoke-virtual {v6, v3}, Le/a/l5/a/p$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 23
    invoke-static {}, Le/a/l5/a/j3;->a()Le/a/l5/a/j3$b;

    move-result-object v1

    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {v0, v2}, Le/a/k/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    move-object v3, v12

    :goto_5
    invoke-virtual {v1, v3}, Le/a/l5/a/j3$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    if-eqz v2, :cond_8

    .line 25
    invoke-virtual {v0, v2}, Le/a/k/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_8
    invoke-virtual {v1, v12}, Le/a/l5/a/j3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    const-string v2, ""

    .line 26
    invoke-virtual {v1, v2}, Le/a/l5/a/j3$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 27
    invoke-virtual {v1}, Le/a/l5/a/j3$b;->a()Le/a/l5/a/j3;

    move-result-object v1

    invoke-virtual {v6, v1}, Le/a/l5/a/p$b;->b(Le/a/l5/a/j3;)Le/a/l5/a/p$b;

    .line 28
    iget-object v1, v0, Le/a/k/f;->b:Le/a/q2/a;

    invoke-virtual {v6}, Le/a/l5/a/p$b;->a()Le/a/l5/a/p;

    move-result-object v2

    const-string v3, "event.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public f(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/m/a/c/j1/f;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "downloadEntry"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "analyticsContext"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p1 .. p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/j1/f;

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 3
    :cond_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Le/m/a/c/j1/f;

    .line 6
    iget v7, v6, Le/m/a/c/j1/f;->b:I

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_0

    .line 7
    iget-object v5, v4, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/offline/DownloadRequest;->c:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "downloadFirst.request.uri.toString()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v7, v4, Le/m/a/c/j1/f;->e:J

    .line 9
    iget-wide v10, v4, Le/m/a/c/j1/f;->c:J

    .line 10
    iget-wide v12, v6, Le/m/a/c/j1/f;->d:J

    .line 11
    iget v4, v6, Le/m/a/c/j1/f;->g:I

    .line 12
    iget-object v6, v6, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    iget v6, v6, Le/m/a/c/j1/i;->b:F

    .line 13
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {}, Le/a/l5/a/p;->a()Le/a/l5/a/p$b;

    move-result-object v14

    .line 15
    invoke-static {}, Le/a/l5/a/l4;->a()Le/a/l5/a/l4$b;

    move-result-object v15

    invoke-virtual {v15, v5}, Le/a/l5/a/l4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-virtual {v0, v5}, Le/a/k/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Le/a/l5/a/l4$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l4$b;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 16
    invoke-virtual {v15}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v15, v7, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-object v5, v15, Le/a/l5/a/l4$b;->b:Ljava/lang/Long;

    .line 18
    invoke-virtual {v15}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v9, v5, v9

    .line 19
    invoke-virtual {v15}, Le/a/l5/a/l4$b;->a()Le/a/l5/a/l4;

    move-result-object v5

    invoke-virtual {v14, v5}, Le/a/l5/a/p$b;->i(Le/a/l5/a/l4;)Le/a/l5/a/p$b;

    .line 20
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v5}, Le/a/l5/a/p$b;->d(Ljava/lang/Long;)Le/a/l5/a/p$b;

    .line 21
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 22
    invoke-virtual {v14}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v14, v7, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 23
    iput-object v5, v14, Le/a/l5/a/p$b;->f:Ljava/lang/Long;

    .line 24
    invoke-virtual {v14}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v9, v5, v8

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 26
    invoke-virtual {v14}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/16 v7, 0xa

    aget-object v5, v5, v7

    invoke-virtual {v14, v5, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 27
    iput-object v4, v14, Le/a/l5/a/p$b;->i:Ljava/lang/Integer;

    .line 28
    invoke-virtual {v14}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    aput-boolean v9, v4, v7

    .line 29
    new-instance v4, Ls1/k;

    const-string v5, "PercentageDownloaded"

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-static {v4}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v14, v4}, Le/a/l5/a/p$b;->e(Ljava/util/Map;)Le/a/l5/a/p$b;

    const-string v4, "Failed"

    .line 31
    invoke-virtual {v14, v4}, Le/a/l5/a/p$b;->h(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 32
    invoke-virtual {v14, v3}, Le/a/l5/a/p$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;

    .line 33
    invoke-static {}, Le/a/l5/a/j3;->a()Le/a/l5/a/j3$b;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {v0, v2}, Le/a/k/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Le/a/l5/a/j3$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    if-eqz v2, :cond_3

    .line 35
    invoke-virtual {v0, v2}, Le/a/k/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    invoke-virtual {v3, v2}, Le/a/l5/a/j3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    const-string v2, ""

    .line 36
    invoke-virtual {v3, v2}, Le/a/l5/a/j3$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 37
    invoke-virtual {v3}, Le/a/l5/a/j3$b;->a()Le/a/l5/a/j3;

    move-result-object v2

    invoke-virtual {v14, v2}, Le/a/l5/a/p$b;->b(Le/a/l5/a/j3;)Le/a/l5/a/p$b;

    if-lez p4, :cond_5

    .line 38
    sget-object v2, Le/a/l5/a/c4;->c:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/c4$b;

    invoke-direct {v2, v4}, Le/a/l5/a/c4$b;-><init>(Le/a/l5/a/c4$a;)V

    .line 39
    iget v3, v2, Le/a/l5/a/c4$b;->a:I

    .line 40
    invoke-virtual {v2, v3}, Le/a/l5/a/c4$b;->b(I)Le/a/l5/a/c4$b;

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 43
    check-cast v5, Le/m/a/c/j1/f;

    .line 44
    sget-object v6, Le/a/l5/a/d4;->e:Lorg/apache/avro/Schema;

    new-instance v6, Le/a/l5/a/d4$b;

    invoke-direct {v6, v4}, Le/a/l5/a/d4$b;-><init>(Le/a/l5/a/d4$a;)V

    .line 45
    iget-wide v7, v5, Le/m/a/c/j1/f;->c:J

    invoke-virtual {v6, v7, v8}, Le/a/l5/a/d4$b;->c(J)Le/a/l5/a/d4$b;

    .line 46
    iget-wide v7, v5, Le/m/a/c/j1/f;->d:J

    invoke-virtual {v6, v7, v8}, Le/a/l5/a/d4$b;->b(J)Le/a/l5/a/d4$b;

    .line 47
    invoke-virtual {v6}, Le/a/l5/a/d4$b;->a()Le/a/l5/a/d4;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v2, v1, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 49
    iput-object v3, v2, Le/a/l5/a/c4$b;->b:Ljava/util/List;

    .line 50
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v9, v1, v9

    .line 51
    invoke-virtual {v2}, Le/a/l5/a/c4$b;->a()Le/a/l5/a/c4;

    move-result-object v1

    invoke-virtual {v14, v1}, Le/a/l5/a/p$b;->g(Le/a/l5/a/c4;)Le/a/l5/a/p$b;

    .line 52
    :cond_5
    iget-object v1, v0, Le/a/k/f;->b:Le/a/q2/a;

    invoke-virtual {v14}, Le/a/l5/a/p$b;->a()Le/a/l5/a/p;

    move-result-object v2

    const-string v3, "event.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    .line 53
    :cond_6
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "List contains no element matching the predicate."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2b

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2}, Ls1/f0/v;->W(Ljava/lang/CharSequence;CZI)Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p1, v2}, Ls1/f0/w;->n0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-static {p1, v1}, Ls1/f0/w;->o0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(this)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "Uri.parse(this).lastPathSegment ?: \"\""

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
