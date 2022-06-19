.class public final Le/a/s/g;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/s/f;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/r3/g;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/r3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicFeatureManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/s/g;->c:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/s/g;->d:Le/a/r3/g;

    return-void
.end method


# virtual methods
.method public final Hj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/g;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->h3()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/s/g;->d:Le/a/r3/g;

    sget-object v1, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->CALLHERO_ASSISTANT:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-interface {v0, v1}, Le/a/r3/g;->b(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Le/a/s/g;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/s/f;->pv()V

    .line 4
    :cond_1
    iput v1, p0, Le/a/s/g;->b:I

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Le/a/s/g;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/f;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/s/f;->p2()V

    .line 7
    :cond_4
    iput v1, p0, Le/a/s/g;->b:I

    :goto_0
    return-void
.end method
