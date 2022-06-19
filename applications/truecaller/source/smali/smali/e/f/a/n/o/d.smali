.class public Le/f/a/n/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/g;
.implements Le/f/a/n/n/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/o/g;",
        "Le/f/a/n/n/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/n/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/f/a/n/o/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Le/f/a/n/o/g$a;

.field public d:I

.field public e:Le/f/a/n/f;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/n/p/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public g:I

.field public volatile h:Le/f/a/n/p/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Ljava/io/File;


# direct methods
.method public constructor <init>(Le/f/a/n/o/h;Le/f/a/n/o/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/h<",
            "*>;",
            "Le/f/a/n/o/g$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/f/a/n/o/h;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Le/f/a/n/o/d;->d:I

    .line 4
    iput-object v0, p0, Le/f/a/n/o/d;->a:Ljava/util/List;

    .line 5
    iput-object p1, p0, Le/f/a/n/o/d;->b:Le/f/a/n/o/h;

    .line 6
    iput-object p2, p0, Le/f/a/n/o/d;->c:Le/f/a/n/o/g$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Le/f/a/n/o/h;Le/f/a/n/o/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/f/a/n/f;",
            ">;",
            "Le/f/a/n/o/h<",
            "*>;",
            "Le/f/a/n/o/g$a;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Le/f/a/n/o/d;->d:I

    .line 9
    iput-object p1, p0, Le/f/a/n/o/d;->a:Ljava/util/List;

    .line 10
    iput-object p2, p0, Le/f/a/n/o/d;->b:Le/f/a/n/o/h;

    .line 11
    iput-object p3, p0, Le/f/a/n/o/d;->c:Le/f/a/n/o/g$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Le/f/a/n/o/d;->f:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 2
    iget v3, p0, Le/f/a/n/o/d;->g:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/f/a/n/o/d;->h:Le/f/a/n/p/n$a;

    move v0, v1

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 4
    iget v3, p0, Le/f/a/n/o/d;->g:I

    iget-object v4, p0, Le/f/a/n/o/d;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    if-eqz v3, :cond_5

    .line 5
    iget-object v3, p0, Le/f/a/n/o/d;->f:Ljava/util/List;

    iget v4, p0, Le/f/a/n/o/d;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/f/a/n/o/d;->g:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/f/a/n/p/n;

    .line 6
    iget-object v4, p0, Le/f/a/n/o/d;->i:Ljava/io/File;

    iget-object v5, p0, Le/f/a/n/o/d;->b:Le/f/a/n/o/h;

    .line 7
    iget v6, v5, Le/f/a/n/o/h;->e:I

    .line 8
    iget v7, v5, Le/f/a/n/o/h;->f:I

    .line 9
    iget-object v5, v5, Le/f/a/n/o/h;->i:Le/f/a/n/i;

    .line 10
    invoke-interface {v3, v4, v6, v7, v5}, Le/f/a/n/p/n;->a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;

    move-result-object v3

    iput-object v3, p0, Le/f/a/n/o/d;->h:Le/f/a/n/p/n$a;

    .line 11
    iget-object v3, p0, Le/f/a/n/o/d;->h:Le/f/a/n/p/n$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Le/f/a/n/o/d;->b:Le/f/a/n/o/h;

    iget-object v4, p0, Le/f/a/n/o/d;->h:Le/f/a/n/p/n$a;

    iget-object v4, v4, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v4}, Le/f/a/n/n/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/f/a/n/o/h;->g(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v0, p0, Le/f/a/n/o/d;->h:Le/f/a/n/p/n$a;

    iget-object v0, v0, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    iget-object v3, p0, Le/f/a/n/o/d;->b:Le/f/a/n/o/h;

    .line 13
    iget-object v3, v3, Le/f/a/n/o/h;->o:Le/f/a/f;

    .line 14
    invoke-interface {v0, v3, p0}, Le/f/a/n/n/d;->d(Le/f/a/f;Le/f/a/n/n/d$a;)V

    move v0, v2

    goto :goto_2

    :cond_5
    return v0

    .line 15
    :cond_6
    :goto_4
    iget v0, p0, Le/f/a/n/o/d;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Le/f/a/n/o/d;->d:I

    .line 16
    iget-object v2, p0, Le/f/a/n/o/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    return v1

    .line 17
    :cond_7
    iget-object v0, p0, Le/f/a/n/o/d;->a:Ljava/util/List;

    iget v2, p0, Le/f/a/n/o/d;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/n/f;

    .line 18
    new-instance v2, Le/f/a/n/o/e;

    iget-object v3, p0, Le/f/a/n/o/d;->b:Le/f/a/n/o/h;

    .line 19
    iget-object v4, v3, Le/f/a/n/o/h;->n:Le/f/a/n/f;

    .line 20
    invoke-direct {v2, v0, v4}, Le/f/a/n/o/e;-><init>(Le/f/a/n/f;Le/f/a/n/f;)V

    .line 21
    invoke-virtual {v3}, Le/f/a/n/o/h;->b()Le/f/a/n/o/c0/a;

    move-result-object v3

    invoke-interface {v3, v2}, Le/f/a/n/o/c0/a;->b(Le/f/a/n/f;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Le/f/a/n/o/d;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 22
    iput-object v0, p0, Le/f/a/n/o/d;->e:Le/f/a/n/f;

    .line 23
    iget-object v0, p0, Le/f/a/n/o/d;->b:Le/f/a/n/o/h;

    .line 24
    iget-object v0, v0, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 25
    iget-object v0, v0, Le/f/a/e;->b:Le/f/a/g;

    .line 26
    invoke-virtual {v0, v2}, Le/f/a/g;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    iput-object v0, p0, Le/f/a/n/o/d;->f:Ljava/util/List;

    .line 28
    iput v1, p0, Le/f/a/n/o/d;->g:I

    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/o/d;->h:Le/f/a/n/p/n$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v0}, Le/f/a/n/n/d;->cancel()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/f/a/n/o/d;->c:Le/f/a/n/o/g$a;

    iget-object v1, p0, Le/f/a/n/o/d;->e:Le/f/a/n/f;

    iget-object v2, p0, Le/f/a/n/o/d;->h:Le/f/a/n/p/n$a;

    iget-object v3, v2, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    sget-object v4, Le/f/a/n/a;->c:Le/f/a/n/a;

    iget-object v5, p0, Le/f/a/n/o/d;->e:Le/f/a/n/f;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Le/f/a/n/o/g$a;->h(Le/f/a/n/f;Ljava/lang/Object;Le/f/a/n/n/d;Le/f/a/n/a;Le/f/a/n/f;)V

    return-void
.end method

.method public f(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/n/o/d;->c:Le/f/a/n/o/g$a;

    iget-object v1, p0, Le/f/a/n/o/d;->e:Le/f/a/n/f;

    iget-object v2, p0, Le/f/a/n/o/d;->h:Le/f/a/n/p/n$a;

    iget-object v2, v2, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    sget-object v3, Le/f/a/n/a;->c:Le/f/a/n/a;

    invoke-interface {v0, v1, p1, v2, v3}, Le/f/a/n/o/g$a;->c(Le/f/a/n/f;Ljava/lang/Exception;Le/f/a/n/n/d;Le/f/a/n/a;)V

    return-void
.end method
