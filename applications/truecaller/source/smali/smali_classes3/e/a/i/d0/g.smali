.class public final Le/a/i/d0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/i/d0/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/d0/g;

    invoke-direct {v0}, Le/a/i/d0/g;-><init>()V

    sput-object v0, Le/a/i/d0/g;->a:Le/a/i/d0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/a/i/d0/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    and-int/lit8 p0, p6, 0x1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string p0, "postback"

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    and-int/lit8 p2, p6, 0x2

    const-string p3, "install"

    if-eqz p2, :cond_1

    move-object p2, p3

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    const/4 v0, 0x4

    and-int/2addr p6, v0

    if-eqz p6, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    :goto_2
    const-string p6, "type"

    .line 1
    invoke-static {p0, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subType"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "event"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "partnerId"

    invoke-static {p4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "trackerId"

    invoke-static {p5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x5

    new-array v4, v4, [Ls1/k;

    .line 2
    new-instance v5, Ls1/k;

    invoke-direct {v5, p6, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v5, v4, p0

    .line 3
    new-instance p0, Ls1/k;

    const-string p6, "subtype"

    invoke-direct {p0, p6, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x1

    aput-object p0, v4, p2

    .line 4
    new-instance p0, Ls1/k;

    invoke-direct {p0, v1, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x2

    aput-object p0, v4, p2

    const/4 p0, 0x3

    .line 5
    new-instance p2, Ls1/k;

    invoke-direct {p2, v2, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v4, p0

    .line 6
    new-instance p0, Ls1/k;

    invoke-direct {p0, v3, p5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p0, v4, v0

    .line 7
    invoke-static {v4}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object p0

    .line 8
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 9
    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string p2, "Uri.Builder().apply {\n  \u2026alue) }\n        }.build()"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "utf-8"

    .line 13
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p0, "URLEncoder.encode(this, \"utf-8\")"

    invoke-static {p1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method
