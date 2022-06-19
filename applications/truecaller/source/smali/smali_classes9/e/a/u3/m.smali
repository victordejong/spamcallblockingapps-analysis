.class public final Le/a/u3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/b;


# instance fields
.field public final a:Z

.field public final b:Lcom/truecaller/featuretoggles/FeatureKey;

.field public final c:Ljava/lang/String;

.field public final synthetic d:Le/a/u3/n$a;


# direct methods
.method public constructor <init>(Le/a/u3/n$a;)V
    .locals 1

    iput-object p1, p0, Le/a/u3/m;->d:Le/a/u3/n$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Le/a/u3/n$a;->b:Le/a/u3/b;

    check-cast v0, Le/a/u3/s;

    .line 3
    iget-object v0, v0, Le/a/u3/s;->e:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 4
    iput-boolean v0, p0, Le/a/u3/m;->a:Z

    .line 5
    iget-object v0, p1, Le/a/u3/n$a;->b:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v0

    iput-object v0, p0, Le/a/u3/m;->b:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 6
    iget-object p1, p1, Le/a/u3/n$a;->b:Le/a/u3/b;

    invoke-interface {p1}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/u3/m;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/m;->b:Lcom/truecaller/featuretoggles/FeatureKey;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/u3/m;->a:Z

    return v0
.end method
