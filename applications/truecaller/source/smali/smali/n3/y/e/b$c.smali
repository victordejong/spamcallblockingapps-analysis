.class public Ln3/y/e/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ln3/y/e/b$b;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Ln3/y/e/b$b;

    .line 2
    iput-object v0, p0, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    const/16 v0, 0x22

    new-array v0, v0, [C

    const/16 v1, 0xa0

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Ln3/y/e/b$c;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Ln3/y/e/b$c;->e(I)V

    .line 2
    iget-object v0, p0, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    iget v1, p0, Ln3/y/e/b$c;->c:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 3
    aget-object v0, v0, v1

    iget v1, p0, Ln3/y/e/b$c;->d:I

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Ln3/y/e/b$b;->b(IC)V

    .line 4
    iget v0, p0, Ln3/y/e/b$c;->d:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    iget v1, p0, Ln3/y/e/b$c;->c:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ln3/y/e/b$b;->b(IC)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    .line 2
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 3
    iput v0, p0, Ln3/y/e/b$c;->c:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Ln3/y/e/b$c;->d:I

    return-void
.end method

.method public final d(I)Ln3/y/e/b$b;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ln3/y/e/b$b;

    iget-object v2, p0, Ln3/y/e/b$c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ln3/y/e/b$b;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/e/b$c;->d:I

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/16 v1, 0x20

    invoke-static {v0, p1, v1}, Ln3/y/e/b$c;->b(III)I

    move-result p1

    iput p1, p0, Ln3/y/e/b$c;->d:I

    return-void
.end method

.method public final f(II)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 1
    invoke-static {p1, v0, v1}, Ln3/y/e/b$c;->b(III)I

    move-result p1

    iput p1, p0, Ln3/y/e/b$c;->c:I

    const/16 p1, 0x20

    .line 2
    invoke-static {p2, v0, p1}, Ln3/y/e/b$c;->b(III)I

    move-result p1

    iput p1, p0, Ln3/y/e/b$c;->d:I

    return-void
.end method
