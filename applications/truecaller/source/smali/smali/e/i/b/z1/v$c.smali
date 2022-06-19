.class public Le/i/b/z1/v$c;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/z1/v;->d(Le/i/b/u2/q;Le/i/b/u2/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/i/b/u2/q;

.field public final synthetic d:Le/i/b/u2/t;

.field public final synthetic e:Le/i/b/z1/v;


# direct methods
.method public constructor <init>(Le/i/b/z1/v;Le/i/b/u2/q;Le/i/b/u2/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/z1/v$c;->e:Le/i/b/z1/v;

    iput-object p2, p0, Le/i/b/z1/v$c;->c:Le/i/b/u2/q;

    iput-object p3, p0, Le/i/b/z1/v$c;->d:Le/i/b/u2/t;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    .line 1
    iget-object v0, p0, Le/i/b/z1/v$c;->e:Le/i/b/z1/v;

    .line 2
    iget-object v0, v0, Le/i/b/z1/v;->c:Le/i/b/e2;

    .line 3
    invoke-interface {v0}, Le/i/b/e2;->a()J

    move-result-wide v7

    .line 4
    iget-object v0, p0, Le/i/b/z1/v$c;->c:Le/i/b/u2/q;

    invoke-virtual {v0}, Le/i/b/u2/q;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/u2/s;

    .line 5
    invoke-virtual {v1}, Le/i/b/u2/s;->a()Ljava/lang/String;

    move-result-object v9

    .line 6
    iget-object v1, p0, Le/i/b/z1/v$c;->d:Le/i/b/u2/t;

    .line 7
    iget-object v1, v1, Le/i/b/u2/t;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/i/b/u2/w;

    .line 8
    invoke-virtual {v2}, Le/i/b/u2/w;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move-object v6, v1

    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v6, :cond_3

    move v10, v1

    goto :goto_2

    :cond_3
    move v10, v2

    :goto_2
    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v6}, Le/i/b/u2/w;->n()Z

    move-result v3

    if-nez v3, :cond_4

    move v11, v1

    goto :goto_3

    :cond_4
    move v11, v2

    .line 10
    :goto_3
    iget-object v1, p0, Le/i/b/z1/v$c;->e:Le/i/b/z1/v;

    .line 11
    iget-object v12, v1, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    .line 12
    new-instance v13, Le/i/b/z1/c;

    move-object v1, v13

    move v2, v10

    move-wide v3, v7

    move v5, v11

    invoke-direct/range {v1 .. v6}, Le/i/b/z1/c;-><init>(ZJZLe/i/b/u2/w;)V

    invoke-virtual {v12, v9, v13}, Le/i/b/z1/b0;->c(Ljava/lang/String;Le/i/b/z1/b0$a;)V

    if-nez v10, :cond_5

    if-eqz v11, :cond_0

    .line 13
    :cond_5
    iget-object v1, p0, Le/i/b/z1/v$c;->e:Le/i/b/z1/v;

    .line 14
    iget-object v2, v1, Le/i/b/z1/v;->b:Le/i/b/z1/h0;

    .line 15
    iget-object v1, v1, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    .line 16
    invoke-virtual {v2, v1, v9}, Le/i/b/z1/h0;->a(Le/i/b/z1/b0;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void
.end method
