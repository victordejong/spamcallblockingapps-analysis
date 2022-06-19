.class public final synthetic Le/a/j4/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/a/j4/b/c/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/j4/b/c/a;

    invoke-direct {v0}, Le/a/j4/b/c/a;-><init>()V

    sput-object v0, Le/a/j4/b/c/a;->a:Le/a/j4/b/c/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Le/a/b0/p/a;

    check-cast p2, Le/a/b0/p/a;

    .line 1
    sget v0, Le/a/j4/b/c/e;->n:I

    .line 2
    iget-wide v0, p1, Le/a/b0/p/a;->c:D

    iget-wide v2, p2, Le/a/b0/p/a;->c:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    const/4 v5, 0x1

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double v0, v0, v2

    const/4 v1, -0x1

    if-lez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p1, Le/a/b0/p/a;->a:I

    iget p2, p2, Le/a/b0/p/a;->a:I

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    :goto_0
    move v5, v1

    :cond_2
    :goto_1
    return v5
.end method
