.class public final Le/m/a/c/m1/t/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/m1/e;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/c/m1/t/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:[J

.field public final d:[J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/m/a/c/m1/t/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/m1/t/i;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Le/m/a/c/m1/t/i;->b:I

    mul-int/lit8 v0, v0, 0x2

    .line 4
    new-array v0, v0, [J

    iput-object v0, p0, Le/m/a/c/m1/t/i;->c:[J

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Le/m/a/c/m1/t/i;->b:I

    if-ge v0, v1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/m1/t/e;

    mul-int/lit8 v2, v0, 0x2

    .line 7
    iget-object v3, p0, Le/m/a/c/m1/t/i;->c:[J

    iget-wide v4, v1, Le/m/a/c/m1/t/e;->p:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 8
    iget-wide v4, v1, Le/m/a/c/m1/t/e;->q:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Le/m/a/c/m1/t/i;->c:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/m1/t/i;->d:[J

    .line 10
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Ln3/g0/y;->r(Z)V

    .line 2
    iget-object v2, p0, Le/m/a/c/m1/t/i;->d:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    .line 3
    iget-object v0, p0, Le/m/a/c/m1/t/i;->d:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/t/i;->d:[J

    array-length v0, v0

    return v0
.end method

.method public d(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/t/i;->d:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Le/m/a/c/q1/d0;->b([JJZZ)I

    move-result p1

    .line 2
    iget-object p2, p0, Le/m/a/c/m1/t/i;->d:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public e(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Le/m/a/c/m1/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    .line 2
    :goto_0
    iget v5, p0, Le/m/a/c/m1/t/i;->b:I

    if-ge v4, v5, :cond_5

    .line 3
    iget-object v5, p0, Le/m/a/c/m1/t/i;->c:[J

    mul-int/lit8 v6, v4, 0x2

    aget-wide v7, v5, v6

    cmp-long v7, v7, p1

    if-gtz v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    cmp-long v5, p1, v6

    if-gez v5, :cond_4

    .line 4
    iget-object v5, p0, Le/m/a/c/m1/t/i;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/m1/t/e;

    .line 5
    iget v6, v5, Le/m/a/c/m1/b;->d:F

    const v7, -0x800001

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, v5, Le/m/a/c/m1/b;->g:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    if-eqz v6, :cond_3

    if-nez v3, :cond_1

    move-object v3, v5

    goto :goto_2

    :cond_1
    const-string v6, "\n"

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7
    iget-object v7, v3, Le/m/a/c/m1/b;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 10
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v5, v5, Le/m/a/c/m1/b;->a:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v5, v5, Le/m/a/c/m1/b;->a:Ljava/lang/CharSequence;

    .line 14
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 17
    new-instance p1, Le/m/a/c/m1/t/e$b;

    invoke-direct {p1}, Le/m/a/c/m1/t/e$b;-><init>()V

    .line 18
    iput-object v2, p1, Le/m/a/c/m1/t/e$b;->c:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p1}, Le/m/a/c/m1/t/e$b;->a()Le/m/a/c/m1/t/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    return-object v0
.end method
