.class public final Le/m/b/x/d/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Le/m/b/x/d/j;

.field public c:Ljava/lang/Object;

.field public d:Z

.field public e:Z

.field public f:Le/m/b/x/d/j;

.field public final synthetic g:Le/m/b/x/d/h;


# direct methods
.method public constructor <init>(Le/m/b/x/d/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/x/d/h$b;->g:Le/m/b/x/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/m/b/x/d/h$b;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/b/x/d/h$b;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Le/m/b/x/d/h$b;->e:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/m/b/x/d/h$b;->c:Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object v0, p0, Le/m/b/x/d/h$b;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Le/m/b/x/d/h$b;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Le/m/b/x/d/h$b;->a:I

    iget-object v2, p0, Le/m/b/x/d/h$b;->g:Le/m/b/x/d/h;

    iget-object v2, v2, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    iget-object v2, v2, Le/m/b/x/d/f;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Le/m/b/x/d/h$b;->g:Le/m/b/x/d/h;

    iget-object v0, v0, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    iget-object v2, v0, Le/m/b/x/d/f;->c:Ljava/util/List;

    iget v3, p0, Le/m/b/x/d/h$b;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Le/m/b/x/d/f;->a(Ljava/lang/String;)Le/m/b/x/d/j;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/d/h$b;->b:Le/m/b/x/d/j;

    .line 6
    iget-object v2, p0, Le/m/b/x/d/h$b;->g:Le/m/b/x/d/h;

    iget-object v2, v2, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Le/m/b/x/d/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/d/h$b;->c:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/m/b/x/d/h$b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/b/x/d/h$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/b/x/d/h$b;->b:Le/m/b/x/d/j;

    iput-object v0, p0, Le/m/b/x/d/h$b;->f:Le/m/b/x/d/j;

    .line 3
    iget-object v1, p0, Le/m/b/x/d/h$b;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Le/m/b/x/d/h$b;->e:Z

    .line 5
    iput-boolean v2, p0, Le/m/b/x/d/h$b;->d:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Le/m/b/x/d/h$b;->b:Le/m/b/x/d/j;

    .line 7
    iput-object v2, p0, Le/m/b/x/d/h$b;->c:Ljava/lang/Object;

    .line 8
    new-instance v2, Le/m/b/x/d/h$a;

    iget-object v3, p0, Le/m/b/x/d/h$b;->g:Le/m/b/x/d/h;

    invoke-direct {v2, v3, v0, v1}, Le/m/b/x/d/h$a;-><init>(Le/m/b/x/d/h;Le/m/b/x/d/j;Ljava/lang/Object;)V

    return-object v2

    .line 9
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/b/x/d/h$b;->f:Le/m/b/x/d/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/m/b/x/d/h$b;->d:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Ln3/g0/y;->checkState2(Z)V

    .line 3
    iput-boolean v1, p0, Le/m/b/x/d/h$b;->d:Z

    .line 4
    iget-object v0, p0, Le/m/b/x/d/h$b;->f:Le/m/b/x/d/j;

    iget-object v1, p0, Le/m/b/x/d/h$b;->g:Le/m/b/x/d/h;

    iget-object v1, v1, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/m/b/x/d/j;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
