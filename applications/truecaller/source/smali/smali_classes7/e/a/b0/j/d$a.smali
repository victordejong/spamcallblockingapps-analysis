.class public final Le/a/b0/j/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/j/d;-><init>(Ls1/w/f;Landroid/content/Context;Le/a/c3/a;Le/a/p5/o;Le/a/b0/b/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b0/j/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b0/j/d;


# direct methods
.method public constructor <init>(Le/a/b0/j/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/j/d$a;->b:Le/a/b0/j/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/b0/j/d$a;->b:Le/a/b0/j/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Le/a/b0/j/a;->h:Le/a/b0/j/a$a;

    iget-object v3, v0, Le/a/b0/j/d;->c:Landroid/content/Context;

    iget-object v2, v0, Le/a/b0/j/d;->e:Le/a/p5/o;

    const-string v4, "countries.json"

    const-string v1, "context"

    .line 4
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jsonFileUtil"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileName"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-class v5, Lcom/truecaller/common/network/country/CountryListDto;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static/range {v2 .. v7}, Le/a/p5/o;->b(Le/a/p5/o;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/io/File;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/common/network/country/CountryListDto;

    .line 6
    new-instance v2, Le/a/b0/j/a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Le/a/b0/j/a;-><init>(Lcom/truecaller/common/network/country/CountryListDto;Ls1/z/c/f;)V

    .line 7
    invoke-virtual {v0, v2}, Le/a/b0/j/d;->f(Le/a/b0/j/a;)V

    .line 8
    invoke-virtual {v2}, Le/a/b0/j/a;->c()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, v0, Le/a/b0/j/d;->c:Landroid/content/Context;

    invoke-static {v1}, Le/a/b0/q/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, "iso"

    .line 10
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Le/a/b0/j/a;->a(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, "country"

    .line 11
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v4, v2, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz v4, :cond_0

    iput-object v1, v4, Lcom/truecaller/common/network/country/CountryListDto$b;->a:Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 13
    :cond_0
    sget-object v5, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v6, v0, Le/a/b0/j/d;->b:Ls1/w/f;

    const/4 v7, 0x0

    new-instance v8, Le/a/b0/j/e;

    invoke-direct {v8, v3, v2, v0}, Le/a/b0/j/e;-><init>(Ls1/w/d;Le/a/b0/j/a;Le/a/b0/j/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-object v2
.end method
