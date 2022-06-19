.class public final Lg/g/b/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lg/g/b/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/g/b/c/a;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lg/g/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg/g/b/c/c;->a:Lg/g/b/c/a;

    return-void
.end method

.method public static final a()Lg/g/b/c/a;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/c/c;->a:Lg/g/b/c/a;

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$getSanitizedUrl"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/c0/j;

    const-string v1, "[|\\\\?*<\":_>+/\']"

    invoke-direct {v0, v1}, Lkotlin/c0/j;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/c0/j;->d(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/io/File;)Lg/g/b/c/a;
    .locals 8

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "this.name"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/c0/m;->r0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lg/g/b/c/c;->d(Ljava/util/List;Ljava/io/File;)Lg/g/b/c/a;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lg/g/b/c/c;->a:Lg/g/b/c/a;

    :goto_0
    return-object p0
.end method

.method private static final d(Ljava/util/List;Ljava/io/File;)Lg/g/b/c/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Lg/g/b/c/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "."

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lkotlin/c0/m;->D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lkotlin/c0/m;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 5
    new-instance v0, Lg/g/b/c/a;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file.path"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0, v1}, Lg/g/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_3
    sget-object v0, Lg/g/b/c/c;->a:Lg/g/b/c/a;

    goto :goto_3

    .line 7
    :cond_4
    sget-object v0, Lg/g/b/c/c;->a:Lg/g/b/c/a;

    :goto_3
    return-object v0
.end method

.method public static final e(Ljava/io/File;)Lg/g/b/c/b;
    .locals 10

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v2, "this.name"

    invoke-static {v4, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/c0/m;->r0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-static {v2, p0}, Lg/g/b/c/c;->d(Ljava/util/List;Ljava/io/File;)Lg/g/b/c/a;

    move-result-object p0

    .line 4
    sget-object v4, Lg/g/b/c/c;->a:Lg/g/b/c/a;

    invoke-static {p0, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 5
    new-instance v0, Lg/g/b/c/b;

    const/4 v1, 0x0

    .line 6
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 9
    invoke-direct {v0, p0, v1, v3, v2}, Lg/g/b/c/b;-><init>(Lg/g/b/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 10
    :cond_0
    new-instance p0, Lg/g/b/c/b;

    invoke-direct {p0, v4, v1, v1, v0}, Lg/g/b/c/b;-><init>(Lg/g/b/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Lg/g/b/c/b;

    sget-object v2, Lg/g/b/c/c;->a:Lg/g/b/c/a;

    invoke-direct {p0, v2, v1, v1, v0}, Lg/g/b/c/b;-><init>(Lg/g/b/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method
