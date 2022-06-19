.class public Le/m/a/c/g1/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Le/m/a/c/g1/q$a;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/a/c/g1/q$b;->a:J

    .line 3
    new-instance p1, Le/m/a/c/g1/q$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Le/m/a/c/g1/r;->c:Le/m/a/c/g1/r;

    goto :goto_0

    :cond_0
    new-instance p2, Le/m/a/c/g1/r;

    invoke-direct {p2, v0, v1, p3, p4}, Le/m/a/c/g1/r;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

    iput-object p1, p0, Le/m/a/c/g1/q$b;->b:Le/m/a/c/g1/q$a;

    return-void
.end method


# virtual methods
.method public b(J)Le/m/a/c/g1/q$a;
    .locals 0

    .line 1
    iget-object p1, p0, Le/m/a/c/g1/q$b;->b:Le/m/a/c/g1/q$a;

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/q$b;->a:J

    return-wide v0
.end method
