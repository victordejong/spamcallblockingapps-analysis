.class public Ln3/k/g/f/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/g/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ln3/k/g/f/b$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Ln3/k/g/f/b$b;

    check-cast p2, Ln3/k/g/f/b$b;

    .line 2
    iget v0, p1, Ln3/k/g/f/b$b;->c:I

    iget v1, p2, Ln3/k/g/f/b$b;->c:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    .line 3
    :cond_1
    iget p1, p1, Ln3/k/g/f/b$b;->d:I

    iget p2, p2, Ln3/k/g/f/b$b;->d:I

    if-ge p1, p2, :cond_2

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
