.class public final Ln/u;
.super Lkotlin/s/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/s/b<",
        "Ln/i;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final i:Ln/u$a;


# instance fields
.field private final g:[Ln/i;

.field private final h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln/u$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Ln/u;->i:Ln/u$a;

    return-void
.end method

.method private constructor <init>([Ln/i;[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlin/s/b;-><init>()V

    iput-object p1, p0, Ln/u;->g:[Ln/i;

    iput-object p2, p0, Ln/u;->h:[I

    return-void
.end method

.method public synthetic constructor <init>([Ln/i;[ILkotlin/w/c/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln/u;-><init>([Ln/i;[I)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln/u;->g:[Ln/i;

    array-length v0, v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ln/i;

    if-eqz v0, :cond_0

    check-cast p1, Ln/i;

    invoke-virtual {p0, p1}, Ln/u;->g(Ln/i;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge g(Ln/i;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/s/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln/u;->h(I)Ln/i;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Ln/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/u;->g:[Ln/i;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final i()[Ln/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/u;->g:[Ln/i;

    return-object v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ln/i;

    if-eqz v0, :cond_0

    check-cast p1, Ln/i;

    invoke-virtual {p0, p1}, Ln/u;->k(Ln/i;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final j()[I
    .locals 1

    .line 1
    iget-object v0, p0, Ln/u;->h:[I

    return-object v0
.end method

.method public bridge k(Ln/i;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/s/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ln/i;

    if-eqz v0, :cond_0

    check-cast p1, Ln/i;

    invoke-virtual {p0, p1}, Ln/u;->m(Ln/i;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge m(Ln/i;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/s/b;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
