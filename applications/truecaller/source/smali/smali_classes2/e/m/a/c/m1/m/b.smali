.class public final Le/m/a/c/m1/m/b;
.super Le/m/a/c/m1/b;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/c/m1/b;",
        "Ljava/lang/Comparable<",
        "Le/m/a/c/m1/m/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final p:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Le/m/a/c/m1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 2
    iput p11, p0, Le/m/a/c/m1/m/b;->p:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Le/m/a/c/m1/m/b;

    .line 2
    iget p1, p1, Le/m/a/c/m1/m/b;->p:I

    iget v0, p0, Le/m/a/c/m1/m/b;->p:I

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
