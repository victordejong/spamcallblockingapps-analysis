.class public final Le/a/k/a/a/a/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/k/a/a/a/c;",
        ">;",
        "Le/a/k/a/a/a/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/k/a/f/g;

.field public final c:Le/a/k/c/y0;

.field public final d:Le/a/k/a/a/h;


# direct methods
.method public constructor <init>(Le/a/k/a/f/g;Le/a/k/c/y0;Le/a/k/a/a/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "previewConfigGenerator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abTestManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/k/a/a/a/d;->b:Le/a/k/a/f/g;

    iput-object p2, p0, Le/a/k/a/a/a/d;->c:Le/a/k/c/y0;

    iput-object p3, p0, Le/a/k/a/a/a/d;->d:Le/a/k/a/a/h;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/k/a/a/a/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/k/a/a/a/d;->b:Le/a/k/a/f/g;

    invoke-virtual {v0}, Le/a/k/a/f/g;->b()Le/a/k/a/k/l;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/k/a/a/a/c;->P9(Le/a/k/a/k/l;)V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/a/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Le/a/k/a/a/a/c;->W8()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Le/a/k/a/a/a/d;->d:Le/a/k/a/a/h;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "name"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v3, v2, Le/a/k/a/a/h;->a:Le/a/c0/h;

    .line 10
    iget-object v3, v3, Le/a/c0/h;->i:Le/a/c0/c;

    .line 11
    invoke-virtual {v3}, Le/a/c0/c;->g()Z

    move-result v3

    const-string v4, "resourceProvider.getStri\u2026_caller_id)\n            )"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 12
    iget-object v2, v2, Le/a/k/a/a/h;->b:Le/a/p5/c0;

    .line 13
    sget v3, Lcom/truecaller/videocallerid/R$string;->vid_onboarding_title_ab_variant:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v0

    .line 14
    sget v1, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    new-array v7, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    .line 15
    invoke-interface {v2, v3, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 16
    iget-object v1, v2, Le/a/k/a/a/h;->b:Le/a/p5/c0;

    .line 17
    sget v2, Lcom/truecaller/videocallerid/R$string;->vid_onboarding_title_ab_control:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 18
    sget v5, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    new-array v6, v0, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 19
    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-interface {p1, v1}, Le/a/k/a/a/a/c;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 22
    :cond_2
    invoke-interface {p1}, Le/a/k/a/a/a/c;->dismiss()V

    .line 23
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/k/a/a/a/d;->d:Le/a/k/a/a/h;

    .line 24
    iget-object p1, p1, Le/a/k/a/a/h;->a:Le/a/c0/h;

    .line 25
    iget-object p1, p1, Le/a/c0/h;->i:Le/a/c0/c;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 26
    invoke-static {p1, v0, v2, v1, v2}, Le/a/c0/f;->e(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    return-void
.end method
