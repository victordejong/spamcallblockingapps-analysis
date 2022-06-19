.class public final Le/a/s/a/d;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/s/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/s/a/c;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/p5/j0;

.field public final f:Le/a/r3/g;

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/j0;Le/a/r3/g;Le/a/p5/c0;Le/a/u3/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicFeatureManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/s/a/d;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/s/a/d;->e:Le/a/p5/j0;

    iput-object p3, p0, Le/a/s/a/d;->f:Le/a/r3/g;

    iput-object p4, p0, Le/a/s/a/d;->g:Le/a/p5/c0;

    iput-object p5, p0, Le/a/s/a/d;->h:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public Ij(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s/a/d;->f:Le/a/r3/g;

    sget-object v1, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->CALLHERO_ASSISTANT:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-interface {v0, v1}, Le/a/r3/g;->b(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/a/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/s/a/c;->fb()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v3, Le/a/s/a/e;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/s/a/e;-><init>(Le/a/s/a/d;Landroid/app/Activity;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    :goto_0
    return-void
.end method
