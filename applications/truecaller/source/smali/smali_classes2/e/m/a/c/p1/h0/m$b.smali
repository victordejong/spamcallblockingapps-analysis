.class public final Le/m/a/c/p1/h0/m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/p1/h0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/m/a/c/p1/h0/m$a;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Le/m/a/c/p1/h0/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/p1/h0/m$b;->a:Le/m/a/c/p1/h0/m$a;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Le/m/a/c/p1/h0/m$b;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 2
    iput-wide p1, p0, Le/m/a/c/p1/h0/m$b;->b:J

    .line 3
    iget-object v0, p0, Le/m/a/c/p1/h0/m$b;->a:Le/m/a/c/p1/h0/m$a;

    iget-wide v4, p0, Le/m/a/c/p1/h0/m$b;->c:J

    const-wide/16 v6, 0x0

    move-object v1, v0

    check-cast v1, Le/m/a/c/j1/m$a;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Le/m/a/c/j1/m$a;->a(JJJ)V

    :cond_0
    return-void
.end method
