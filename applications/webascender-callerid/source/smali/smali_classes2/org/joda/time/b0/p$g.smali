.class Lorg/joda/time/b0/p$g;
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
    name = "g"
.end annotation


# instance fields
.field private final a:Lorg/joda/time/b0/r;

.field private volatile b:Lorg/joda/time/b0/r;

.field private final c:Lorg/joda/time/b0/q;

.field private volatile d:Lorg/joda/time/b0/q;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/b0/r;Lorg/joda/time/b0/q;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    array-length p6, p3

    if-nez p6, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p6, Ljava/util/TreeSet;

    sget-object p7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p6, p7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 4
    invoke-virtual {p6, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p6, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    .line 6
    array-length p1, p3

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    .line 7
    aget-object p2, p3, p1

    invoke-virtual {p6, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 11
    :cond_3
    :goto_1
    iput-object p4, p0, Lorg/joda/time/b0/p$g;->a:Lorg/joda/time/b0/r;

    .line 12
    iput-object p5, p0, Lorg/joda/time/b0/p$g;->c:Lorg/joda/time/b0/q;

    return-void
.end method

.method static synthetic a(Lorg/joda/time/b0/p$g;)Lorg/joda/time/b0/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/b0/p$g;->d:Lorg/joda/time/b0/q;

    return-object p0
.end method

.method static synthetic b(Lorg/joda/time/b0/p$g;)Lorg/joda/time/b0/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/b0/p$g;->b:Lorg/joda/time/b0/r;

    return-object p0
.end method


# virtual methods
.method c(Lorg/joda/time/b0/r;Lorg/joda/time/b0/q;)Lorg/joda/time/b0/p$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/b0/p$g;->b:Lorg/joda/time/b0/r;

    .line 2
    iput-object p2, p0, Lorg/joda/time/b0/p$g;->d:Lorg/joda/time/b0/q;

    return-object p0
.end method
