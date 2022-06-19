.class public final Le/a/l/p2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/o/a;

.field public final b:Le/a/b0/e/r/a;

.field public final c:Le/a/k3/l/f;

.field public final d:Le/a/o5/f0;

.field public final e:Le/a/b0/e/f;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/k3/l/f;Le/a/o5/f0;Le/a/b0/e/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/o;->a:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/l/p2/o;->b:Le/a/b0/e/r/a;

    iput-object p3, p0, Le/a/l/p2/o;->c:Le/a/k3/l/f;

    iput-object p4, p0, Le/a/l/p2/o;->d:Le/a/o5/f0;

    iput-object p5, p0, Le/a/l/p2/o;->e:Le/a/b0/e/f;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l/p2/n;
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/l/p2/o;->d:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/p2/o;->a:Le/a/b0/o/a;

    const-string v2, "profileAvatar"

    invoke-interface {v0, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Le/a/l/p2/o;->a:Le/a/b0/o/a;

    iget-object v3, p0, Le/a/l/p2/o;->b:Le/a/b0/e/r/a;

    invoke-static {v2, v3}, Le/a/l4/k;->J(Le/a/b0/o/a;Le/a/b0/e/r/a;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 4
    new-instance v6, Lcom/truecaller/data/entity/Number;

    .line 5
    invoke-direct {v6, v2, v1}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->c()Ljava/lang/String;

    move-result-object v7

    .line 7
    iget-object v8, p0, Le/a/l/p2/o;->c:Le/a/k3/l/f;

    invoke-interface {v8, v6}, Le/a/k3/l/f;->c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/CharSequence;

    aput-object v6, v8, v5

    aput-object v7, v8, v4

    const-string v6, " - "

    .line 8
    invoke-static {v6, v8}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    goto :goto_0

    :cond_1
    move-object v12, v1

    .line 9
    :goto_0
    new-instance v6, Le/a/l/p2/n;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v4

    :goto_2
    if-nez v7, :cond_4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v8, v0

    goto :goto_3

    :cond_4
    move-object v8, v1

    .line 11
    :goto_3
    iget-object v0, p0, Le/a/l/p2/o;->a:Le/a/b0/o/a;

    invoke-static {v0}, Le/a/l4/k;->I(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v9

    .line 12
    iget-object v0, p0, Le/a/l/p2/o;->a:Le/a/b0/o/a;

    const-string v7, "profileStreet"

    invoke-interface {v0, v7}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v7, p0, Le/a/l/p2/o;->a:Le/a/b0/o/a;

    const-string v10, "profileZip"

    invoke-interface {v7, v10}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    iget-object v10, p0, Le/a/l/p2/o;->a:Le/a/b0/o/a;

    const-string v11, "profileCity"

    invoke-interface {v10, v11}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_4

    :cond_5
    move v11, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v11, v4

    :goto_5
    if-eqz v11, :cond_b

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_7

    goto :goto_6

    :cond_7
    move v11, v5

    goto :goto_7

    :cond_8
    :goto_6
    move v11, v4

    :goto_7
    if-eqz v11, :cond_b

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_9

    goto :goto_8

    :cond_9
    move v11, v5

    goto :goto_9

    :cond_a
    :goto_8
    move v11, v4

    :goto_9
    if-nez v11, :cond_c

    :cond_b
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v5

    new-array v0, v3, [Ljava/lang/CharSequence;

    aput-object v7, v0, v5

    aput-object v10, v0, v4

    const-string v3, " "

    .line 16
    invoke-static {v3, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, ", "

    .line 17
    invoke-static {v0, v1}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    move-object v10, v1

    .line 18
    invoke-static {v2}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 19
    iget-object v0, p0, Le/a/l/p2/o;->e:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->b()Z

    move-result v13

    move-object v7, v6

    .line 20
    invoke-direct/range {v7 .. v13}, Le/a/l/p2/n;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method
