.class public Ln3/y/b/a/x0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/x0/q$b;
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/b/a/x0/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[Ln3/y/b/a/x0/q$b;

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/x0/q;->a:I

    const/4 p1, 0x5

    new-array p1, p1, [Ln3/y/b/a/x0/q$b;

    .line 3
    iput-object p1, p0, Ln3/y/b/a/x0/q;->c:[Ln3/y/b/a/x0/q$b;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Ln3/y/b/a/x0/q;->d:I

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 3

    .line 1
    iget v0, p0, Ln3/y/b/a/x0/q;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    sget-object v2, Ln3/y/b/a/x0/o;->a:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iput v1, p0, Ln3/y/b/a/x0/q;->d:I

    .line 4
    :cond_0
    iget v0, p0, Ln3/y/b/a/x0/q;->g:I

    if-lez v0, :cond_1

    iget-object v2, p0, Ln3/y/b/a/x0/q;->c:[Ln3/y/b/a/x0/q$b;

    sub-int/2addr v0, v1

    iput v0, p0, Ln3/y/b/a/x0/q;->g:I

    aget-object v0, v2, v0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ln3/y/b/a/x0/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/q$b;-><init>(Ln3/y/b/a/x0/q$a;)V

    .line 6
    :goto_0
    iget v1, p0, Ln3/y/b/a/x0/q;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ln3/y/b/a/x0/q;->e:I

    iput v1, v0, Ln3/y/b/a/x0/q$b;->a:I

    .line 7
    iput p1, v0, Ln3/y/b/a/x0/q$b;->b:I

    .line 8
    iput p2, v0, Ln3/y/b/a/x0/q$b;->c:F

    .line 9
    iget-object p2, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget p2, p0, Ln3/y/b/a/x0/q;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Ln3/y/b/a/x0/q;->f:I

    .line 11
    :cond_2
    :goto_1
    iget p1, p0, Ln3/y/b/a/x0/q;->f:I

    iget p2, p0, Ln3/y/b/a/x0/q;->a:I

    if-le p1, p2, :cond_4

    sub-int/2addr p1, p2

    .line 12
    iget-object p2, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/y/b/a/x0/q$b;

    .line 13
    iget v1, p2, Ln3/y/b/a/x0/q$b;->b:I

    if-gt v1, p1, :cond_3

    .line 14
    iget p1, p0, Ln3/y/b/a/x0/q;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Ln3/y/b/a/x0/q;->f:I

    .line 15
    iget-object p1, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    iget p1, p0, Ln3/y/b/a/x0/q;->g:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 17
    iget-object v0, p0, Ln3/y/b/a/x0/q;->c:[Ln3/y/b/a/x0/q$b;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ln3/y/b/a/x0/q;->g:I

    aput-object p2, v0, p1

    goto :goto_1

    :cond_3
    sub-int/2addr v1, p1

    .line 18
    iput v1, p2, Ln3/y/b/a/x0/q$b;->b:I

    .line 19
    iget p2, p0, Ln3/y/b/a/x0/q;->f:I

    sub-int/2addr p2, p1

    iput p2, p0, Ln3/y/b/a/x0/q;->f:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b(F)F
    .locals 4

    .line 1
    iget v0, p0, Ln3/y/b/a/x0/q;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    sget-object v2, Ln3/y/b/a/x0/p;->a:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iput v1, p0, Ln3/y/b/a/x0/q;->d:I

    .line 4
    :cond_0
    iget v0, p0, Ln3/y/b/a/x0/q;->f:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    move v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/x0/q$b;

    .line 7
    iget v3, v2, Ln3/y/b/a/x0/q$b;->b:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_1

    .line 8
    iget p1, v2, Ln3/y/b/a/x0/q$b;->c:F

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/x0/q$b;

    iget p1, p1, Ln3/y/b/a/x0/q$b;->c:F

    :goto_1
    return p1
.end method
