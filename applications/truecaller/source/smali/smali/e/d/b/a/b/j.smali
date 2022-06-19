.class public Le/d/b/a/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Le/d/b/a/b/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a(I)Le/d/b/a/b/o;
    .locals 1

    .line 1
    iget-object v0, p0, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/d/b/a/b/o;

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v2, p0, Le/d/b/a/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/d/b/a/b/o;

    .line 3
    iget v2, v2, Le/d/b/a/b/o;->d:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method
