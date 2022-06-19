.class public final Le/a/u3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/b;


# instance fields
.field public final a:Z

.field public final b:Lcom/truecaller/featuretoggles/FeatureKey;

.field public final c:Ljava/lang/String;

.field public final synthetic d:Lcom/truecaller/featuretoggles/FeatureKey;


# direct methods
.method public constructor <init>(Lcom/truecaller/featuretoggles/FeatureKey;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/u3/h;->d:Lcom/truecaller/featuretoggles/FeatureKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Le/a/u3/h;->a:Z

    .line 3
    iput-object p1, p0, Le/a/u3/h;->b:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 4
    iput-object p3, p0, Le/a/u3/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/h;->b:Lcom/truecaller/featuretoggles/FeatureKey;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/u3/h;->a:Z

    return v0
.end method
