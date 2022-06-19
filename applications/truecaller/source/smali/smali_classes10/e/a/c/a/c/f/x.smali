.class public final Le/a/c/a/c/f/x;
.super Le/a/c/a/i/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/k<",
        "Landroidx/activity/result/ActivityResultRegistry;",
        "Landroidx/lifecycle/LiveData<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/c0/o;

.field public final c:Le/a/c/b/h;

.field public final d:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Le/a/c/c0/o;Le/a/c/b/h;Ls1/w/f;Le/a/c/e/c;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/c/a/i/k;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    iput-object p2, p0, Le/a/c/a/c/f/x;->c:Le/a/c/b/h;

    iput-object p4, p0, Le/a/c/a/c/f/x;->d:Le/a/c/e/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Le/a/c/a/c/f/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/c/a/c/f/s;-><init>(Ls1/w/d;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->M0(Ls1/w/f;JLs1/z/b/p;I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry;

    .line 2
    iget-object p2, p0, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    invoke-interface {p2}, Le/a/c/c0/o;->N()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Le/a/c/a/c/f/t;

    invoke-direct {v0, p0, p1}, Le/a/c/a/c/f/t;-><init>(Le/a/c/a/c/f/x;Landroidx/activity/result/ActivityResultRegistry;)V

    invoke-static {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->Q0(Landroidx/lifecycle/LiveData;Ln3/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string p2, "Transformations.map(insi\u2026 { getBannerItem(input) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Le/a/c/r/d/c;
    .locals 10

    .line 1
    new-instance v9, Le/a/c/r/d/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v0, "default_sms_banner"

    .line 2
    invoke-virtual {v9, v0}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    const-string v0, "important_tab"

    .line 3
    invoke-virtual {v9, v0}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    const-string v0, "click"

    .line 4
    invoke-virtual {v9, v0}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    const-string v0, "default_sms"

    .line 5
    invoke-virtual {v9, v0}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    return-object v9
.end method
