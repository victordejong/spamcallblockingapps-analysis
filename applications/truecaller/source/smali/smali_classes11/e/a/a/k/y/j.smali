.class public final Le/a/a/k/y/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/y/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/y/j$b;,
        Le/a/a/k/y/j$c;,
        Le/a/a/k/y/j$e;,
        Le/a/a/k/y/j$d;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/k/y/j;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a([BLandroid/net/Uri;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/k/y/j;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/y/j$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/k/y/j$e;-><init>(Le/a/r2/e;[BLandroid/net/Uri;ILe/a/a/k/y/j$a;)V

    invoke-interface {v0, v7}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b([BLandroid/net/Uri;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/y/j;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/y/j$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/y/j$c;-><init>(Le/a/r2/e;[BLandroid/net/Uri;Le/a/a/k/y/j$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public c(JJLe/d/b/a/b/t;Landroid/net/Uri;)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/y/j;->a:Le/a/r2/w;

    new-instance v11, Le/a/a/k/y/j$d;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v10, 0x0

    move-object v2, v11

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Le/a/a/k/y/j$d;-><init>(Le/a/r2/e;JJLe/d/b/a/b/t;Landroid/net/Uri;Le/a/a/k/y/j$a;)V

    invoke-interface {v1, v11}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public d(J[BLandroid/net/Uri;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/k/y/j;->a:Le/a/r2/w;

    new-instance v9, Le/a/a/k/y/j$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v8, 0x0

    move-object v1, v9

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Le/a/a/k/y/j$b;-><init>(Le/a/r2/e;J[BLandroid/net/Uri;ZLe/a/a/k/y/j$a;)V

    invoke-interface {v0, v9}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method
