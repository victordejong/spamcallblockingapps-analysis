.class public final Le/a/a/k/x/b;
.super Le/a/a/k/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/k/g<",
        "Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;",
        "Le/a/a/k/x/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/e4/p;Le/a/u3/g;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/a/k/g;-><init>(Landroid/content/Context;Le/a/e4/p;Le/a/u3/g;)V

    return-void
.end method


# virtual methods
.method public c(JLe/a/a/k/j;Le/a/a/k/m;Lcom/truecaller/data/entity/messaging/Participant;Z)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    const-string p1, "threadInfoCache"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "participantCache"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "participant"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/truecaller/data/entity/messaging/Participant;

    const/4 p2, 0x0

    aput-object p5, p1, p2

    .line 1
    invoke-static {p1}, Ls1/u/i;->f0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/ContentResolver;Le/a/a/k/j;Le/a/a/k/m;Lw3/b/a/b;Lw3/b/a/b;Z)Le/a/a/k/g$a;
    .locals 7

    const-string p6, "resolver"

    .line 1
    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "threadInfoCache"

    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "participantCache"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "timeTo"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "timeFrom"

    invoke-static {p5, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    .line 3
    sget-object v2, Le/a/a/k/x/c;->a:[Ljava/lang/String;

    const/4 p2, 0x2

    new-array v4, p2, [Ljava/lang/String;

    .line 4
    iget-wide v5, p4, Lw3/b/a/e0/e;->a:J

    .line 5
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    aput-object p2, v4, p4

    const/4 p2, 0x1

    .line 6
    iget-wide p4, p5, Lw3/b/a/e0/e;->a:J

    .line 7
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v4, p2

    const-string v3, "timestamp >=? AND timestamp <=? AND type IN (1, 2, 3) AND (subscription_component_name != \'com.truecaller.voip.manager.GROUP_VOIP\' OR subscription_component_name IS NULL)"

    const-string v5, "timestamp DESC, _id DESC"

    move-object v0, p1

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p2, Le/a/a/k/x/a;

    const-string p4, "it"

    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p3}, Le/a/a/k/x/a;-><init>(Landroid/database/Cursor;Le/a/a/k/m;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public f(Le/a/a/k/j;Lcom/truecaller/messaging/data/types/TransportInfo;I)Landroid/content/ContentValues;
    .locals 0

    .line 1
    check-cast p2, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    const-string p3, "threadInfoCache"

    .line 2
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Le/a/c/p/a;->O0(Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "ContentProviderUtils.getTransportInfoValues(info)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z
    .locals 1

    .line 1
    check-cast p2, Le/a/a/k/x/a;

    const-string v0, "localData"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "remoteData"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public h(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z
    .locals 3

    .line 1
    check-cast p2, Le/a/a/k/x/a;

    const-string v0, "localData"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteData"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, Le/a/a/g/d0;

    invoke-virtual {p1}, Le/a/a/g/d0;->k()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Le/a/a/g/d0;->X0()Z

    move-result v0

    invoke-virtual {p2}, Le/a/a/k/x/a;->X0()Z

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Le/a/a/g/d0;->Y()Z

    move-result p1

    invoke-virtual {p2}, Le/a/a/k/x/a;->Y()Z

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public i(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Le/a/a/g/j0/g0;Le/a/a/k/g$a;Z)Z
    .locals 0

    .line 1
    check-cast p5, Le/a/a/k/x/a;

    const-string p6, "threadInfoCache"

    .line 2
    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "participantCache"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "operations"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "localData"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "remoteData"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p5}, Le/a/a/k/x/a;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object p1

    .line 5
    check-cast p4, Le/a/a/g/d0;

    invoke-virtual {p4}, Le/a/a/g/d0;->u()J

    move-result-wide p4

    .line 6
    iput-wide p4, p1, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    const-string p2, "remoteData\n             \u2026\n                .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 8
    invoke-static {p3, p1, p2}, Le/a/c/p/a;->w3(Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;I)V

    const/4 p1, 0x1

    return p1
.end method
