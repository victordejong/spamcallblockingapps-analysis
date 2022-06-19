.class public final Le/m/a/c/g1/d0/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/d0/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/d0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Le/m/a/c/g1/d0/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/m/a/c/g1/q;
    .locals 5

    .line 1
    new-instance v0, Le/m/a/c/g1/q$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {v0, v3, v4, v1, v2}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    return-object v0
.end method

.method public b(Le/m/a/c/g1/e;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public d(J)V
    .locals 0

    return-void
.end method
