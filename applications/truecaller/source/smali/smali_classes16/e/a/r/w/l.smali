.class public final Le/a/r/w/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/w/m;


# instance fields
.field public final a:Le/a/b0/e/r/a;

.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/b0/e/r/a;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/w/l;->a:Le/a/b0/e/r/a;

    iput-object p2, p0, Le/a/r/w/l;->b:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "selectedCountryIso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/w/l;->a:Le/a/b0/e/r/a;

    const-string v1, "featureRegionC_qa"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "us"

    .line 2
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/r/w/l;->b:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->S()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "selectedCountryIso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string p2, "us"

    .line 1
    invoke-static {p2, p1, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method
