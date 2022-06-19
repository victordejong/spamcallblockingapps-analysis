.class public final Le/a/c/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/b/f;


# instance fields
.field public final a:Le/a/c/b/b;


# direct methods
.method public constructor <init>(Le/a/c/b/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featureControlPref"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b/g;->a:Le/a/c/b/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "remoteKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/b/g;->a:Le/a/c/b/b;

    invoke-interface {v0, p1}, Le/a/c/b/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "remoteKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/b/g;->a:Le/a/c/b/b;

    invoke-interface {v0, p1}, Le/a/c/b/b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/b/g;->a:Le/a/c/b/b;

    invoke-interface {v0, p1}, Le/a/c/b/b;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "remoteKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/b/g;->a:Le/a/c/b/b;

    new-instance v1, Lcom/truecaller/insights/network/adapter/CountryFeature;

    invoke-direct {v1, p1, p2}, Lcom/truecaller/insights/network/adapter/CountryFeature;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/c/b/b;->c(Ljava/util/List;)V

    return-void
.end method
