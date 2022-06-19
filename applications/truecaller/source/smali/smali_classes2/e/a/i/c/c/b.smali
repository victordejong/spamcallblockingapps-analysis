.class public final Le/a/i/c/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/c/a;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/a/i/c/c/b$a;->b:Le/a/i/c/c/b$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/c/c/b;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/y;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lx3/b<",
            "Lu3/l0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/i/c/c/b;->c()Le/a/i/c/c/f;

    move-result-object p2

    invoke-interface {p2, p1}, Le/a/i/c/c/f;->a(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lx3/b<",
            "Lcom/truecaller/ads/adsrouter/model/AdResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/i/c/c/b;->c()Le/a/i/c/c/f;

    move-result-object p2

    invoke-interface {p2, p1}, Le/a/i/c/c/f;->c(Ljava/util/Map;)Lx3/b;

    move-result-object p1

    return-object p1
.end method

.method public final c()Le/a/i/c/c/f;
    .locals 1

    iget-object v0, p0, Le/a/i/c/c/b;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/c/c/f;

    return-object v0
.end method

.method public d(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ls1/w/d<",
            "-",
            "Lx3/b<",
            "Lcom/truecaller/ads/adsrouter/model/Ad;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/i/c/c/b;->c()Le/a/i/c/c/f;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Le/a/i/c/c/f;->b(Ljava/lang/String;I)Lx3/b;

    move-result-object p1

    return-object p1
.end method
