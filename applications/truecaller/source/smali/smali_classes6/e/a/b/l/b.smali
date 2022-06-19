.class public final Le/a/b/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/l/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/Geocoder;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/Geocoder;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geocoder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/l/b;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/b/l/b;->b:Landroid/location/Geocoder;

    iput-object p3, p0, Le/a/b/l/b;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/l/b;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b0/q/j;->h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(DDLs1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/l/b;->c:Ls1/w/f;

    new-instance v8, Le/a/b/l/b$a;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Le/a/b/l/b$a;-><init>(Le/a/b/l/b;DDLs1/w/d;)V

    invoke-static {v0, v8, p5}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Le/a/b0/q/j;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/l/b;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b0/q/j;->h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
