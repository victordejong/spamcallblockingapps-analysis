.class public Le/a/o5/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/z;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/a0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/b0/q/j;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 0

    .line 1
    invoke-static {p1}, Le/a/b0/q/j;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 0

    .line 1
    invoke-static {p1}, Le/a/b0/q/j;->d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/a0;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b0/q/j;->h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 0

    .line 1
    invoke-static {p1}, Le/a/b0/q/j;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method
