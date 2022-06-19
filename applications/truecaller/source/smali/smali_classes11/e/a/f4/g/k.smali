.class public Le/a/f4/g/k;
.super Le/a/f4/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f4/g/b<",
        "Le/a/f4/g/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lx3/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/a/f4/g/b;-><init>(Lx3/b;)V

    .line 2
    iput-object p2, p0, Le/a/f4/g/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lx3/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/f4/g/k;

    iget-object v1, p0, Le/a/f4/g/b;->a:Lx3/b;

    invoke-interface {v1}, Lx3/b;->clone()Lx3/b;

    move-result-object v1

    iget-object v2, p0, Le/a/f4/g/k;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Le/a/f4/g/k;-><init>(Lx3/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public execute()Lx3/a0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4
    iget-object v0, p0, Le/a/f4/g/k;->b:Ljava/lang/String;

    invoke-static {v0}, Le/a/b0/q/b0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {}, Le/a/m0/a1$a;->c()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 6
    array-length v0, v3

    if-nez v0, :cond_1

    move-object v5, v7

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v4, "data1=? AND data_type=4"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    new-instance v1, Le/a/k3/j/d;

    invoke-direct {v1, v0}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    .line 9
    invoke-virtual {v1, v8}, Le/a/k3/j/d;->h(Z)V

    .line 10
    invoke-virtual {v1, v0}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    .line 11
    :cond_2
    invoke-virtual {v1, v0, v2}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->b1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    move-object v2, v7

    .line 14
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 15
    throw v1

    :cond_4
    :goto_2
    move-object v2, v7

    :goto_3
    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Le/a/f4/g/k;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v0}, Lcom/truecaller/data/entity/Contact;->V0(Ljava/lang/String;)V

    .line 19
    new-instance v0, Le/a/f4/g/t;

    invoke-direct {v0, v8, v7, v2}, Le/a/f4/g/t;-><init>(ILe/a/f4/g/t;Lcom/truecaller/data/entity/Contact;)V

    .line 20
    new-instance v1, Lu3/k0$a;

    invoke-direct {v1}, Lu3/k0$a;-><init>()V

    const/16 v2, 0xc8

    .line 21
    iput v2, v1, Lu3/k0$a;->c:I

    const-string v2, "OK"

    .line 22
    invoke-virtual {v1, v2}, Lu3/k0$a;->e(Ljava/lang/String;)Lu3/k0$a;

    sget-object v2, Lu3/f0;->c:Lu3/f0;

    .line 23
    invoke-virtual {v1, v2}, Lu3/k0$a;->f(Lu3/f0;)Lu3/k0$a;

    new-instance v2, Lu3/g0$a;

    invoke-direct {v2}, Lu3/g0$a;-><init>()V

    const-string v3, "http://localhost/"

    .line 24
    invoke-virtual {v2, v3}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    invoke-virtual {v2}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    .line 25
    invoke-virtual {v1}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lx3/a0;->d(Ljava/lang/Object;Lu3/k0;)Lx3/a0;

    move-result-object v0

    return-object v0

    .line 27
    :cond_5
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-static {v0}, Le/a/w4/t/b/b;->b(Landroid/content/Context;)Le/a/w4/t/b/b;

    move-result-object v0

    .line 28
    iget-object v1, p0, Le/a/f4/g/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/a/w4/t/b/b;->d(Ljava/lang/String;)Lx3/a0;

    move-result-object v1

    if-nez v1, :cond_6

    .line 29
    iget-object v1, p0, Le/a/f4/g/b;->a:Lx3/b;

    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    .line 30
    iget-object v2, p0, Le/a/f4/g/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Le/a/w4/t/b/b;->e(Ljava/lang/String;Lx3/a0;)V

    :cond_6
    return-object v1
.end method
