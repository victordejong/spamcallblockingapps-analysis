.class public final Lcom/hiya/stingray/data/sync/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/data/sync/c;

.field private b:Li/c/b0/c/c;

.field private final c:Lcom/hiya/stingray/manager/g2;

.field private final d:Lcom/hiya/stingray/manager/m3;

.field private final e:Lcom/hiya/stingray/manager/l2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/g2;Lcom/hiya/stingray/manager/m3;Lcom/hiya/stingray/manager/l2;)V
    .locals 1

    const-string v0, "dataCollectionManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneEventManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devAnalyticsManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/f;->c:Lcom/hiya/stingray/manager/g2;

    iput-object p2, p0, Lcom/hiya/stingray/data/sync/f;->d:Lcom/hiya/stingray/manager/m3;

    iput-object p3, p0, Lcom/hiya/stingray/data/sync/f;->e:Lcom/hiya/stingray/manager/l2;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/data/sync/f;)Lcom/hiya/stingray/manager/g2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/data/sync/f;->c:Lcom/hiya/stingray/manager/g2;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/data/sync/f;)Lcom/hiya/stingray/manager/l2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/data/sync/f;->e:Lcom/hiya/stingray/manager/l2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/data/sync/f;)Lcom/hiya/stingray/manager/m3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/data/sync/f;->d:Lcom/hiya/stingray/manager/m3;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/data/sync/f;Landroid/app/job/JobParameters;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/data/sync/f;->e(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method private final e(Landroid/app/job/JobParameters;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/f;->a:Lcom/hiya/stingray/data/sync/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/data/sync/c;->a(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public f(Lcom/hiya/stingray/data/sync/c;)V
    .locals 1

    const-string v0, "onJobFinishedListener"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/data/sync/f;->a:Lcom/hiya/stingray/data/sync/c;

    return-void
.end method

.method public g(Landroid/app/job/JobParameters;)Z
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/f;->d:Lcom/hiya/stingray/manager/m3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/m3;->e()Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/data/sync/f$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/data/sync/f$a;-><init>(Lcom/hiya/stingray/data/sync/f;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->m(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->d()Li/c/b0/b/j0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->e(Li/c/b0/b/j0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/data/sync/f$b;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/data/sync/f$b;-><init>(Lcom/hiya/stingray/data/sync/f;Landroid/app/job/JobParameters;)V

    .line 5
    new-instance v2, Lcom/hiya/stingray/data/sync/f$c;

    invoke-direct {v2, p0, p1}, Lcom/hiya/stingray/data/sync/f$c;-><init>(Lcom/hiya/stingray/data/sync/f;Landroid/app/job/JobParameters;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/hiya/stingray/data/sync/f;->b:Li/c/b0/c/c;

    const/4 p1, 0x1

    return p1
.end method

.method public h(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/data/sync/f;->b:Li/c/b0/c/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
