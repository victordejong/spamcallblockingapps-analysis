.class public Le/q/b/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/q/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Le/q/b/d$c;

.field public d:Le/q/b/d$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/q/b/d$c;->a:Ljava/lang/String;

    rsub-int/lit8 p2, p2, 0x9

    const/16 v0, 0xa

    mul-int/2addr p2, v0

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    .line 3
    :try_start_0
    sget-object v1, Le/q/b/d$b;->a:Le/q/b/d;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1, p1}, Le/q/b/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "tags"
    :try_end_0
    .catch Le/q/b/e/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    check-cast p1, Ljava/util/HashMap;

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, "brands"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    move p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Vendor classifier not inited"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Le/q/b/e/a; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    :goto_2
    add-int/2addr p2, v0

    .line 7
    iput p2, p0, Le/q/b/d$c;->b:I

    return-void
.end method
