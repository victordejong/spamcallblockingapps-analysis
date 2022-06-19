.class public final Le/a/d0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d0/x$d;,
        Le/a/d0/x$h;,
        Le/a/d0/x$b;,
        Le/a/d0/x$c;,
        Le/a/d0/x$g;,
        Le/a/d0/x$f;,
        Le/a/d0/x$e;
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
    iput-object p1, p0, Le/a/d0/x;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/settings/CallingSettings;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/d0/x;->a:Le/a/r2/w;

    new-instance v7, Le/a/d0/x$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/d0/x$e;-><init>(Le/a/r2/e;Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/settings/CallingSettings;Le/a/d0/x$a;)V

    invoke-interface {v0, v7}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/x;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/x$g;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/d0/x$g;-><init>(Le/a/r2/e;Le/a/d0/x$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public c(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/x;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/x$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/d0/x$f;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;Le/a/d0/x$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e(Le/a/d0/v;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/x;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/x$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/d0/x$h;-><init>(Le/a/r2/e;Le/a/d0/v;ZLe/a/d0/x$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/x;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/x$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/d0/x$c;-><init>(Le/a/r2/e;Le/a/d0/x$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public g()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d0/x;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/x$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/d0/x$d;-><init>(Le/a/r2/e;Le/a/d0/x$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/x;->a:Le/a/r2/w;

    new-instance v1, Le/a/d0/x$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/d0/x$b;-><init>(Le/a/r2/e;Le/a/d0/x$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method
