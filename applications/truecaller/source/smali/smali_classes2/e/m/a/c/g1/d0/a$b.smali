.class public final Le/m/a/c/g1/d0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/d0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/c/g1/d0/a;


# direct methods
.method public constructor <init>(Le/m/a/c/g1/d0/a;Le/m/a/c/g1/d0/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/d0/a$b;->a:Le/m/a/c/g1/d0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J)Le/m/a/c/g1/q$a;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/d0/a$b;->a:Le/m/a/c/g1/d0/a;

    .line 2
    iget-object v1, v0, Le/m/a/c/g1/d0/a;->d:Le/m/a/c/g1/d0/h;

    .line 3
    iget v1, v1, Le/m/a/c/g1/d0/h;->i:I

    int-to-long v1, v1

    mul-long/2addr v1, p1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 4
    iget-wide v5, v0, Le/m/a/c/g1/d0/a;->b:J

    .line 5
    iget-wide v3, v0, Le/m/a/c/g1/d0/a;->c:J

    sub-long v7, v3, v5

    mul-long/2addr v7, v1

    .line 6
    iget-wide v0, v0, Le/m/a/c/g1/d0/a;->f:J

    .line 7
    div-long/2addr v7, v0

    add-long/2addr v7, v5

    const-wide/16 v0, 0x7530

    sub-long v0, v7, v0

    const-wide/16 v7, 0x1

    sub-long v7, v3, v7

    move-wide v3, v0

    .line 8
    invoke-static/range {v3 .. v8}, Le/m/a/c/q1/d0;->g(JJJ)J

    move-result-wide v0

    .line 9
    new-instance v2, Le/m/a/c/g1/q$a;

    new-instance v3, Le/m/a/c/g1/r;

    invoke-direct {v3, p1, p2, v0, v1}, Le/m/a/c/g1/r;-><init>(JJ)V

    invoke-direct {v2, v3}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

    return-object v2
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/d0/a$b;->a:Le/m/a/c/g1/d0/a;

    .line 2
    iget-object v1, v0, Le/m/a/c/g1/d0/a;->d:Le/m/a/c/g1/d0/h;

    .line 3
    iget-wide v2, v0, Le/m/a/c/g1/d0/a;->f:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    .line 4
    iget v0, v1, Le/m/a/c/g1/d0/h;->i:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method
