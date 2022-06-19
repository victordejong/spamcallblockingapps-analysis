.class public final Le/a/d/b/a/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/a/j;-><init>(Ls1/w/f;Le/a/b0/e/f;Le/a/d/c0/f0;Le/a/p5/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/b/a/a/j;


# direct methods
.method public constructor <init>(Le/a/d/b/a/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lq3/a/p1;
    .locals 7

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    new-instance v4, Le/a/d/b/a/a/j$a$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/b/a/a/j$a$b;-><init>(Le/a/d/b/a/a/j$a;Ljava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public b(IIZ)Lq3/a/p1;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    new-instance v7, Le/a/d/b/a/a/j$a$d;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/d/b/a/a/j$a$d;-><init>(Le/a/d/b/a/a/j$a;IIZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public c(ZJ)Lq3/a/p1;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    new-instance v7, Le/a/d/b/a/a/j$a$c;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/d/b/a/a/j$a$c;-><init>(Le/a/d/b/a/a/j$a;ZJLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public t()Lq3/a/p1;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    new-instance v3, Le/a/d/b/a/a/j$a$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/d/b/a/a/j$a$a;-><init>(Le/a/d/b/a/a/j$a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/b/a/a/j$a;->a:Le/a/d/b/a/a/j;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/a/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/d/b/a/a/i;->q()V

    :cond_0
    return-void
.end method
