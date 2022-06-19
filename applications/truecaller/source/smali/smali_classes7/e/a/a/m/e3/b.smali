.class public final Le/a/a/m/e3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/e3/a;


# instance fields
.field public final a:Le/a/p5/g;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/c0/h;


# direct methods
.method public constructor <init>(Le/a/p5/g;Le/a/u3/g;Le/a/c0/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/m/e3/b;->a:Le/a/p5/g;

    iput-object p2, p0, Le/a/a/m/e3/b;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/a/m/e3/b;->c:Le/a/c0/h;

    return-void
.end method


# virtual methods
.method public a()Le/a/a/m/d1;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/m/e3/b;->a:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Le/a/a/m/e3/b;->a:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Le/a/a/m/e3/b;->a:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->r()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/a/m/e3/b;->b:Le/a/u3/g;

    .line 4
    iget-object v3, v0, Le/a/u3/g;->h6:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x179

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Le/a/a/m/e3/b;->c:Le/a/c0/h;

    .line 7
    iget-object v0, v0, Le/a/c0/h;->j:Le/a/c0/c;

    .line 8
    invoke-virtual {v0}, Le/a/c0/c;->f()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/truecaller/abtest/TwoVariants;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    .line 9
    sget-object v2, Le/a/a/m/d1$b;->b:Le/a/a/m/d1$b;

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 11
    :cond_3
    sget-object v2, Le/a/a/m/d1$c;->b:Le/a/a/m/d1$c;

    :cond_4
    :goto_1
    return-object v2
.end method
