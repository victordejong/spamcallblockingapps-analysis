.class public final Le/a/h4/o$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h4/o;->k(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/h4/q/c;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h4/o;


# direct methods
.method public constructor <init>(Le/a/h4/o;)V
    .locals 0

    iput-object p1, p0, Le/a/h4/o$a;->b:Le/a/h4/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/h4/q/c;

    const-string v0, "spec"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/h4/q/c;->e:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 4
    sget-object v1, Lcom/truecaller/featuretoggles/FeatureKey;->NONE:Lcom/truecaller/featuretoggles/FeatureKey;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Le/a/h4/o$a;->b:Le/a/h4/o;

    .line 5
    iget-object v0, v0, Le/a/h4/o;->h:Lo3/a;

    .line 6
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 7
    iget-object p1, p1, Le/a/h4/q/c;->e:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 8
    invoke-virtual {v0, p1}, Le/a/u3/g;->d(Lcom/truecaller/featuretoggles/FeatureKey;)Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 9
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
