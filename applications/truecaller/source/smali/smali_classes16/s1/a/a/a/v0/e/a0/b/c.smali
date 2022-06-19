.class public final Ls1/a/a/a/v0/e/a0/b/c;
.super Ls1/a/a/a/v0/e/z/a;
.source "SourceFile"


# static fields
.field public static final f:Ls1/a/a/a/v0/e/a0/b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/a0/b/c;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/e/a0/b/c;-><init>([I)V

    sput-object v0, Ls1/a/a/a/v0/e/a0/b/c;->f:Ls1/a/a/a/v0/e/a0/b/c;

    const/4 v0, 0x0

    new-array v2, v0, [I

    const-string v3, "numbers"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v2, v0}, Le/q/f/a/d/a;->W0([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-static {v2, v0}, Le/q/f/a/d/a;->W0([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_1
    const/4 v0, 0x2

    .line 7
    invoke-static {v2, v0}, Le/q/f/a/d/a;->W0([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
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

    :array_0
    .array-data 4
        0x1
        0x0
        0x3
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .locals 1

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Ls1/a/a/a/v0/e/z/a;-><init>([I)V

    return-void
.end method
