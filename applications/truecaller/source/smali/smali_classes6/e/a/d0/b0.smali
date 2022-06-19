.class public final Le/a/d0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d0/b0$e;,
        Le/a/d0/b0$f;,
        Le/a/d0/b0$b;,
        Le/a/d0/b0$d;,
        Le/a/d0/b0$c;,
        Le/a/d0/b0$g;
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
    iput-object p1, p0, Le/a/d0/b0;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Le/a/d0/v;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/b0$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/d0/b0$b;-><init>(Le/a/r2/e;Le/a/d0/v;Le/a/d0/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b(Le/a/d0/v;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/b0$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/d0/b0$d;-><init>(Le/a/r2/e;Le/a/d0/v;Le/a/d0/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public c(ILjava/lang/String;IIJLcom/truecaller/blocking/FilterMatch;)V
    .locals 13

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/d0/b0;->a:Le/a/r2/w;

    new-instance v12, Le/a/d0/b0$g;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v11, 0x0

    move-object v2, v12

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Le/a/d0/b0$g;-><init>(Le/a/r2/e;ILjava/lang/String;IIJLcom/truecaller/blocking/FilterMatch;Le/a/d0/b0$a;)V

    invoke-interface {v1, v12}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/b0$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/d0/b0$f;-><init>(Le/a/r2/e;ZLe/a/d0/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/b0$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/d0/b0$c;-><init>(Le/a/r2/e;Le/a/d0/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/b0$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/d0/b0$e;-><init>(Le/a/r2/e;Le/a/d0/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method
