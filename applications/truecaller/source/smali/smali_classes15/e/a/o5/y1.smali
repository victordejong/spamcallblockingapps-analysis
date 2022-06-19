.class public Le/a/o5/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/d/d;


# instance fields
.field public a:Le/a/o5/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Le/d/d/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/a/o5/y1;->a:Le/a/o5/u;

    .line 2
    iget v1, v0, Le/a/o5/u;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3
    invoke-virtual {v0, v1}, Le/a/o5/u;->a(I)V

    .line 4
    iget-object v0, p0, Le/a/o5/y1;->a:Le/a/o5/u;

    .line 5
    iget-object v1, p1, Le/d/d/b;->a:Le/d/d/b$j;

    iget-object v3, v1, Le/d/d/b$j;->k:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p1}, Le/d/d/b;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Le/d/d/b$j;->k:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v1, p1, Le/d/d/b;->a:Le/d/d/b$j;

    iget-object v1, v1, Le/d/d/b$j;->k:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Le/a/o5/u;->c:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Le/d/d/b;->g:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 11
    iget-object p1, p1, Le/d/d/b;->g:Ljava/util/List;

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/d/d/b$o;

    .line 13
    iget-object v0, p0, Le/a/o5/y1;->a:Le/a/o5/u;

    .line 14
    iget-object v1, p1, Le/d/d/b$o;->d:Landroid/net/Uri;

    .line 15
    iput-object v1, v0, Le/a/o5/u;->b:Landroid/net/Uri;

    .line 16
    iget-object p1, p1, Le/d/d/b$o;->c:[B

    .line 17
    iput-object p1, v0, Le/a/o5/u;->d:[B

    goto :goto_1

    .line 18
    :cond_3
    iget-object p1, p0, Le/a/o5/y1;->a:Le/a/o5/u;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Le/a/o5/u;->d:[B

    .line 20
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 21
    iput-object v0, p1, Le/a/o5/u;->b:Landroid/net/Uri;

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    new-instance v0, Le/a/o5/u;

    invoke-direct {v0}, Le/a/o5/u;-><init>()V

    iput-object v0, p0, Le/a/o5/y1;->a:Le/a/o5/u;

    return-void
.end method
