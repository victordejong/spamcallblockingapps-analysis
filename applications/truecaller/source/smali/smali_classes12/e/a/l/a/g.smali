.class public final Le/a/l/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/g;

.field public final b:Le/a/p4/b;

.field public final c:Le/a/l/a/f;


# direct methods
.method public constructor <init>(Le/a/p5/g;Le/a/p4/b;Le/a/l/a/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaMenuSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugSubscriptionRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/g;->a:Le/a/p5/g;

    iput-object p2, p0, Le/a/l/a/g;->b:Le/a/p4/b;

    iput-object p3, p0, Le/a/l/a/g;->c:Le/a/l/a/f;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/a/g;->b:Le/a/p4/b;

    invoke-interface {v0}, Le/a/p4/b;->S1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Le/a/l/a/g;->a:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->i()Z

    move-result v3

    iget-object v4, p0, Le/a/l/a/g;->a:Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->a()Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/g;->b:Le/a/p4/b;

    invoke-interface {v0}, Le/a/p4/b;->V2()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    xor-int/2addr v1, v2

    iget-object v2, p0, Le/a/l/a/g;->a:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->i()Z

    move-result v2

    iget-object v3, p0, Le/a/l/a/g;->a:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->a()Z

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
