.class public final Le/a/t3/c/x/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t3/c/x/e;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/featuretoggles/FeatureKey;",
            "Le/a/t3/c/x/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t3/c/x/d;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Le/a/u3/b;)V
    .locals 2

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t3/c/x/d;->a:Ljava/util/Map;

    invoke-interface {p1}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t3/c/x/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/t3/c/x/c;->a(Le/a/u3/b;)V

    :cond_0
    return-void
.end method
