.class public final synthetic Le/a/k3/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/a/k3/l/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/k3/l/a;

    invoke-direct {v0}, Le/a/k3/l/a;-><init>()V

    sput-object v0, Le/a/k3/l/a;->a:Le/a/k3/l/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/truecaller/data/entity/Number;

    check-cast p2, Lcom/truecaller/data/entity/Number;

    .line 1
    sget-object v0, Lcom/truecaller/data/entity/Number;->b:[I

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->o()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->o()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/truecaller/data/entity/Entity;->presentationCompare([Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    .line 5
    :cond_0
    sget-object p1, Lcom/truecaller/data/entity/Number;->b:[I

    array-length p2, p1

    :goto_0
    if-ge v2, p2, :cond_4

    aget v4, p1, v2

    if-eq v0, v4, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v0, v4, :cond_3

    const/4 v3, -0x1

    :cond_3
    move p1, v3

    goto :goto_2

    :cond_4
    sub-int p1, v0, v1

    :goto_2
    return p1
.end method
