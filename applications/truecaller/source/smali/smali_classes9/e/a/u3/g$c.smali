.class public final Le/a/u3/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u3/g;->b(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/featuretoggles/FirebaseFlavor;)Le/a/u3/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Lcom/truecaller/featuretoggles/FeatureKey;

.field public final b:Ljava/lang/String;

.field public final synthetic c:Lcom/truecaller/featuretoggles/FeatureKey;


# direct methods
.method public constructor <init>(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/u3/g$c;->c:Lcom/truecaller/featuretoggles/FeatureKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/u3/g$c;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 3
    iput-object p2, p0, Le/a/u3/g$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/g$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Lcom/truecaller/featuretoggles/FeatureKey;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u3/g$c;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
