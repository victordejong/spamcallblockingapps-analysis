.class public final synthetic Le/m/a/c/p1/h0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/m/a/c/p1/h0/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/c/p1/h0/b;

    invoke-direct {v0}, Le/m/a/c/p1/h0/b;-><init>()V

    sput-object v0, Le/m/a/c/p1/h0/b;->a:Le/m/a/c/p1/h0/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Le/m/a/c/p1/h0/l;

    check-cast p2, Le/m/a/c/p1/h0/l;

    .line 1
    iget-wide v0, p1, Le/m/a/c/p1/h0/l;->f:J

    iget-wide v2, p2, Le/m/a/c/p1/h0/l;->f:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Le/m/a/c/p1/h0/l;->a(Le/m/a/c/p1/h0/l;)I

    move-result p1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
