.class public final Le/a/f4/g/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/i/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/f4/i/b$a<",
        "Le/a/f4/g/t;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/UUID;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSource"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/g/n;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/f4/g/n;->d:Ljava/util/UUID;

    iput-object p3, p0, Le/a/f4/g/n;->e:Ljava/lang/String;

    const-string p1, ""

    .line 2
    iput-object p1, p0, Le/a/f4/g/n;->a:Ljava/lang/String;

    const/16 p1, 0x3e7

    .line 3
    iput p1, p0, Le/a/f4/g/n;->b:I

    return-void
.end method


# virtual methods
.method public final a()Le/a/f4/g/t;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/f4/g/n;->b:I

    const/4 v2, 0x1

    const/16 v3, 0x3e7

    if-eq v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "You must specify a search type"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Le/a/f4/g/n;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v2, "You must specify a search query"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    invoke-static {}, Le/a/w4/l;->a()Le/a/w4/m;

    move-result-object v1

    iget-object v2, v0, Le/a/f4/g/n;->a:Ljava/lang/String;

    iget v3, v0, Le/a/f4/g/n;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le/a/w4/m;->b(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v5

    .line 4
    iget-object v1, v0, Le/a/f4/g/n;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    const-string v2, "(context.applicationCont\u2026GraphHolder).objectsGraph"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Le/a/f4/g/o;

    .line 6
    iget-object v6, v0, Le/a/f4/g/n;->a:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 7
    iget v9, v0, Le/a/f4/g/n;->b:I

    .line 8
    iget-object v10, v0, Le/a/f4/g/n;->d:Ljava/util/UUID;

    .line 9
    sget-object v11, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    .line 10
    invoke-interface {v1}, Le/a/j2;->q3()Le/m/f/a/j;

    move-result-object v12

    move-object v4, v2

    .line 11
    invoke-direct/range {v4 .. v12}, Le/a/f4/g/o;-><init>(Lx3/b;Ljava/lang/String;ZZILjava/util/UUID;Le/a/b0/b/e;Le/m/f/a/j;)V

    .line 12
    new-instance v3, Le/a/f4/g/d;

    .line 13
    new-instance v8, Le/a/k3/j/b;

    iget-object v4, v0, Le/a/f4/g/n;->c:Landroid/content/Context;

    invoke-direct {v8, v4}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-interface {v1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v10

    invoke-interface {v1}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v11

    iget-object v12, v0, Le/a/f4/g/n;->a:Ljava/lang/String;

    .line 14
    iget v13, v0, Le/a/f4/g/n;->b:I

    iget-object v14, v0, Le/a/f4/g/n;->e:Ljava/lang/String;

    iget-object v15, v0, Le/a/f4/g/n;->d:Ljava/util/UUID;

    const/16 v16, 0x0

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v17

    invoke-interface {v1}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v18

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v1}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v21

    move-object v6, v3

    move-object v7, v2

    .line 15
    invoke-direct/range {v6 .. v21}, Le/a/f4/g/d;-><init>(Lx3/b;Le/a/k3/j/b;ZLe/a/r2/f;Le/a/h0/j;Ljava/lang/String;ILjava/lang/String;Ljava/util/UUID;Ljava/util/List;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;ZLe/a/g5/p;)V

    const-string v1, "Constructed search call(s) for "

    .line 16
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Le/a/f4/g/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    invoke-virtual {v3}, Le/a/f4/g/d;->execute()Lx3/a0;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lx3/a0;->b:Ljava/lang/Object;

    .line 19
    check-cast v1, Le/a/f4/g/t;

    return-object v1
.end method
