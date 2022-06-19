.class public final Le/a/m/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/e/f;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/e/f;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/b0/e/f;",
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m/p;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/m/p;->b:Le/a/b0/e/f;

    iput-object p3, p0, Le/a/m/p;->c:Lo3/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/m/p;->b:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "Application class does not implement "

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/m/p;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/b0/g/a;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    check-cast v4, Le/a/b0/g/a;

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v4}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Le/a/m/p;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v1, "region_br_policy_accepted"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/b0/g/a;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    iget-object v0, p0, Le/a/m/p;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/b0/g/a;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v0

    :goto_1
    check-cast v4, Le/a/b0/g/a;

    if-eqz v4, :cond_6

    .line 9
    invoke-virtual {v4}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Le/a/m/p;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v1, "region_za_policy_accepted"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v5

    :goto_3
    return v2

    .line 11
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/b0/g/a;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
