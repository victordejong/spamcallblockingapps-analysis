.class public Lw3/b/a/i0/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/i0/l;
.implements Lw3/b/a/i0/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Lw3/b/a/d;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lw3/b/a/d;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lw3/b/a/i0/c$i;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lw3/b/a/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    .line 3
    iput-boolean p2, p0, Lw3/b/a/i0/c$i;->b:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/c$i;->e()I

    move-result v0

    return v0
.end method

.method public c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, v1, Lw3/b/a/i0/e;->c:Ljava/util/Locale;

    .line 2
    sget-object v5, Lw3/b/a/i0/c$i;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_0

    .line 3
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    sget-object v6, Lw3/b/a/i0/c$i;->c:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v6, v0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    if-nez v6, :cond_6

    .line 6
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v9, 0x20

    invoke-direct {v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 7
    new-instance v10, Lw3/b/a/s;

    const-wide/16 v11, 0x0

    sget-object v13, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-direct {v10, v11, v12, v13}, Lw3/b/a/s;-><init>(JLw3/b/a/g;)V

    .line 8
    iget-object v11, v0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    if-eqz v11, :cond_5

    .line 9
    iget-object v12, v10, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 10
    invoke-virtual {v11, v12}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object v12

    .line 11
    invoke-virtual {v12}, Lw3/b/a/c;->y()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 12
    new-instance v11, Lw3/b/a/s$a;

    invoke-direct {v11, v10, v12}, Lw3/b/a/s$a;-><init>(Lw3/b/a/s;Lw3/b/a/c;)V

    .line 13
    iget-object v10, v11, Lw3/b/a/s$a;->b:Lw3/b/a/c;

    .line 14
    invoke-virtual {v10}, Lw3/b/a/c;->s()I

    move-result v10

    .line 15
    iget-object v12, v11, Lw3/b/a/s$a;->b:Lw3/b/a/c;

    .line 16
    invoke-virtual {v12}, Lw3/b/a/c;->o()I

    move-result v12

    sub-int v13, v12, v10

    if-le v13, v9, :cond_1

    not-int v1, v2

    return v1

    .line 17
    :cond_1
    iget-object v9, v11, Lw3/b/a/s$a;->b:Lw3/b/a/c;

    .line 18
    invoke-virtual {v9, v4}, Lw3/b/a/c;->n(Ljava/util/Locale;)I

    move-result v9

    :goto_0
    if-gt v10, v12, :cond_2

    .line 19
    iget-object v13, v11, Lw3/b/a/s$a;->a:Lw3/b/a/s;

    .line 20
    iget-object v14, v11, Lw3/b/a/s$a;->b:Lw3/b/a/c;

    .line 21
    iget-wide v7, v13, Lw3/b/a/e0/e;->a:J

    .line 22
    invoke-virtual {v14, v7, v8, v10}, Lw3/b/a/c;->C(JI)J

    move-result-wide v7

    .line 23
    iput-wide v7, v13, Lw3/b/a/e0/e;->a:J

    .line 24
    invoke-virtual {v11, v4}, Lw3/b/a/h0/a;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v11, v4}, Lw3/b/a/h0/a;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v11, v4}, Lw3/b/a/h0/a;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v11, v4}, Lw3/b/a/h0/a;->d(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v11, v4}, Lw3/b/a/h0/a;->d(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v11, v4}, Lw3/b/a/h0/a;->d(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "en"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    sget-object v8, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v8, Lw3/b/a/d;->b:Lw3/b/a/d;

    if-ne v7, v8, :cond_3

    const-string v7, "BCE"

    .line 31
    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "bce"

    .line 32
    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "CE"

    .line 33
    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ce"

    .line 34
    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x3

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    .line 35
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v3, v8

    .line 36
    iget-object v7, v0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 37
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The DateTimeFieldType must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v3, 0x0

    .line 39
    aget-object v5, v6, v3

    move-object v3, v5

    check-cast v3, Ljava/util/Map;

    const/4 v5, 0x1

    .line 40
    aget-object v5, v6, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v6, v3

    .line 41
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int v5, v2, v9

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    if-le v3, v2, :cond_8

    move-object/from16 v5, p2

    .line 42
    invoke-interface {v5, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 44
    iget-object v2, v0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lw3/b/a/i0/e;->c()Lw3/b/a/i0/e$a;

    move-result-object v5

    iget-object v1, v1, Lw3/b/a/i0/e;->a:Lw3/b/a/a;

    invoke-virtual {v2, v1}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object v1

    .line 46
    iput-object v1, v5, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    const/4 v8, 0x0

    .line 47
    iput v8, v5, Lw3/b/a/i0/e$a;->b:I

    .line 48
    iput-object v7, v5, Lw3/b/a/i0/e$a;->c:Ljava/lang/String;

    .line 49
    iput-object v4, v5, Lw3/b/a/i0/e$a;->d:Ljava/util/Locale;

    return v3

    :cond_7
    const/4 v8, 0x0

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_8
    not-int v1, v2

    return v1
.end method

.method public d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    invoke-interface {p2, v0}, Lw3/b/a/b0;->G0(Lw3/b/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    invoke-interface {p2}, Lw3/b/a/b0;->l()Lw3/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lw3/b/a/i0/c$i;->b:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p2, p3}, Lw3/b/a/c;->f(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p2, p3}, Lw3/b/a/c;->i(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "\ufffd"

    .line 6
    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const p2, 0xfffd

    .line 7
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw3/b/a/i0/c$i;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/Appendable;JLw3/b/a/a;ILw3/b/a/g;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p5, p0, Lw3/b/a/i0/c$i;->a:Lw3/b/a/d;

    invoke-virtual {p5, p4}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p4

    .line 2
    iget-boolean p5, p0, Lw3/b/a/i0/c$i;->b:Z

    if-eqz p5, :cond_0

    .line 3
    invoke-virtual {p4, p2, p3, p7}, Lw3/b/a/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p4, p2, p3, p7}, Lw3/b/a/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const p2, 0xfffd

    .line 6
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method
