.class public final Le/a/q2/y0/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/y0/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/a/q2/y0/a/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Le/a/q2/y0/a/a;
    .locals 0

    and-int/lit8 p2, p5, 0x2

    and-int/lit8 p2, p5, 0x4

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    move-object p3, p4

    :cond_0
    and-int/lit8 p2, p5, 0x8

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "viewId"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p3, :cond_1

    const-string p2, "Type"

    .line 3
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4
    :cond_1
    new-instance p2, Le/a/q2/y0/a/a;

    invoke-direct {p2, p1, p4, p0}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p2
.end method
