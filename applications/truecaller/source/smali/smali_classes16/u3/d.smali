.class public final Lu3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/d$c;,
        Lu3/d$b;,
        Lu3/d$a;
    }
.end annotation


# instance fields
.field public final a:Lu3/p0/e/e;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 9

    const-string v0, "directory"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lu3/p0/k/b;->a:Lu3/p0/k/b;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {v2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lu3/p0/e/e;

    .line 5
    sget-object v8, Lu3/p0/f/d;->h:Lu3/p0/f/d;

    const v4, 0x31191

    const/4 v5, 0x2

    move-object v1, v0

    move-object v3, p1

    move-wide v6, p2

    .line 6
    invoke-direct/range {v1 .. v8}, Lu3/p0/e/e;-><init>(Lu3/p0/k/b;Ljava/io/File;IIJLu3/p0/f/d;)V

    iput-object v0, p0, Lu3/d;->a:Lu3/p0/e/e;

    return-void
.end method

.method public static final b(Lu3/a0;)Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lv3/i;->e:Lv3/i$a;

    .line 2
    iget-object p0, p0, Lu3/a0;->j:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Lv3/i$a;->c(Ljava/lang/String;)Lv3/i;

    move-result-object p0

    const-string v0, "MD5"

    .line 4
    invoke-virtual {p0, v0}, Lv3/i;->c(Ljava/lang/String;)Lv3/i;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lv3/i;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lu3/z;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/z;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu3/z;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    invoke-virtual {p0, v3}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vary"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0, v3}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Ljava/util/TreeSet;

    .line 5
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v7, "java.lang.String.CASE_INSENSITIVE_ORDER"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    new-array v5, v6, [C

    const/16 v6, 0x2c

    aput-char v6, v5, v1

    const/4 v6, 0x6

    .line 7
    invoke-static {v4, v5, v1, v1, v6}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 8
    invoke-static {v5}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ls1/p;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    sget-object v2, Ls1/u/u;->a:Ls1/u/u;

    :goto_3
    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/d;->a:Lu3/p0/e/e;

    invoke-virtual {v0}, Lu3/p0/e/e;->close()V

    return-void
.end method

.method public final d(Lu3/g0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/d;->a:Lu3/p0/e/e;

    .line 2
    iget-object p1, p1, Lu3/g0;->b:Lu3/a0;

    const-string v1, "url"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lv3/i;->e:Lv3/i$a;

    .line 5
    iget-object p1, p1, Lu3/a0;->j:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, p1}, Lv3/i$a;->c(Ljava/lang/String;)Lv3/i;

    move-result-object p1

    const-string v1, "MD5"

    .line 7
    invoke-virtual {p1, v1}, Lv3/i;->c(Ljava/lang/String;)Lv3/i;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lv3/i;->g()Ljava/lang/String;

    move-result-object p1

    .line 9
    monitor-enter v0

    :try_start_0
    const-string v1, "key"

    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lu3/p0/e/e;->l()V

    .line 11
    invoke-virtual {v0}, Lu3/p0/e/e;->b()V

    .line 12
    invoke-virtual {v0, p1}, Lu3/p0/e/e;->S(Ljava/lang/String;)V

    .line 13
    iget-object v1, v0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/p0/e/e$b;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "lruEntries[key] ?: return false"

    invoke-static {p1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Lu3/p0/e/e;->P(Lu3/p0/e/e$b;)Z

    .line 15
    iget-wide v2, v0, Lu3/p0/e/e;->e:J

    iget-wide v4, v0, Lu3/p0/e/e;->a:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    iput-boolean v1, v0, Lu3/p0/e/e;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 17
    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/d;->a:Lu3/p0/e/e;

    invoke-virtual {v0}, Lu3/p0/e/e;->flush()V

    return-void
.end method
