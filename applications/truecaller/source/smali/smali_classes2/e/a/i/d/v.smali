.class public final Le/a/i/d/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/x;


# instance fields
.field public final a:Le/a/i/d/k;

.field public final b:Le/a/i/d/u;

.field public final c:Le/a/i/d/h;

.field public final d:Le/a/i/d/j;

.field public final e:Le/a/i/d/m;

.field public final f:Le/a/i/d/l;


# direct methods
.method public constructor <init>(Le/a/i/d/k;Le/a/i/d/u;Le/a/i/d/h;Le/a/i/d/j;Le/a/i/d/m;Le/a/i/d/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "nativeAdsPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customNativeAdsPresenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdsPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "houseAdsPresenter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholderAdsPresenter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noneAdsPresenter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d/v;->a:Le/a/i/d/k;

    iput-object p2, p0, Le/a/i/d/v;->b:Le/a/i/d/u;

    iput-object p3, p0, Le/a/i/d/v;->c:Le/a/i/d/h;

    iput-object p4, p0, Le/a/i/d/v;->d:Le/a/i/d/j;

    iput-object p5, p0, Le/a/i/d/v;->e:Le/a/i/d/m;

    iput-object p6, p0, Le/a/i/d/v;->f:Le/a/i/d/l;

    return-void
.end method


# virtual methods
.method public a()Le/a/i/d/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d/v;->b:Le/a/i/d/u;

    return-object v0
.end method

.method public b()Le/a/i/d/j;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d/v;->d:Le/a/i/d/j;

    return-object v0
.end method

.method public c()Le/a/i/d/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d/v;->c:Le/a/i/d/h;

    return-object v0
.end method

.method public d()Le/a/i/d/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d/v;->f:Le/a/i/d/l;

    return-object v0
.end method

.method public e()Le/a/i/d/k;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d/v;->a:Le/a/i/d/k;

    return-object v0
.end method

.method public f()Le/a/i/d/m;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d/v;->e:Le/a/i/d/m;

    return-object v0
.end method
