.class public Le/i/b/z1/g$b;
.super Le/i/b/z1/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/z1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/i/b/z1/x$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Le/i/b/z1/x;Le/i/b/z1/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Le/i/b/z1/x$a;-><init>()V

    .line 3
    check-cast p1, Le/i/b/z1/g;

    .line 4
    iget-object p2, p1, Le/i/b/z1/g;->a:Ljava/lang/Long;

    .line 5
    iput-object p2, p0, Le/i/b/z1/g$b;->a:Ljava/lang/Long;

    .line 6
    iget-object p2, p1, Le/i/b/z1/g;->b:Ljava/lang/Long;

    .line 7
    iput-object p2, p0, Le/i/b/z1/g$b;->b:Ljava/lang/Long;

    .line 8
    iget-boolean p2, p1, Le/i/b/z1/g;->c:Z

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Le/i/b/z1/g$b;->c:Ljava/lang/Boolean;

    .line 10
    iget-boolean p2, p1, Le/i/b/z1/g;->d:Z

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Le/i/b/z1/g$b;->d:Ljava/lang/Boolean;

    .line 12
    iget-object p2, p1, Le/i/b/z1/g;->e:Ljava/lang/Long;

    .line 13
    iput-object p2, p0, Le/i/b/z1/g$b;->e:Ljava/lang/Long;

    .line 14
    iget-object p2, p1, Le/i/b/z1/g;->f:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Le/i/b/z1/g$b;->f:Ljava/lang/String;

    .line 16
    iget-object p2, p1, Le/i/b/z1/g;->g:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Le/i/b/z1/g$b;->g:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Le/i/b/z1/g;->h:Ljava/lang/Integer;

    .line 19
    iput-object p2, p0, Le/i/b/z1/g$b;->h:Ljava/lang/Integer;

    .line 20
    iget-object p2, p1, Le/i/b/z1/g;->i:Ljava/lang/Integer;

    .line 21
    iput-object p2, p0, Le/i/b/z1/g$b;->i:Ljava/lang/Integer;

    .line 22
    iget-boolean p1, p1, Le/i/b/z1/g;->j:Z

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/i/b/z1/g$b;->j:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Z)Le/i/b/z1/x$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/i/b/z1/g$b;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b()Le/i/b/z1/x;
    .locals 13

    .line 1
    iget-object v0, p0, Le/i/b/z1/g$b;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, " cdbCallTimeout"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Le/i/b/z1/g$b;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string v1, " cachedBidUsed"

    .line 3
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Le/i/b/z1/g$b;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " impressionId"

    .line 5
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Le/i/b/z1/g$b;->j:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    const-string v1, " readyToSend"

    .line 7
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    new-instance v0, Le/i/b/z1/n;

    iget-object v3, p0, Le/i/b/z1/g$b;->a:Ljava/lang/Long;

    iget-object v4, p0, Le/i/b/z1/g$b;->b:Ljava/lang/Long;

    iget-object v1, p0, Le/i/b/z1/g$b;->c:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v1, p0, Le/i/b/z1/g$b;->d:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Le/i/b/z1/g$b;->e:Ljava/lang/Long;

    iget-object v8, p0, Le/i/b/z1/g$b;->f:Ljava/lang/String;

    iget-object v9, p0, Le/i/b/z1/g$b;->g:Ljava/lang/String;

    iget-object v10, p0, Le/i/b/z1/g$b;->h:Ljava/lang/Integer;

    iget-object v11, p0, Le/i/b/z1/g$b;->i:Ljava/lang/Integer;

    iget-object v1, p0, Le/i/b/z1/g$b;->j:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Le/i/b/z1/n;-><init>(Ljava/lang/Long;Ljava/lang/Long;ZZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-object v0

    .line 13
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(Z)Le/i/b/z1/x$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/i/b/z1/g$b;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Z)Le/i/b/z1/x$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/i/b/z1/g$b;->j:Ljava/lang/Boolean;

    return-object p0
.end method
