.class public final Le/a/a/k/a/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/a/b0$i;,
        Le/a/a/k/a/b0$c;,
        Le/a/a/k/a/b0$b;,
        Le/a/a/k/a/b0$j;,
        Le/a/a/k/a/b0$d;,
        Le/a/a/k/a/b0$g;,
        Le/a/a/k/a/b0$f;,
        Le/a/a/k/a/b0$e;,
        Le/a/a/k/a/b0$h;
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
    iput-object p1, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/b0$j;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/b0$j;-><init>(Le/a/r2/e;JLe/a/a/k/a/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/b0$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/b0$d;-><init>(Le/a/r2/e;JLe/a/a/k/a/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public c(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Reaction;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/b0$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/b0$c;-><init>(Le/a/r2/e;JLe/a/a/k/a/b0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public d(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/b0$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/b0$e;-><init>(Le/a/r2/e;JLe/a/a/k/a/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/b0$g;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/k/a/b0$g;-><init>(Le/a/r2/e;Le/a/a/k/a/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public f(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/b0$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/b0$b;-><init>(Le/a/r2/e;JLe/a/a/k/a/b0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public g(Ljava/lang/String;[Lcom/truecaller/messaging/data/types/Reaction;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/truecaller/messaging/data/types/Reaction;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/b0$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/b0$h;-><init>(Le/a/r2/e;Ljava/lang/String;[Lcom/truecaller/messaging/data/types/Reaction;Le/a/a/k/a/b0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public h(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/a/b0$i;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/b0$i;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Ljava/lang/String;Le/a/a/k/a/b0$a;)V

    invoke-interface {v0, v7}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public i([J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/b0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/b0$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/b0$f;-><init>(Le/a/r2/e;[JLe/a/a/k/a/b0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method
