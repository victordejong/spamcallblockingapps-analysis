.class public Le/m/a/c/g1/b0/e$a;
.super Le/m/a/c/g1/q$b;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/b0/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/b0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public f(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method
