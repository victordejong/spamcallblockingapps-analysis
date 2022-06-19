.class public final Le/a/t3/c/x/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t3/c/x/c;


# instance fields
.field public final a:Lcom/truecaller/featuretoggles/FeatureKey;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/b0/o/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/b0/o/a;",
            ")V"
        }
    .end annotation

    const-string v0, "messagesStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t3/c/x/a;->b:Lo3/a;

    iput-object p2, p0, Le/a/t3/c/x/a;->c:Le/a/b0/o/a;

    .line 2
    sget-object p1, Lcom/truecaller/featuretoggles/FeatureKey;->NORMALIZE_SHORT_CODES:Lcom/truecaller/featuretoggles/FeatureKey;

    iput-object p1, p0, Le/a/t3/c/x/a;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    return-void
.end method


# virtual methods
.method public a(Le/a/u3/b;)V
    .locals 2

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/t3/c/x/a;->c:Le/a/b0/o/a;

    const-string v0, "deleteBackupDuplicates"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Le/a/t3/c/x/a;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/a/g/m;->b(Z)V

    return-void
.end method

.method public b()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/x/a;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    return-object v0
.end method
