.class public Lw3/b/a/i0/n$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/i0/p;
.implements Lw3/b/a/i0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Lw3/b/a/i0/p;

.field public volatile g:Lw3/b/a/i0/p;

.field public final h:Lw3/b/a/i0/o;

.field public volatile i:Lw3/b/a/i0/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lw3/b/a/i0/p;Lw3/b/a/i0/o;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/n$g;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lw3/b/a/i0/n$g;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 5
    iput-object p2, p0, Lw3/b/a/i0/n$g;->c:[Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    .line 9
    array-length p1, p3

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    .line 10
    aget-object p2, p3, p1

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lw3/b/a/i0/n$g;->c:[Ljava/lang/String;

    .line 14
    :goto_1
    iput-object p4, p0, Lw3/b/a/i0/n$g;->f:Lw3/b/a/i0/p;

    .line 15
    iput-object p5, p0, Lw3/b/a/i0/n$g;->h:Lw3/b/a/i0/o;

    .line 16
    iput-boolean p6, p0, Lw3/b/a/i0/n$g;->d:Z

    .line 17
    iput-boolean p7, p0, Lw3/b/a/i0/n$g;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lw3/b/a/c0;ILjava/util/Locale;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n$g;->f:Lw3/b/a/i0/p;

    invoke-interface {v0, p1, p2, p3}, Lw3/b/a/i0/p;->a(Lw3/b/a/c0;ILjava/util/Locale;)I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 2
    iget-object v1, p0, Lw3/b/a/i0/n$g;->g:Lw3/b/a/i0/p;

    invoke-interface {v1, p1, p2, p3}, Lw3/b/a/i0/p;->a(Lw3/b/a/c0;ILjava/util/Locale;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public b(Ljava/lang/StringBuffer;Lw3/b/a/c0;Ljava/util/Locale;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n$g;->f:Lw3/b/a/i0/p;

    .line 2
    iget-object v1, p0, Lw3/b/a/i0/n$g;->g:Lw3/b/a/i0/p;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lw3/b/a/i0/p;->b(Ljava/lang/StringBuffer;Lw3/b/a/c0;Ljava/util/Locale;)V

    .line 4
    iget-boolean v2, p0, Lw3/b/a/i0/n$g;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v0, p2, v3, p3}, Lw3/b/a/i0/p;->a(Lw3/b/a/c0;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lw3/b/a/i0/n$g;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 7
    invoke-interface {v1, p2, v0, p3}, Lw3/b/a/i0/p;->a(Lw3/b/a/c0;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3

    if-le v0, v3, :cond_0

    .line 8
    iget-object v0, p0, Lw3/b/a/i0/n$g;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/b/a/i0/n$g;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lw3/b/a/i0/n$g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 10
    :cond_2
    iget-boolean v0, p0, Lw3/b/a/i0/n$g;->e:Z

    if-eqz v0, :cond_3

    invoke-interface {v1, p2, v3, p3}, Lw3/b/a/i0/p;->a(Lw3/b/a/c0;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    iget-object v0, p0, Lw3/b/a/i0/n$g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_3
    :goto_1
    invoke-interface {v1, p1, p2, p3}, Lw3/b/a/i0/p;->b(Ljava/lang/StringBuffer;Lw3/b/a/c0;Ljava/util/Locale;)V

    return-void
.end method

.method public c(Lw3/b/a/w;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v2, p3

    move-object/from16 v9, p4

    .line 1
    iget-object v3, v0, Lw3/b/a/i0/n$g;->h:Lw3/b/a/i0/o;

    invoke-interface {v3, v1, v8, v2, v9}, Lw3/b/a/i0/o;->c(Lw3/b/a/w;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v10

    if-gez v10, :cond_0

    return v10

    :cond_0
    const/4 v11, -0x1

    const/4 v12, 0x0

    if-le v10, v2, :cond_4

    .line 2
    iget-object v13, v0, Lw3/b/a/i0/n$g;->c:[Ljava/lang/String;

    .line 3
    array-length v14, v13

    move v15, v12

    :goto_0
    if-ge v15, v14, :cond_4

    .line 4
    aget-object v16, v13, v15

    if-eqz v16, :cond_2

    .line 5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p2

    move v4, v10

    move-object/from16 v5, v16

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v16, :cond_3

    move v11, v12

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    move v11, v2

    :goto_2
    add-int/2addr v10, v11

    const/4 v12, 0x1

    .line 7
    :cond_4
    iget-object v2, v0, Lw3/b/a/i0/n$g;->i:Lw3/b/a/i0/o;

    invoke-interface {v2, v1, v8, v10, v9}, Lw3/b/a/i0/o;->c(Lw3/b/a/w;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v1

    if-gez v1, :cond_5

    return v1

    :cond_5
    if-eqz v12, :cond_6

    if-ne v1, v10, :cond_6

    if-lez v11, :cond_6

    not-int v1, v10

    return v1

    :cond_6
    if-le v1, v10, :cond_7

    if-nez v12, :cond_7

    .line 8
    iget-boolean v2, v0, Lw3/b/a/i0/n$g;->d:Z

    if-nez v2, :cond_7

    not-int v1, v10

    :cond_7
    return v1
.end method

.method public d(Lw3/b/a/c0;Ljava/util/Locale;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n$g;->f:Lw3/b/a/i0/p;

    .line 2
    iget-object v1, p0, Lw3/b/a/i0/n$g;->g:Lw3/b/a/i0/p;

    .line 3
    invoke-interface {v0, p1, p2}, Lw3/b/a/i0/p;->d(Lw3/b/a/c0;Ljava/util/Locale;)I

    move-result v2

    invoke-interface {v1, p1, p2}, Lw3/b/a/i0/p;->d(Lw3/b/a/c0;Ljava/util/Locale;)I

    move-result v3

    add-int/2addr v3, v2

    .line 4
    iget-boolean v2, p0, Lw3/b/a/i0/n$g;->d:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v0, p1, v4, p2}, Lw3/b/a/i0/p;->a(Lw3/b/a/c0;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lw3/b/a/i0/n$g;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 7
    invoke-interface {v1, p1, v0, p2}, Lw3/b/a/i0/p;->a(Lw3/b/a/c0;ILjava/util/Locale;)I

    move-result p1

    if-lez p1, :cond_3

    if-le p1, v4, :cond_0

    .line 8
    iget-object p1, p0, Lw3/b/a/i0/n$g;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw3/b/a/i0/n$g;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    move v3, p1

    goto :goto_2

    .line 9
    :cond_1
    iget-object p1, p0, Lw3/b/a/i0/n$g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_1

    .line 10
    :cond_2
    iget-boolean v0, p0, Lw3/b/a/i0/n$g;->e:Z

    if-eqz v0, :cond_3

    invoke-interface {v1, p1, v4, p2}, Lw3/b/a/i0/p;->a(Lw3/b/a/c0;ILjava/util/Locale;)I

    move-result p1

    if-lez p1, :cond_3

    .line 11
    iget-object p1, p0, Lw3/b/a/i0/n$g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_1
    add-int/2addr v3, p1

    :cond_3
    :goto_2
    return v3
.end method
