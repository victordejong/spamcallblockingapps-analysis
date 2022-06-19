.class Lorg/joda/time/b0/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/b0/r;
.implements Lorg/joda/time/b0/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:[Lorg/joda/time/b0/r;

.field private final b:[Lorg/joda/time/b0/q;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 3
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
    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/b0/p$a;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    if-gtz p1, :cond_0

    .line 6
    iput-object v2, p0, Lorg/joda/time/b0/p$a;->a:[Lorg/joda/time/b0/r;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/joda/time/b0/r;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/joda/time/b0/r;

    iput-object p1, p0, Lorg/joda/time/b0/p$a;->a:[Lorg/joda/time/b0/r;

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 9
    iput-object v2, p0, Lorg/joda/time/b0/p$a;->b:[Lorg/joda/time/b0/q;

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/joda/time/b0/q;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/joda/time/b0/q;

    iput-object p1, p0, Lorg/joda/time/b0/p$a;->b:[Lorg/joda/time/b0/q;

    :goto_1
    return-void
.end method

.method private a(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 2
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lorg/joda/time/b0/r;

    if-eqz v3, :cond_1

    .line 4
    instance-of v3, v2, Lorg/joda/time/b0/p$a;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Lorg/joda/time/b0/p$a;

    iget-object v2, v2, Lorg/joda/time/b0/p$a;->a:[Lorg/joda/time/b0/r;

    invoke-direct {p0, p2, v2}, Lorg/joda/time/b0/p$a;->a(Ljava/util/List;[Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lorg/joda/time/b0/q;

    if-eqz v3, :cond_3

    .line 9
    instance-of v3, v2, Lorg/joda/time/b0/p$a;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Lorg/joda/time/b0/p$a;

    iget-object v2, v2, Lorg/joda/time/b0/p$a;->b:[Lorg/joda/time/b0/q;

    invoke-direct {p0, p3, v2}, Lorg/joda/time/b0/p$a;->a(Ljava/util/List;[Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    return-void
.end method
