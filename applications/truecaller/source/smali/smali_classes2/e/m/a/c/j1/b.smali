.class public final synthetic Le/m/a/c/j1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/m/a/c/j1/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/c/j1/b;

    invoke-direct {v0}, Le/m/a/c/j1/b;-><init>()V

    sput-object v0, Le/m/a/c/j1/b;->a:Le/m/a/c/j1/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Le/m/a/c/j1/f;

    check-cast p2, Le/m/a/c/j1/f;

    .line 1
    sget v0, Le/m/a/c/j1/g$c;->l:I

    .line 2
    iget-wide v0, p1, Le/m/a/c/j1/f;->c:J

    iget-wide p1, p2, Le/m/a/c/j1/f;->c:J

    .line 3
    sget v2, Le/m/a/c/q1/d0;->a:I

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
