.class public final Lu/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/j/c$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final k:Lu/f;


# instance fields
.field final a:J

.field final b:J

.field final c:J

.field final d:Ljava/lang/String;

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/j/a;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/j/b;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lu/f;->j()Lu/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lu/f$a;->a()Lu/f;

    move-result-object v0

    sput-object v0, Lu/j/c;->k:Lu/f;

    return-void
.end method

.method constructor <init>(Lu/j/c$a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lu/j/c$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget-wide v4, p1, Lu/j/c$a;->d:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 4
    iput-wide v0, p0, Lu/j/c;->b:J

    .line 5
    iget-wide v0, p1, Lu/j/c$a;->a:J

    iput-wide v0, p0, Lu/j/c;->a:J

    .line 6
    iget-object v0, p1, Lu/j/c$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lu/j/c;->d:Ljava/lang/String;

    .line 7
    iput-wide v4, p0, Lu/j/c;->c:J

    .line 8
    iget-wide v0, p1, Lu/j/c$a;->c:J

    iput-wide v0, p0, Lu/j/c;->e:J

    .line 9
    iget-wide v0, p1, Lu/j/c$a;->f:J

    iput-wide v0, p0, Lu/j/c;->f:J

    .line 10
    iget-wide v0, p1, Lu/j/c$a;->g:J

    iput-wide v0, p0, Lu/j/c;->g:J

    .line 11
    iget-object v0, p1, Lu/j/c$a;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Lu/j/c;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu/j/c;->h:Ljava/util/List;

    .line 12
    iget-object v0, p1, Lu/j/c$a;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lu/j/c;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu/j/c;->i:Ljava/util/List;

    .line 13
    iget-object p1, p1, Lu/j/c$a;->j:Ljava/lang/Boolean;

    iput-object p1, p0, Lu/j/c;->j:Ljava/lang/Boolean;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "traceId == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g()Lu/j/c$a;
    .locals 1

    .line 1
    new-instance v0, Lu/j/c$a;

    invoke-direct {v0}, Lu/j/c$a;-><init>()V

    return-object v0
.end method

.method static i(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/j/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/j/c;->h:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/j/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/j/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j/c;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/j/c;->g:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/j/c;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lu/j/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lu/j/c;

    .line 3
    iget-wide v3, p0, Lu/j/c;->a:J

    iget-wide v5, p1, Lu/j/c;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lu/j/c;->b:J

    iget-wide v5, p1, Lu/j/c;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lu/j/c;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lu/j/c;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lu/j/c;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-wide v3, p0, Lu/j/c;->c:J

    iget-wide v5, p1, Lu/j/c;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lu/j/c;->e:J

    iget-wide v5, p1, Lu/j/c;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lu/j/c;->f:J

    iget-wide v5, p1, Lu/j/c;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lu/j/c;->g:J

    iget-wide v5, p1, Lu/j/c;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lu/j/c;->h:Ljava/util/List;

    iget-object v3, p1, Lu/j/c;->h:Ljava/util/List;

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lu/j/c;->i:Ljava/util/List;

    iget-object v3, p1, Lu/j/c;->i:Ljava/util/List;

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lu/j/c;->j:Ljava/lang/Boolean;

    iget-object p1, p1, Lu/j/c;->j:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    if-nez p1, :cond_4

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/j/c;->e:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 12

    const v0, 0xf4243

    int-to-long v1, v0

    .line 1
    iget-wide v3, p0, Lu/j/c;->a:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int v1, v0, v2

    mul-int v1, v1, v0

    int-to-long v2, v1

    .line 2
    iget-wide v6, p0, Lu/j/c;->b:J

    ushr-long v8, v6, v5

    xor-long/2addr v6, v8

    xor-long/2addr v2, v6

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 3
    iget-object v2, p0, Lu/j/c;->d:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    int-to-long v6, v1

    .line 4
    iget-wide v8, p0, Lu/j/c;->c:J

    ushr-long v10, v8, v5

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v2, v6

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    int-to-long v6, v1

    .line 5
    iget-wide v8, p0, Lu/j/c;->e:J

    ushr-long v10, v8, v5

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v2, v6

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    int-to-long v6, v1

    .line 6
    iget-wide v8, p0, Lu/j/c;->f:J

    ushr-long v10, v8, v5

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v2, v6

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    int-to-long v6, v1

    .line 7
    iget-wide v8, p0, Lu/j/c;->g:J

    ushr-long v4, v8, v5

    xor-long/2addr v4, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 8
    iget-object v2, p0, Lu/j/c;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 9
    iget-object v2, p0, Lu/j/c;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 10
    iget-object v0, p0, Lu/j/c;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_1
    xor-int v0, v1, v3

    return v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/j/c;->f:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/j/c;->b:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/j/c;->a:J

    return-wide v0
.end method
