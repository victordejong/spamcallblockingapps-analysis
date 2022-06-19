.class public final Le/a/a/y0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/y0/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/y0/p$c;,
        Le/a/a/y0/p$i;,
        Le/a/a/y0/p$l;,
        Le/a/a/y0/p$k;,
        Le/a/a/y0/p$b;,
        Le/a/a/y0/p$j;,
        Le/a/a/y0/p$f;,
        Le/a/a/y0/p$d;,
        Le/a/a/y0/p$g;,
        Le/a/a/y0/p$h;,
        Le/a/a/y0/p$n;,
        Le/a/a/y0/p$m;,
        Le/a/a/y0/p$o;,
        Le/a/a/y0/p$e;
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
    iput-object p1, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$o;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/y0/p$o;-><init>(Le/a/r2/e;JLe/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/y0/p$e;-><init>(Le/a/r2/e;JLe/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public c(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/y0/p$c;-><init>(Le/a/r2/e;Ljava/util/Collection;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$m;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/y0/p$m;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$k;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/y0/p$k;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public f(Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$i;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/y0/p$i;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Conversation;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public g(Lcom/truecaller/messaging/data/types/ImGroupInfo;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$j;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/y0/p$j;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/ImGroupInfo;ZLe/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public h(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$l;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/y0/p$l;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public i(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/y0/p$b;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/ImGroupInfo;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public j(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$n;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/y0/p$n;-><init>(Le/a/r2/e;Ljava/util/Map;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public k(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/y0/p$d;-><init>(Le/a/r2/e;JLe/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$g;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/y0/p$g;-><init>(Le/a/r2/e;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public m(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/y0/p$h;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public n(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/y0/p;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/y0/p$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/y0/p$f;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/y0/p$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method
