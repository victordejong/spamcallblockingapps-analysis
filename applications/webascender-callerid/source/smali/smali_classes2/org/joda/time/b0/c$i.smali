.class Lorg/joda/time/b0/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/b0/n;
.implements Lorg/joda/time/b0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# static fields
.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Lorg/joda/time/d;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Lorg/joda/time/d;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/b0/c$i;->h:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    .line 3
    iput-boolean p2, p0, Lorg/joda/time/b0/c$i;->g:Z

    return-void
.end method

.method private a(JLorg/joda/time/a;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    invoke-virtual {v0, p3}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object p3

    .line 2
    iget-boolean v0, p0, Lorg/joda/time/b0/c$i;->g:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    invoke-interface {p1, v0}, Lorg/joda/time/t;->N(Lorg/joda/time/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    invoke-interface {p1}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lorg/joda/time/b0/c$i;->g:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->f(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->i(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "\ufffd"

    return-object p1
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/b0/c$i;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/b0/c$i;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public parseInto(Lorg/joda/time/b0/e;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/b0/e;->o()Ljava/util/Locale;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/joda/time/b0/c$i;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    sget-object v2, Lorg/joda/time/b0/c$i;->h:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v2, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 6
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v5, 0x20

    invoke-direct {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 7
    new-instance v6, Lorg/joda/time/n;

    const-wide/16 v7, 0x0

    sget-object v9, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-direct {v6, v7, v8, v9}, Lorg/joda/time/n;-><init>(JLorg/joda/time/f;)V

    .line 8
    iget-object v7, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    invoke-virtual {v6, v7}, Lorg/joda/time/n;->w(Lorg/joda/time/d;)Lorg/joda/time/n$a;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lorg/joda/time/a0/a;->k()I

    move-result v7

    .line 10
    invoke-virtual {v6}, Lorg/joda/time/a0/a;->i()I

    move-result v8

    sub-int v9, v8, v7

    if-le v9, v5, :cond_1

    not-int p1, p3

    return p1

    .line 11
    :cond_1
    invoke-virtual {v6, v0}, Lorg/joda/time/a0/a;->h(Ljava/util/Locale;)I

    move-result v5

    :goto_0
    if-gt v7, v8, :cond_2

    .line 12
    invoke-virtual {v6, v7}, Lorg/joda/time/n$a;->m(I)Lorg/joda/time/n;

    .line 13
    invoke-virtual {v6, v0}, Lorg/joda/time/a0/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v6, v0}, Lorg/joda/time/a0/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v6, v0}, Lorg/joda/time/a0/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v6, v0}, Lorg/joda/time/a0/a;->d(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v6, v0}, Lorg/joda/time/a0/a;->d(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v6, v0}, Lorg/joda/time/a0/a;->d(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "en"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    invoke-static {}, Lorg/joda/time/d;->D()Lorg/joda/time/d;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 20
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "BCE"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "bce"

    .line 21
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CE"

    .line 22
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ce"

    .line 23
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    .line 25
    iget-object v3, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 26
    :cond_4
    aget-object v1, v2, v3

    check-cast v1, Ljava/util/Map;

    .line 27
    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v2, v1

    .line 28
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v5, p3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    if-le v1, p3, :cond_6

    .line 29
    invoke-interface {p2, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 31
    iget-object p2, p0, Lorg/joda/time/b0/c$i;->f:Lorg/joda/time/d;

    invoke-virtual {p1, p2, v3, v0}, Lorg/joda/time/b0/e;->w(Lorg/joda/time/d;Ljava/lang/String;Ljava/util/Locale;)V

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    not-int p1, p3

    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/a;ILorg/joda/time/f;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/joda/time/b0/c$i;->a(JLorg/joda/time/a;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0xfffd

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/t;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/joda/time/b0/c$i;->b(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0xfffd

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method
