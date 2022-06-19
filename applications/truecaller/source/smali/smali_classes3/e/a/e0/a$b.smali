.class public final Le/a/e0/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e0/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e0/a;


# direct methods
.method public constructor <init>(Le/a/e0/a;)V
    .locals 0

    iput-object p1, p0, Le/a/e0/a$b;->b:Le/a/e0/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/e0/a$b;->b:Le/a/e0/a;

    .line 2
    iget-object v1, v0, Le/a/e0/a;->b:Le/a/e0/e;

    .line 3
    iget-object v0, v0, Le/a/e0/a;->a:Ln3/b/a/h;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "context"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v1, Le/a/e0/e;->d:Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->l()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Le/a/e0/e;->e:Le/a/l/p2/v0;

    invoke-interface {v3}, Le/a/l/p2/v0;->H()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-object v1, v1, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast v1, Le/a/g/j/m0;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v1, Le/a/g/j/m0;->e:Le/a/l/a2;

    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK_TOP_SPAMMERS:Lcom/truecaller/premium/PremiumLaunchContext;

    const-string v3, "premiumAdvancedBlocking"

    invoke-interface {v1, v0, v2, v3}, Le/a/l/a2;->a(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v1, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast v1, Le/a/g/j/m0;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, v1, Le/a/g/j/m0;->a:Le/a/h0/m;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Le/a/h0/m;->k(Z)V

    .line 12
    iget-object v1, v1, Le/a/g/j/m0;->a:Le/a/h0/m;

    invoke-interface {v1, v4}, Le/a/h0/m;->c(Z)V

    .line 13
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(context)"

    .line 15
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "workManager"

    .line 16
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 18
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 19
    new-instance v3, Ln3/m0/d$a;

    invoke-direct {v3}, Ln3/m0/d$a;-><init>()V

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 20
    iput-object v4, v3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 21
    new-instance v4, Ln3/m0/d;

    invoke-direct {v4, v3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 22
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v4, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 23
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    check-cast v2, Ln3/m0/r;

    const-string v3, "FilterSettingsUploadWorker"

    .line 24
    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 25
    :goto_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :cond_1
    const-string v0, "activity"

    .line 26
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
