.class public final synthetic Le/a/e/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/h0;->a:Lcom/truecaller/ui/TruecallerInit;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Le/a/e/h0;->a:Lcom/truecaller/ui/TruecallerInit;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Landroidx/activity/result/ActivityResult;->a:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, v0, Lcom/truecaller/ui/TruecallerInit;->s1:Ljava/lang/String;

    const-string v1, "context"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "postBackUrl"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 6
    sget-object v2, Ln3/m0/h;->c:Ln3/m0/h;

    .line 7
    new-instance v3, Ln3/m0/r$a;

    const-class v4, Lcom/truecaller/messaging/defaultsms/DmaAdsWorker;

    invoke-direct {v3, v4}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 8
    invoke-static {v1, p1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 9
    new-instance v1, Ln3/m0/f;

    invoke-direct {v1, p1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 10
    invoke-static {v1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 11
    iget-object p1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, p1, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 12
    iget-object p1, v3, Ln3/m0/z$a;->d:Ljava/util/Set;

    const-string v1, "DmaAdsWorker"

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p1, Ln3/m0/d$a;

    invoke-direct {p1}, Ln3/m0/d$a;-><init>()V

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 14
    iput-object v4, p1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 15
    new-instance v4, Ln3/m0/d;

    invoke-direct {v4, p1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 16
    iget-object p1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v4, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 17
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    const-string v3, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/r;

    .line 18
    invoke-virtual {v0, v1, v2, p1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    :cond_0
    return-void
.end method
