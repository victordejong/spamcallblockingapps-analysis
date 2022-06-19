.class public final Lv3/r;
.super Ls1/u/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/u/c<",
        "Lv3/i;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final c:Lv3/r$a;


# instance fields
.field public final a:[Lv3/i;

.field public final b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv3/r$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lv3/r;->c:Lv3/r$a;

    return-void
.end method

.method public constructor <init>([Lv3/i;[ILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/u/c;-><init>()V

    iput-object p1, p0, Lv3/r;->a:[Lv3/i;

    iput-object p2, p0, Lv3/r;->b:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/r;->a:[Lv3/i;

    array-length v0, v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lv3/i;

    if-eqz v0, :cond_0

    check-cast p1, Lv3/i;

    .line 2
    invoke-super {p0, p1}, Ls1/u/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/r;->a:[Lv3/i;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lv3/i;

    if-eqz v0, :cond_0

    check-cast p1, Lv3/i;

    .line 2
    invoke-super {p0, p1}, Ls1/u/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lv3/i;

    if-eqz v0, :cond_0

    check-cast p1, Lv3/i;

    .line 2
    invoke-super {p0, p1}, Ls1/u/c;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
