.class public final Le/a/a/b/s$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/s;->Oj(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/s;

.field public final synthetic b:Z

.field public final synthetic c:[Lcom/truecaller/messaging/data/types/Conversation;


# direct methods
.method public constructor <init>(Le/a/a/b/s;Z[Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/s$g;->a:Le/a/a/b/s;

    iput-boolean p2, p0, Le/a/a/b/s$g;->b:Z

    iput-object p3, p0, Le/a/a/b/s$g;->c:[Lcom/truecaller/messaging/data/types/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/a/b/s$g;->a:Le/a/a/b/s;

    iget-boolean v1, p0, Le/a/a/b/s$g;->b:Z

    iget-object v2, p0, Le/a/a/b/s$g;->c:[Lcom/truecaller/messaging/data/types/Conversation;

    array-length v2, v2

    if-eqz v1, :cond_0

    const-string v1, "PinThread"

    goto :goto_0

    :cond_0
    const-string v1, "UnpinThread"

    .line 3
    :goto_0
    iget-object v3, v0, Le/a/a/b/s;->S:Le/a/q2/a;

    const-string v4, "type"

    .line 4
    invoke-static {v1, v4}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 5
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    int-to-double v6, v2

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v6, "value"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tab"

    .line 7
    iget-object v0, v0, Le/a/a/b/s;->D:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/InboxTab;->getAnalyticsContext()Ljava/lang/String;

    move-result-object v0

    const-string v7, "name"

    .line 8
    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v5}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v4, v1, v3}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 11
    iget-object v0, p0, Le/a/a/b/s$g;->a:Le/a/a/b/s;

    .line 12
    iget-object v0, v0, Le/a/a/b/s;->Q:Le/a/p5/h0;

    .line 13
    iget-boolean v1, p0, Le/a/a/b/s$g;->b:Z

    if-eqz v1, :cond_1

    const v1, 0x7f100007

    goto :goto_1

    :cond_1
    const v1, 0x7f10000b

    .line 14
    :goto_1
    iget-object v2, p0, Le/a/a/b/s$g;->c:[Lcom/truecaller/messaging/data/types/Conversation;

    array-length v2, v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-interface {v0, v1, v2, v3}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getQuan\u2026                        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Le/a/a/b/s$g;->a:Le/a/a/b/s;

    .line 17
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/r;

    if-eqz v1, :cond_2

    .line 18
    invoke-interface {v1}, Le/a/a/b/r;->e()V

    .line 19
    invoke-interface {v1}, Le/a/a/b/r;->D0()V

    .line 20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v1, v0}, Le/a/a/b/r;->m(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
