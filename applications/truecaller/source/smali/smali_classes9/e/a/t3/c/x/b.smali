.class public final Le/a/t3/c/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t3/c/x/c;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "messagesStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t3/c/x/b;->a:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/u3/b;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/t3/c/x/b;->a:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    invoke-interface {p1}, Le/a/a/g/m;->G()V

    :cond_0
    return-void
.end method

.method public b()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/featuretoggles/FeatureKey;->PROMOTIONAL_MESSAGE_CATEGORY:Lcom/truecaller/featuretoggles/FeatureKey;

    return-object v0
.end method
