.class public final Le/a/r3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r3/g;


# instance fields
.field public final b:Le/m/a/h/a/g/b;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r3/h;->d:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Ln3/g0/y;->G(Landroid/content/Context;)Le/m/a/h/a/g/b;

    move-result-object p1

    const-string v0, "SplitInstallManagerFactory.create(context)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/r3/h;->b:Le/m/a/h/a/g/b;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/r3/h;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Le/a/r3/b$f;Landroid/app/Activity;I)Z
    .locals 1

    const-string v0, "confirmationRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r3/h;->b:Le/m/a/h/a/g/b;

    .line 2
    iget-object p1, p1, Le/a/r3/b$f;->a:Le/m/a/h/a/g/d;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Le/m/a/h/a/g/b;->e(Le/m/a/h/a/g/d;Landroid/app/Activity;I)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Z
    .locals 3

    const-string v0, "dynamicFeature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r3/h;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/r3/h;->b:Le/m/a/h/a/g/b;

    invoke-interface {v0}, Le/m/a/h/a/g/b;->g()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/r3/h;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)V
    .locals 2

    const-string v0, "dynamicFeature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/r3/h;->b(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/r3/h;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Le/a/r3/h;->b:Le/m/a/h/a/g/b;

    invoke-virtual {p1}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Le/m/a/h/a/g/b;->b(Ljava/util/List;)Le/m/a/h/a/h/r;

    return-void
.end method

.method public d(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;",
            ")",
            "Lq3/a/x2/f<",
            "Le/a/r3/b;",
            ">;"
        }
    .end annotation

    const-string v0, "dynamicFeature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/r3/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/r3/h$a;-><init>(Le/a/r3/h;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Ls1/w/d;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
