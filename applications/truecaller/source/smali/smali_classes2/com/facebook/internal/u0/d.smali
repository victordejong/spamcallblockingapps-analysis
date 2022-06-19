.class public final synthetic Lcom/facebook/internal/u0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u0/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u0/d;

    invoke-direct {v0}, Lcom/facebook/internal/u0/d;-><init>()V

    sput-object v0, Lcom/facebook/internal/u0/d;->a:Lcom/facebook/internal/u0/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    if-eqz p1, :cond_6

    .line 1
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2
    invoke-static {}, Lcom/facebook/internal/q0;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    invoke-static {}, Lcom/facebook/internal/u0/j;->b()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/io/File;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/facebook/internal/u0/n/c;->a:Lcom/facebook/internal/u0/n/c;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    const-string v1, "reportDir.listFiles { dir, name ->\n      name.matches(Regex(String.format(\"^%s[0-9]+.json$\", InstrumentUtility.ERROR_REPORT_PREFIX)))\n    }"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v2, p1

    move v3, v0

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 7
    new-instance v5, Lcom/facebook/internal/u0/n/d;

    invoke-direct {v5, v4}, Lcom/facebook/internal/u0/n/d;-><init>(Ljava/io/File;)V

    .line 8
    iget-object v4, v5, Lcom/facebook/internal/u0/n/d;->b:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v5, Lcom/facebook/internal/u0/n/d;->c:Ljava/lang/Long;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_4
    sget-object p1, Lcom/facebook/internal/u0/n/a;->a:Lcom/facebook/internal/u0/n/a;

    invoke-static {v1, p1}, Le/q/f/a/d/a;->V2(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 12
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_5

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 14
    :cond_5
    new-instance v0, Lcom/facebook/internal/u0/n/b;

    invoke-direct {v0, v1}, Lcom/facebook/internal/u0/n/b;-><init>(Ljava/util/ArrayList;)V

    const-string v1, "error_reports"

    invoke-static {v1, p1, v0}, Lcom/facebook/internal/u0/j;->e(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$b;)V

    :cond_6
    :goto_4
    return-void
.end method
