.class public final Ls1/a/a/a/v0/e/a0/b/f;
.super Ls1/a/a/a/v0/e/z/a;
.source "SourceFile"


# static fields
.field public static final g:Ls1/a/a/a/v0/e/a0/b/f;


# instance fields
.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/b/f;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/e/a0/b/f;-><init>([I)V

    sput-object v0, Ls1/a/a/a/v0/e/a0/b/f;->g:Ls1/a/a/a/v0/e/a0/b/f;

    const/4 v0, 0x0

    new-array v2, v0, [I

    const-string v3, "numbers"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "versionArray"

    .line 3
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v2, v0}, Le/q/f/a/d/a;->W0([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-static {v2, v0}, Le/q/f/a/d/a;->W0([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_1
    const/4 v0, 0x2

    .line 8
    invoke-static {v2, v0}, Le/q/f/a/d/a;->W0([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    :cond_2
    array-length v0, v2

    if-le v0, v1, :cond_3

    invoke-static {v2}, Ls1/u/i;->f([I)Ljava/util/List;

    move-result-object v0

    array-length v2, v2

    check-cast v0, Ls1/u/c;

    invoke-virtual {v0, v1, v2}, Ls1/u/c;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x1
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .locals 1

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Ls1/a/a/a/v0/e/a0/b/f;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 1

    const-string v0, "versionArray"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Ls1/a/a/a/v0/e/z/a;-><init>([I)V

    iput-boolean p2, p0, Ls1/a/a/a/v0/e/a0/b/f;->f:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 5

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/z/a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget v3, p0, Ls1/a/a/a/v0/e/z/a;->b:I

    if-eqz v3, :cond_3

    .line 3
    :cond_0
    iget-boolean v3, p0, Ls1/a/a/a/v0/e/a0/b/f;->f:Z

    if-eqz v3, :cond_1

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/a0/b/f;->g:Ls1/a/a/a/v0/e/a0/b/f;

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/z/a;->a(Ls1/a/a/a/v0/e/z/a;)Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    sget-object v3, Ls1/a/a/a/v0/e/a0/b/f;->g:Ls1/a/a/a/v0/e/a0/b/f;

    .line 6
    iget v4, v3, Ls1/a/a/a/v0/e/z/a;->a:I

    if-ne v0, v4, :cond_2

    .line 7
    iget v0, p0, Ls1/a/a/a/v0/e/z/a;->b:I

    iget v3, v3, Ls1/a/a/a/v0/e/z/a;->b:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method
