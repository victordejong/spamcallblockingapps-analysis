.class public final Le/a/a/p0/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t3/c/x/c;


# instance fields
.field public final a:Lcom/truecaller/featuretoggles/FeatureKey;

.field public final b:Le/a/a/p0/m/a;


# direct methods
.method public constructor <init>(Le/a/a/p0/m/a;)V
    .locals 1

    const-string v0, "categorizerFlagObserver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/p0/m/b;->b:Le/a/a/p0/m/a;

    .line 2
    sget-object p1, Lcom/truecaller/featuretoggles/FeatureKey;->SMS_CATEGORIZER:Lcom/truecaller/featuretoggles/FeatureKey;

    iput-object p1, p0, Le/a/a/p0/m/b;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    return-void
.end method


# virtual methods
.method public a(Le/a/u3/b;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/p0/m/b;->b:Le/a/a/p0/m/a;

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Le/a/a/p0/m/a;->a(Z)V

    return-void
.end method

.method public b()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/p0/m/b;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    return-object v0
.end method
