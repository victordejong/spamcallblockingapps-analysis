.class public Lw3/b/a/i0/c$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:[Lw3/b/a/i0/l;

.field public final b:[Lw3/b/a/i0/j;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 6
    instance-of v6, v5, Lw3/b/a/i0/c$b;

    if-eqz v6, :cond_0

    .line 7
    check-cast v5, Lw3/b/a/i0/c$b;

    iget-object v5, v5, Lw3/b/a/i0/c$b;->a:[Lw3/b/a/i0/l;

    if-eqz v5, :cond_1

    move v6, v3

    .line 8
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 9
    aget-object v7, v5, v6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 11
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 12
    instance-of v6, v5, Lw3/b/a/i0/c$b;

    if-eqz v6, :cond_2

    .line 13
    check-cast v5, Lw3/b/a/i0/c$b;

    iget-object v5, v5, Lw3/b/a/i0/c$b;->b:[Lw3/b/a/i0/j;

    if-eqz v5, :cond_3

    move v6, v3

    .line 14
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_3

    .line 15
    aget-object v7, v5, v6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    .line 18
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 19
    new-array v4, v2, [Lw3/b/a/i0/l;

    iput-object v4, p0, Lw3/b/a/i0/c$b;->a:[Lw3/b/a/i0/l;

    move v4, v3

    move v5, v4

    :goto_3
    if-ge v4, v2, :cond_6

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw3/b/a/i0/l;

    .line 21
    invoke-interface {v6}, Lw3/b/a/i0/l;->e()I

    move-result v7

    add-int/2addr v5, v7

    .line 22
    iget-object v7, p0, Lw3/b/a/i0/c$b;->a:[Lw3/b/a/i0/l;

    aput-object v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 23
    :cond_6
    iput v5, p0, Lw3/b/a/i0/c$b;->c:I

    goto :goto_5

    .line 24
    :cond_7
    :goto_4
    iput-object p1, p0, Lw3/b/a/i0/c$b;->a:[Lw3/b/a/i0/l;

    .line 25
    iput v3, p0, Lw3/b/a/i0/c$b;->c:I

    .line 26
    :goto_5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    .line 27
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 28
    new-array v0, p1, [Lw3/b/a/i0/j;

    iput-object v0, p0, Lw3/b/a/i0/c$b;->b:[Lw3/b/a/i0/j;

    move v0, v3

    :goto_6
    if-ge v3, p1, :cond_9

    .line 29
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/b/a/i0/j;

    .line 30
    invoke-interface {v2}, Lw3/b/a/i0/j;->a()I

    move-result v4

    add-int/2addr v0, v4

    .line 31
    iget-object v4, p0, Lw3/b/a/i0/c$b;->b:[Lw3/b/a/i0/j;

    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 32
    :cond_9
    iput v0, p0, Lw3/b/a/i0/c$b;->d:I

    goto :goto_8

    .line 33
    :cond_a
    :goto_7
    iput-object p1, p0, Lw3/b/a/i0/c$b;->b:[Lw3/b/a/i0/j;

    .line 34
    iput v3, p0, Lw3/b/a/i0/c$b;->d:I

    :goto_8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/i0/c$b;->d:I

    return v0
.end method

.method public c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/c$b;->b:[Lw3/b/a/i0/j;

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    if-ltz p3, :cond_0

    .line 3
    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3}, Lw3/b/a/i0/j;->c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return p3

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/c$b;->a:[Lw3/b/a/i0/l;

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 3
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3}, Lw3/b/a/i0/l;->d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/i0/c$b;->c:I

    return v0
.end method

.method public f(Ljava/lang/Appendable;JLw3/b/a/a;ILw3/b/a/g;Ljava/util/Locale;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lw3/b/a/i0/c$b;->a:[Lw3/b/a/i0/l;

    if-eqz v1, :cond_2

    if-nez p7, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p7

    .line 3
    :goto_0
    array-length v11, v1

    const/4 v3, 0x0

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_1

    .line 4
    aget-object v3, v1, v12

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, v2

    invoke-interface/range {v3 .. v10}, Lw3/b/a/i0/l;->f(Ljava/lang/Appendable;JLw3/b/a/a;ILw3/b/a/g;Ljava/util/Locale;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
