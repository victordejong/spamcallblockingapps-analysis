.class Lorg/joda/time/b0/p$c;
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
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I

.field private final f:[Lorg/joda/time/b0/p$c;

.field private final g:Lorg/joda/time/b0/p$f;

.field private final h:Lorg/joda/time/b0/p$f;


# direct methods
.method constructor <init>(IIIZI[Lorg/joda/time/b0/p$c;Lorg/joda/time/b0/p$f;Lorg/joda/time/b0/p$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/joda/time/b0/p$c;->a:I

    .line 3
    iput p2, p0, Lorg/joda/time/b0/p$c;->b:I

    .line 4
    iput p3, p0, Lorg/joda/time/b0/p$c;->c:I

    .line 5
    iput-boolean p4, p0, Lorg/joda/time/b0/p$c;->d:Z

    .line 6
    iput p5, p0, Lorg/joda/time/b0/p$c;->e:I

    .line 7
    iput-object p6, p0, Lorg/joda/time/b0/p$c;->f:[Lorg/joda/time/b0/p$c;

    .line 8
    iput-object p7, p0, Lorg/joda/time/b0/p$c;->g:Lorg/joda/time/b0/p$f;

    .line 9
    iput-object p8, p0, Lorg/joda/time/b0/p$c;->h:Lorg/joda/time/b0/p$f;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/b0/p$c;Lorg/joda/time/b0/p$f;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p1, Lorg/joda/time/b0/p$c;->a:I

    iput v0, p0, Lorg/joda/time/b0/p$c;->a:I

    .line 12
    iget v0, p1, Lorg/joda/time/b0/p$c;->b:I

    iput v0, p0, Lorg/joda/time/b0/p$c;->b:I

    .line 13
    iget v0, p1, Lorg/joda/time/b0/p$c;->c:I

    iput v0, p0, Lorg/joda/time/b0/p$c;->c:I

    .line 14
    iget-boolean v0, p1, Lorg/joda/time/b0/p$c;->d:Z

    iput-boolean v0, p0, Lorg/joda/time/b0/p$c;->d:Z

    .line 15
    iget v0, p1, Lorg/joda/time/b0/p$c;->e:I

    iput v0, p0, Lorg/joda/time/b0/p$c;->e:I

    .line 16
    iget-object v0, p1, Lorg/joda/time/b0/p$c;->f:[Lorg/joda/time/b0/p$c;

    iput-object v0, p0, Lorg/joda/time/b0/p$c;->f:[Lorg/joda/time/b0/p$c;

    .line 17
    iget-object v0, p1, Lorg/joda/time/b0/p$c;->g:Lorg/joda/time/b0/p$f;

    iput-object v0, p0, Lorg/joda/time/b0/p$c;->g:Lorg/joda/time/b0/p$f;

    .line 18
    iget-object p1, p1, Lorg/joda/time/b0/p$c;->h:Lorg/joda/time/b0/p$f;

    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lorg/joda/time/b0/p$b;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/b0/p$b;-><init>(Lorg/joda/time/b0/p$f;Lorg/joda/time/b0/p$f;)V

    move-object p2, v0

    .line 20
    :cond_0
    iput-object p2, p0, Lorg/joda/time/b0/p$c;->h:Lorg/joda/time/b0/p$f;

    return-void
.end method


# virtual methods
.method public a([Lorg/joda/time/b0/p$c;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    iget-object v5, v4, Lorg/joda/time/b0/p$c;->g:Lorg/joda/time/b0/p$f;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v4, v4, Lorg/joda/time/b0/p$c;->h:Lorg/joda/time/b0/p$f;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lorg/joda/time/b0/p$c;->g:Lorg/joda/time/b0/p$f;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1, v0}, Lorg/joda/time/b0/p$f;->b(Ljava/util/Set;)V

    .line 9
    :cond_2
    iget-object p1, p0, Lorg/joda/time/b0/p$c;->h:Lorg/joda/time/b0/p$f;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1, v1}, Lorg/joda/time/b0/p$f;->b(Ljava/util/Set;)V

    :cond_3
    return-void
.end method

.method b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/b0/p$c;->e:I

    return v0
.end method
