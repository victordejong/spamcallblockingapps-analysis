.class public final Le/a/u3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/k;
.implements Le/a/u3/b;


# instance fields
.field public a:Z

.field public final b:Le/a/u3/b;

.field public final c:Le/a/u3/d;


# direct methods
.method public constructor <init>(Le/a/u3/b;Le/a/u3/d;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u3/l;->b:Le/a/u3/b;

    iput-object p2, p0, Le/a/u3/l;->c:Le/a/u3/d;

    .line 2
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Le/a/u3/l;->a:Z

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/u3/l;->b:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    iget-object v0, p0, Le/a/u3/l;->b:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u3/l;->c:Le/a/u3/d;

    invoke-virtual {p0}, Le/a/u3/l;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Le/a/u3/l;->a:Z

    invoke-interface {v0, v1, v2}, Le/a/u3/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u3/l;->c:Le/a/u3/d;

    invoke-virtual {p0}, Le/a/u3/l;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/u3/l;->b:Le/a/u3/b;

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Le/a/u3/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u3/l;->c:Le/a/u3/d;

    invoke-virtual {p0}, Le/a/u3/l;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Le/a/u3/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
