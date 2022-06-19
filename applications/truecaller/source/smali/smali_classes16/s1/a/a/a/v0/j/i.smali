.class public Ls1/a/a/a/v0/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ls1/a/a/a/v0/b/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/j/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/j/i;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/i;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/j/i;->a:Ls1/a/a/a/v0/j/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ls1/a/a/a/v0/b/k;)I
    .locals 1

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/g;->r(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 2
    :cond_0
    instance-of v0, p0, Ls1/a/a/a/v0/b/j;

    if-eqz v0, :cond_1

    const/4 p0, 0x7

    return p0

    .line 3
    :cond_1
    instance-of v0, p0, Ls1/a/a/a/v0/b/k0;

    if-eqz v0, :cond_3

    .line 4
    check-cast p0, Ls1/a/a/a/v0/b/k0;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    .line 5
    :cond_3
    instance-of v0, p0, Ls1/a/a/a/v0/b/v;

    if-eqz v0, :cond_5

    .line 6
    check-cast p0, Ls1/a/a/a/v0/b/v;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0

    .line 7
    :cond_5
    instance-of v0, p0, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 8
    :cond_6
    instance-of p0, p0, Ls1/a/a/a/v0/b/v0;

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/k;

    check-cast p2, Ls1/a/a/a/v0/b/k;

    .line 2
    invoke-static {p2}, Ls1/a/a/a/v0/j/i;->a(Ls1/a/a/a/v0/b/k;)I

    move-result v0

    invoke-static {p1}, Ls1/a/a/a/v0/j/i;->a(Ls1/a/a/a/v0/b/k;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->r(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ls1/a/a/a/v0/j/g;->r(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p1

    invoke-interface {p2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p2

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/f/e;->a:Ljava/lang/String;

    iget-object p2, p2, Ls1/a/a/a/v0/f/e;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    return v1
.end method
