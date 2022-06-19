.class public final Le/a/b0/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/j/a$a;
    }
.end annotation


# static fields
.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Le/a/b0/j/a$a;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/truecaller/common/network/country/CountryListDto;


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    new-instance v0, Le/a/b0/j/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b0/j/a$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/b0/j/a;->h:Le/a/b0/j/a$a;

    const-string v2, "1403"

    const-string v3, "1587"

    const-string v4, "1780"

    const-string v5, "1825"

    const-string v6, "1236"

    const-string v7, "1250"

    const-string v8, "1604"

    const-string v9, "1672"

    const-string v10, "1778"

    const-string v11, "1204"

    const-string v12, "1431"

    const-string v13, "1506"

    const-string v14, "1709"

    const-string v15, "1902"

    const-string v16, "1226"

    const-string v17, "1249"

    const-string v18, "1289"

    const-string v19, "1343"

    const-string v20, "1365"

    const-string v21, "1416"

    const-string v22, "1437"

    const-string v23, "1519"

    const-string v24, "1613"

    const-string v25, "1647"

    const-string v26, "1705"

    const-string v27, "1807"

    const-string v28, "1905"

    const-string v29, "1418"

    const-string v30, "1438"

    const-string v31, "1450"

    const-string v32, "1514"

    const-string v33, "1579"

    const-string v34, "1581"

    const-string v35, "1819"

    const-string v36, "1873"

    const-string v37, "1306"

    const-string v38, "1639"

    const-string v39, "1867"

    .line 1
    filled-new-array/range {v2 .. v39}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Le/a/b0/j/a;->e:[Ljava/lang/String;

    const-string v1, "733622"

    const-string v2, "76"

    const-string v3, "77"

    .line 3
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    sput-object v1, Le/a/b0/j/a;->f:[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ls1/k;

    .line 5
    new-instance v3, Ls1/k;

    const-string v4, "ca"

    invoke-direct {v3, v4, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 6
    new-instance v3, Ls1/k;

    const-string v4, "kz"

    invoke-direct {v3, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    .line 7
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/a/b0/j/a;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/common/network/country/CountryListDto;Ls1/z/c/f;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/b0/j/a;->a:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/b0/j/a;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/b0/j/a;->c:Ljava/util/Map;

    .line 5
    iget-object p1, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-nez p1, :cond_0

    goto/16 :goto_9

    .line 6
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v1, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/truecaller/common/network/country/CountryListDto$b;->b:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 10
    invoke-static {v1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 13
    iget-object v6, v6, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 15
    iget-object v3, v2, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x0

    if-nez v3, :cond_6

    move-object v3, v7

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 17
    :goto_2
    iget-object v6, v2, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    if-nez v6, :cond_7

    move-object v6, v7

    goto :goto_3

    .line 18
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_3
    if-nez v6, :cond_8

    goto :goto_4

    .line 19
    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    :goto_4
    const-string v6, "iso"

    .line 20
    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "name"

    .line 21
    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v6, Le/a/b0/j/a;->g:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 23
    array-length v6, v3

    if-nez v6, :cond_9

    move v6, v5

    goto :goto_5

    :cond_9
    move v6, v4

    :goto_5
    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    move v6, v4

    goto :goto_7

    :cond_b
    :goto_6
    move v6, v5

    :goto_7
    if-nez v6, :cond_c

    .line 24
    array-length v6, v3

    move v7, v4

    :goto_8
    if-ge v7, v6, :cond_5

    aget-object v8, v3, v7

    .line 25
    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 26
    :cond_c
    iget-object v3, v2, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v6, "it"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 27
    :cond_d
    invoke-static {p1}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/j/a;->a:Ljava/util/Map;

    .line 28
    invoke-static {p2}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/j/a;->b:Ljava/util/Map;

    .line 29
    invoke-static {v0}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/j/a;->c:Ljava/util/Map;

    :goto_9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 3

    const-string v0, "iso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/j/a;->a:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto;->countryListChecksum:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$b;->a:Lcom/truecaller/common/network/country/CountryListDto$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Le/a/p5/o;Le/a/b0/j/a;Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/o;",
            "Le/a/b0/j/a;",
            "Ljava/io/File;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/b0/j/a$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/b0/j/a$b;

    iget v1, v0, Le/a/b0/j/a$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b0/j/a$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b0/j/a$b;

    invoke-direct {v0, p0, p4}, Le/a/b0/j/a$b;-><init>(Le/a/b0/j/a;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/b0/j/a$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b0/j/a$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p2, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    const/4 v2, 0x0

    if-eqz p4, :cond_3

    iget-object v4, p4, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/truecaller/common/network/country/CountryListDto$b;->b:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    if-nez v4, :cond_5

    if-eqz p4, :cond_5

    .line 5
    iget-object v4, p4, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz v4, :cond_5

    .line 6
    iget-object v5, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/truecaller/common/network/country/CountryListDto$b;->b:Ljava/util/List;

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    sget-object v5, Ls1/u/s;->a:Ls1/u/s;

    .line 7
    :goto_2
    iput-object v5, v4, Lcom/truecaller/common/network/country/CountryListDto$b;->b:Ljava/util/List;

    :cond_5
    if-eqz p4, :cond_6

    .line 8
    iget-object v4, p4, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz v4, :cond_6

    iget-object v2, v4, Lcom/truecaller/common/network/country/CountryListDto$b;->a:Lcom/truecaller/common/network/country/CountryListDto$a;

    :cond_6
    if-nez v2, :cond_7

    if-eqz p4, :cond_7

    .line 9
    iget-object p4, p4, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Le/a/b0/j/a;->c()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v2

    iput-object v2, p4, Lcom/truecaller/common/network/country/CountryListDto$b;->a:Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 10
    :cond_7
    iget-object p4, p2, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    iput-object p4, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    .line 11
    iget-object p4, p2, Le/a/b0/j/a;->a:Ljava/util/Map;

    iput-object p4, p0, Le/a/b0/j/a;->a:Ljava/util/Map;

    .line 12
    iget-object p4, p2, Le/a/b0/j/a;->b:Ljava/util/Map;

    iput-object p4, p0, Le/a/b0/j/a;->b:Ljava/util/Map;

    .line 13
    iget-object p4, p2, Le/a/b0/j/a;->c:Ljava/util/Map;

    iput-object p4, p0, Le/a/b0/j/a;->c:Ljava/util/Map;

    .line 14
    invoke-virtual {p2}, Le/a/b0/j/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Le/a/b0/j/a;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    xor-int/2addr p2, v3

    or-int/lit8 p2, p2, 0x0

    if-eqz p2, :cond_8

    .line 15
    iput v3, v0, Le/a/b0/j/a$b;->e:I

    invoke-virtual {p0, p1, p3, v0}, Le/a/b0/j/a;->e(Le/a/p5/o;Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 16
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final e(Le/a/p5/o;Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/o;",
            "Ljava/io/File;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    new-instance v1, Le/a/b0/j/a$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Le/a/b0/j/a$c;-><init>(Le/a/b0/j/a;Ljava/io/File;Le/a/p5/o;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Le/a/b0/j/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.truecaller.common.country.CountryDataStore"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/b0/j/a;

    .line 3
    iget-object v1, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    iget-object v3, p1, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Le/a/b0/j/a;->a:Ljava/util/Map;

    iget-object v3, p1, Le/a/b0/j/a;->a:Ljava/util/Map;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Le/a/b0/j/a;->b:Ljava/util/Map;

    iget-object v3, p1, Le/a/b0/j/a;->b:Ljava/util/Map;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v1, p0, Le/a/b0/j/a;->c:Ljava/util/Map;

    iget-object p1, p1, Le/a/b0/j/a;->c:Ljava/util/Map;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/a/b0/j/a;->a:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Le/a/b0/j/a;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Le/a/b0/j/a;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
