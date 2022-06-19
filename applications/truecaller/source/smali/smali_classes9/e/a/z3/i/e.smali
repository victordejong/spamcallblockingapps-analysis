.class public abstract Le/a/z3/i/e;
.super Le/a/z3/i/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/z3/i/e$b;,
        Le/a/z3/i/e$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(IILs1/z/c/f;)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p3}, Le/a/z3/i/g;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/z3/i/e;->a:I

    iput p2, p0, Le/a/z3/i/e;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/a/z3/i/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v1, p0, Le/a/z3/i/e;->a:I

    check-cast p1, Le/a/z3/i/e;

    iget v3, p1, Le/a/z3/i/e;->a:I

    if-eq v1, v3, :cond_2

    return v2

    .line 3
    :cond_2
    iget v1, p0, Le/a/z3/i/e;->b:I

    iget p1, p1, Le/a/z3/i/e;->b:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/z3/i/e;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Le/a/z3/i/e;->b:I

    add-int/2addr v0, v1

    return v0
.end method
