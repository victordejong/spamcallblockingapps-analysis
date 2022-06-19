.class public Ls1/a/a/a/v0/e/z/b$c;
.super Ls1/a/a/a/v0/e/z/b$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/z/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ls1/a/a/a/v0/h/i$a;",
        ">",
        "Ls1/a/a/a/v0/e/z/b$d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:[Ls1/a/a/a/v0/h/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[Ls1/a/a/a/v0/h/i$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 1
    array-length v1, p2

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x1f

    :goto_0
    if-ltz v2, :cond_2

    shl-int v3, v0, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    add-int/2addr v0, v2

    :goto_1
    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Ls1/a/a/a/v0/e/z/b$d;-><init>(IILs1/a/a/a/v0/e/z/b$a;)V

    .line 3
    iput-object p2, p0, Ls1/a/a/a/v0/e/z/b$c;->c:[Ls1/a/a/a/v0/h/i$a;

    return-void

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Empty enum: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "enumEntries"

    aput-object v1, p1, p2

    const-string p2, "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "bitWidth"

    aput-object v0, p1, p2

    const-string p2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 5
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public d(I)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/z/b$d;->b:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/z/b$d;->a:I

    shl-int/2addr v0, v1

    and-int/2addr p1, v0

    shr-int/2addr p1, v1

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/e/z/b$c;->c:[Ls1/a/a/a/v0/h/i$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Ls1/a/a/a/v0/h/i$a;->getNumber()I

    move-result v4

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/h/i$a;

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/h/i$a;->getNumber()I

    move-result p1

    iget v0, p0, Ls1/a/a/a/v0/e/z/b$d;->a:I

    shl-int/2addr p1, v0

    return p1
.end method
