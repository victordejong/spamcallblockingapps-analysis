.class public final Lu/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/g$c;,
        Lu/g$a;,
        Lu/g$b;
    }
.end annotation


# static fields
.field static final r:Ljava/nio/charset/Charset;

.field static final s:Lu/f;

.field static final t:Ljava/lang/String;


# instance fields
.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Lu/g$b;

.field final j:Ljava/lang/String;

.field final k:J

.field final l:J

.field final m:Lu/f;

.field final n:Lu/f;

.field final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/a;",
            ">;"
        }
    .end annotation
.end field

.field final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lu/g;->r:Ljava/nio/charset/Charset;

    .line 2
    invoke-static {}, Lu/f;->j()Lu/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lu/f$a;->a()Lu/f;

    move-result-object v0

    sput-object v0, Lu/g;->s:Lu/f;

    const/16 v0, 0x20

    new-array v0, v0, [C

    const/16 v1, 0x30

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sput-object v1, Lu/g;->t:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lu/g$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lu/g$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/g;->f:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lu/g$a;->c:Ljava/lang/String;

    iget-object v1, p1, Lu/g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lu/g$a;->b:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lu/g;->g:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lu/g$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/g;->h:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lu/g$a;->d:Lu/g$b;

    iput-object v0, p0, Lu/g;->i:Lu/g$b;

    .line 6
    iget-object v0, p1, Lu/g$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lu/g;->j:Ljava/lang/String;

    .line 7
    iget-wide v0, p1, Lu/g$a;->f:J

    iput-wide v0, p0, Lu/g;->k:J

    .line 8
    iget-wide v0, p1, Lu/g$a;->g:J

    iput-wide v0, p0, Lu/g;->l:J

    .line 9
    iget-object v0, p1, Lu/g$a;->h:Lu/f;

    iput-object v0, p0, Lu/g;->m:Lu/f;

    .line 10
    iget-object v0, p1, Lu/g$a;->i:Lu/f;

    iput-object v0, p0, Lu/g;->n:Lu/f;

    .line 11
    iget-object v0, p1, Lu/g$a;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Lu/g;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu/g;->o:Ljava/util/List;

    .line 12
    iget-object v0, p1, Lu/g$a;->k:Ljava/util/TreeMap;

    if-nez v0, :cond_1

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lu/g$a;->k:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v0, p0, Lu/g;->p:Ljava/util/Map;

    .line 15
    iget p1, p1, Lu/g$a;->l:I

    iput p1, p0, Lu/g;->q:I

    return-void
.end method

.method public static h()Lu/g$a;
    .locals 1

    .line 1
    new-instance v0, Lu/g$a;

    invoke-direct {v0}, Lu/g$a;-><init>()V

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "traceId == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x20

    if-gt v0, v1, :cond_6

    .line 3
    invoke-static {p0}, Lu/g;->s(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_5

    const/16 v3, 0xf

    if-eq v0, v3, :cond_4

    const/16 v3, 0x10

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ge v0, v3, :cond_1

    .line 4
    invoke-static {p0, v3}, Lu/g;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0, v1}, Lu/g;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    if-ne v0, v1, :cond_3

    if-lt v2, v3, :cond_3

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    .line 7
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "WTF"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "traceId is all zeros"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "traceId.length > 32"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "traceId is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static j(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p1, v0

    .line 2
    invoke-static {}, Lu/i/i;->a()[C

    move-result-object v2

    .line 3
    sget-object v3, Lu/g;->t:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 4
    invoke-virtual {p0, v4, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method static n(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 6
    aget-object v3, p0, v0

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 7
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 10
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static q(J)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lu/i/i;->a()[C

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, p0, p1}, Lu/g;->u([CIJ)V

    .line 3
    new-instance p0, Ljava/lang/String;

    const/16 p1, 0x10

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method static s(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v2, :cond_1

    const/16 v7, 0x39

    if-le v6, v7, :cond_2

    :cond_1
    const/16 v7, 0x61

    if-lt v6, v7, :cond_5

    const/16 v7, 0x66

    if-gt v6, v7, :cond_5

    :cond_2
    if-eq v6, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " should be lower-hex encoded with no prefix"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return v5
.end method

.method static t([CIB)V
    .locals 3

    add-int/lit8 v0, p1, 0x0

    .line 1
    sget-object v1, Lu/i/a;->a:[C

    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    aput-char v2, p0, v0

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 p2, p2, 0xf

    .line 2
    aget-char p2, v1, p2

    aput-char p2, p0, p1

    return-void
.end method

.method static u([CIJ)V
    .locals 5

    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 1
    invoke-static {p0, v0, v1}, Lu/g;->t([CIB)V

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 2
    invoke-static {p0, v0, v1}, Lu/g;->t([CIB)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 3
    invoke-static {p0, v0, v1}, Lu/g;->t([CIB)V

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 4
    invoke-static {p0, v0, v1}, Lu/g;->t([CIB)V

    add-int/lit8 v0, p1, 0x8

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 5
    invoke-static {p0, v0, v1}, Lu/g;->t([CIB)V

    add-int/lit8 v0, p1, 0xa

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 6
    invoke-static {p0, v0, v1}, Lu/g;->t([CIB)V

    add-int/lit8 v0, p1, 0xc

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 7
    invoke-static {p0, v0, v1}, Lu/g;->t([CIB)V

    add-int/lit8 p1, p1, 0xe

    and-long/2addr p2, v3

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 8
    invoke-static {p0, p1, p2}, Lu/g;->t([CIB)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/g;->o:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget v0, p0, Lu/g;->q:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/g;->l:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lu/g$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g;->i:Lu/g$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lu/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lu/g;

    .line 3
    iget-object v1, p0, Lu/g;->f:Ljava/lang/String;

    iget-object v3, p1, Lu/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lu/g;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lu/g;->g:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lu/g;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lu/g;->h:Ljava/lang/String;

    iget-object v3, p1, Lu/g;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lu/g;->i:Lu/g$b;

    if-nez v1, :cond_3

    iget-object v1, p1, Lu/g;->i:Lu/g$b;

    if-nez v1, :cond_7

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lu/g;->i:Lu/g$b;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lu/g;->j:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lu/g;->j:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lu/g;->j:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-wide v3, p0, Lu/g;->k:J

    iget-wide v5, p1, Lu/g;->k:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-wide v3, p0, Lu/g;->l:J

    iget-wide v5, p1, Lu/g;->l:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v1, p0, Lu/g;->m:Lu/f;

    if-nez v1, :cond_5

    iget-object v1, p1, Lu/g;->m:Lu/f;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_5
    iget-object v3, p1, Lu/g;->m:Lu/f;

    .line 8
    invoke-virtual {v1, v3}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lu/g;->n:Lu/f;

    if-nez v1, :cond_6

    iget-object v1, p1, Lu/g;->n:Lu/f;

    if-nez v1, :cond_7

    goto :goto_4

    :cond_6
    iget-object v3, p1, Lu/g;->n:Lu/f;

    .line 9
    invoke-virtual {v1, v3}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lu/g;->o:Ljava/util/List;

    iget-object v3, p1, Lu/g;->o:Ljava/util/List;

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lu/g;->p:Ljava/util/Map;

    iget-object v3, p1, Lu/g;->p:Ljava/util/Map;

    .line 11
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lu/g;->q:I

    iget p1, p1, Lu/g;->q:I

    if-ne v1, p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public f()Lu/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g;->m:Lu/f;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    iget-object v0, p0, Lu/g;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lu/g;->g:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Lu/g;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Lu/g;->i:Lu/g$b;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Lu/g;->j:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    int-to-long v4, v0

    .line 6
    iget-wide v6, p0, Lu/g;->k:J

    const/16 v2, 0x20

    ushr-long v8, v6, v2

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v5, v4

    xor-int/2addr v0, v5

    mul-int v0, v0, v1

    int-to-long v4, v0

    .line 7
    iget-wide v6, p0, Lu/g;->l:J

    ushr-long v8, v6, v2

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 8
    iget-object v2, p0, Lu/g;->m:Lu/f;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lu/f;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 9
    iget-object v2, p0, Lu/g;->n:Lu/f;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lu/f;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 10
    iget-object v2, p0, Lu/g;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 11
    iget-object v2, p0, Lu/g;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 12
    iget v1, p0, Lu/g;->q:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lu/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g;->n:Lu/f;

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget v0, p0, Lu/g;->q:I

    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/g;->p:Ljava/util/Map;

    return-object v0
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/g;->k:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lu/h/d;->JSON_V2:Lu/h/d;

    invoke-virtual {v1, p0}, Lu/h/d;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    sget-object v2, Lu/g;->r:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Lu/g$c;

    sget-object v1, Lu/h/d;->PROTO3:Lu/h/d;

    invoke-virtual {v1, p0}, Lu/h/d;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lu/g$c;-><init>([B)V

    return-object v0
.end method
