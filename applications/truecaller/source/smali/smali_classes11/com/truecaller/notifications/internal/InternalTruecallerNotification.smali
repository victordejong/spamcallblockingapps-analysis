.class public Lcom/truecaller/notifications/internal/InternalTruecallerNotification;
.super Le/a/e/c2/i0;
.source "SourceFile"

# interfaces
.implements Le/a/j4/b/b/f;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;,
        Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/e/c2/i0;",
        "Le/a/j4/b/b/f;",
        "Ljava/lang/Comparable<",
        "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public j:Le/a/f4/f/c$a;

.field public k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/f4/f/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/e/c2/i0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    .line 4
    sget-object p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->NEW:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->l:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Le/m/e/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Le/a/e/c2/i0;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    const-string v0, "d"

    .line 8
    invoke-virtual {p1, v0}, Le/m/e/t;->m(Ljava/lang/String;)Le/m/e/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->i(Le/m/e/t;)Le/a/f4/f/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    const-string v0, "s"

    .line 9
    invoke-static {v0, p1}, Le/a/e/a2;->w(Ljava/lang/String;Le/m/e/t;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->getFromValue(Ljava/lang/Integer;)Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    const-string v0, "m"

    .line 10
    invoke-virtual {p1, v0}, Le/m/e/t;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Le/a/e/a2;->w(Ljava/lang/String;Le/m/e/t;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->l:Ljava/lang/Integer;

    const-string v0, "a"

    .line 11
    invoke-virtual {p1, v0}, Le/m/e/t;->l(Ljava/lang/String;)Le/m/e/q;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    instance-of v0, p1, Le/m/e/n;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Le/m/e/q;->c()Le/m/e/n;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->t(Le/m/e/n;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    goto :goto_2

    .line 14
    :cond_1
    instance-of v0, p1, Le/m/e/w;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Le/m/e/q;->g()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance p1, Le/m/e/g0/a;

    invoke-direct {p1, v0}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 18
    invoke-static {p1}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    instance-of v1, v0, Le/m/e/s;

    if-nez v1, :cond_3

    .line 21
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object p1

    sget-object v1, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    new-instance p1, Le/m/e/z;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p1, v0}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Le/m/e/g0/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_3
    :goto_1
    instance-of p1, v0, Le/m/e/n;

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {v0}, Le/m/e/q;->c()Le/m/e/n;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->t(Le/m/e/n;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 26
    new-instance v0, Le/m/e/r;

    invoke-direct {v0, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 27
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 28
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    :goto_2
    return-void
.end method

.method public constructor <init>(Le/m/e/t;Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Le/a/e/c2/i0;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    .line 31
    invoke-virtual {p0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->i(Le/m/e/t;)Le/a/f4/f/c$a;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    .line 32
    iput-object p2, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->l:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Le/a/e/c2/i0;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 38
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v3, v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v4, v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    invoke-virtual {v3, v4}, Le/a/f4/f/c$a;->a(Le/a/f4/f/c$a;)I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 41
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 42
    iget-object v2, v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->l:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_3
    iget-object p1, v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    .line 45
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 46
    iget-object v2, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v2, v2, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 47
    :cond_4
    iget-object p1, v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    iput-object p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    .line 48
    iput-object v1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->l:Ljava/lang/Integer;

    return-void

    .line 49
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty collection"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static t(Le/m/e/n;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/n;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Le/m/e/n;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 3
    invoke-virtual {p0, v1}, Le/m/e/n;->i(I)Le/m/e/q;

    move-result-object v2

    check-cast v2, Le/m/e/t;

    .line 4
    new-instance v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;

    invoke-direct {v3}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;-><init>()V

    const-string v4, "iurl"

    .line 5
    invoke-virtual {v2, v4}, Le/m/e/t;->n(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-static {v4, v2}, Le/a/e/a2;->G(Ljava/lang/String;Le/m/e/t;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->c:Ljava/lang/String;

    :cond_0
    const-string v4, "time"

    .line 7
    invoke-virtual {v2, v4}, Le/m/e/t;->n(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-static {v4, v2}, Le/a/e/a2;->z(Ljava/lang/String;Le/m/e/t;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->a:Ljava/lang/Long;

    :cond_1
    const-string v4, "act"

    .line 9
    invoke-virtual {v2, v4}, Le/m/e/t;->n(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 10
    invoke-static {v4, v2}, Le/a/e/a2;->z(Ljava/lang/String;Le/m/e/t;)J

    move-result-wide v4

    long-to-int v2, v4

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    sget-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->REPLIED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    iput-object v2, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    goto :goto_1

    .line 12
    :cond_3
    sget-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->DENIED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    iput-object v2, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    goto :goto_1

    .line 13
    :cond_4
    sget-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->ACCEPTED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    iput-object v2, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    goto :goto_1

    .line 14
    :cond_5
    sget-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->VIEWED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    iput-object v2, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    goto :goto_1

    .line 15
    :cond_6
    sget-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->NONE:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    iput-object v2, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    .line 16
    :cond_7
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public a()Le/m/e/t;
    .locals 10

    .line 1
    new-instance v0, Le/m/e/t;

    invoke-direct {v0}, Le/m/e/t;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    const-string v2, "a"

    const-string v3, "s"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_1

    .line 3
    :cond_0
    new-instance v5, Le/m/e/t;

    invoke-direct {v5}, Le/m/e/t;-><init>()V

    .line 4
    iget-object v6, v1, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    if-eqz v6, :cond_1

    .line 5
    new-instance v7, Le/m/e/t;

    invoke-direct {v7}, Le/m/e/t;-><init>()V

    .line 6
    iget-wide v8, v6, Le/a/f4/f/c$a$a;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "i"

    invoke-virtual {v7, v9, v8}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 7
    iget-object v8, v6, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    iget v8, v8, Lcom/truecaller/network/notification/NotificationScope;->value:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 8
    iget-object v8, v6, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    iget v8, v8, Lcom/truecaller/network/notification/NotificationType;->value:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "t"

    invoke-virtual {v7, v9, v8}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 9
    iget-wide v8, v6, Le/a/f4/f/c$a$a;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "c"

    invoke-virtual {v7, v8, v6}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 10
    iget-object v6, v5, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v8, "e"

    invoke-virtual {v6, v8, v7}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object v6, v1, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 12
    new-instance v6, Le/m/e/t;

    invoke-direct {v6}, Le/m/e/t;-><init>()V

    .line 13
    iget-object v7, v1, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 14
    iget-object v9, v1, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, v5, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v1, v2, v6}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    :goto_1
    iget-object v1, v0, Le/m/e/t;->a:Le/m/e/e0/s;

    if-nez v5, :cond_4

    sget-object v5, Le/m/e/s;->a:Le/m/e/s;

    :cond_4
    const-string v6, "d"

    invoke-virtual {v1, v6, v5}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-virtual {v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 18
    iget-object v1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->l:Ljava/lang/Integer;

    const-string v3, "m"

    invoke-virtual {v0, v3, v1}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19
    iget-object v1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    new-instance v4, Le/m/e/n;

    invoke-direct {v4}, Le/m/e/n;-><init>()V

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;

    .line 23
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v5, Le/m/e/t;

    invoke-direct {v5}, Le/m/e/t;-><init>()V

    .line 25
    iget-object v6, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->a:Ljava/lang/Long;

    if-eqz v6, :cond_6

    const-string v7, "time"

    .line 26
    invoke-virtual {v5, v7, v6}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 27
    :cond_6
    iget-object v6, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->c:Ljava/lang/String;

    if-eqz v6, :cond_7

    const-string v7, "iurl"

    .line 28
    invoke-virtual {v5, v7, v6}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_7
    iget-object v3, v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    invoke-virtual {v3}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->getVal()Ljava/lang/Long;

    move-result-object v3

    const-string v6, "act"

    invoke-virtual {v5, v6, v3}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    iget-object v3, v4, Le/m/e/n;->a:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 31
    invoke-virtual {v4}, Le/m/e/n;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 32
    iget-object v1, v0, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v1, v2, v4}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object p1, p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    invoke-virtual {v0, p1}, Le/a/f4/f/c$a;->a(Le/a/f4/f/c$a;)I

    move-result p1

    return p1
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p1, "s"

    .line 1
    invoke-virtual {p0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 3
    iget-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object p1, p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    invoke-virtual {v0, p1}, Le/a/f4/f/c$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Le/a/z3/i/e$b;->c:Le/a/z3/i/e$b;

    const-string v2, "size"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5
    :cond_2
    new-instance v0, Le/a/z3/i/a;

    invoke-direct {v0, v2, v1}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 6
    iput-boolean v3, v0, Le/a/z3/i/a;->a:Z

    .line 7
    invoke-static {v0, p1}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p1, "t"

    .line 1
    invoke-virtual {p0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "No Title"

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    invoke-virtual {v0}, Le/a/f4/f/c$a;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final i(Le/m/e/t;)Le/a/f4/f/c$a;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Le/a/f4/f/c$a;

    invoke-direct {v0}, Le/a/f4/f/c$a;-><init>()V

    const-string v1, "e"

    .line 2
    invoke-virtual {p1, v1}, Le/m/e/t;->m(Ljava/lang/String;)Le/m/e/t;

    move-result-object v1

    .line 3
    new-instance v2, Le/a/f4/f/c$a$a;

    invoke-direct {v2}, Le/a/f4/f/c$a$a;-><init>()V

    const-string v3, "i"

    .line 4
    invoke-static {v3, v1}, Le/a/e/a2;->z(Ljava/lang/String;Le/m/e/t;)J

    move-result-wide v3

    iput-wide v3, v2, Le/a/f4/f/c$a$a;->a:J

    const-string v3, "t"

    .line 5
    invoke-static {v3, v1}, Le/a/e/a2;->w(Ljava/lang/String;Le/m/e/t;)I

    move-result v3

    invoke-static {v3}, Lcom/truecaller/network/notification/NotificationType;->valueOf(I)Lcom/truecaller/network/notification/NotificationType;

    move-result-object v3

    iput-object v3, v2, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    const-string v3, "s"

    .line 6
    invoke-static {v3, v1}, Le/a/e/a2;->w(Ljava/lang/String;Le/m/e/t;)I

    move-result v3

    invoke-static {v3}, Lcom/truecaller/network/notification/NotificationScope;->valueOf(I)Lcom/truecaller/network/notification/NotificationScope;

    move-result-object v3

    iput-object v3, v2, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    const-string v3, "c"

    .line 7
    invoke-static {v3, v1}, Le/a/e/a2;->z(Ljava/lang/String;Le/m/e/t;)J

    move-result-wide v3

    iput-wide v3, v2, Le/a/f4/f/c$a$a;->d:J

    .line 8
    iput-object v2, v0, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    const-string v1, "a"

    .line 9
    invoke-virtual {p1, v1}, Le/m/e/t;->m(Ljava/lang/String;)Le/m/e/t;

    move-result-object p1

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {p1}, Le/m/e/t;->k()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Le/m/e/e0/s$b;

    .line 12
    iget-object p1, p1, Le/m/e/e0/s$b;->a:Le/m/e/e0/s;

    .line 13
    iget-object v2, p1, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    iget-object v2, v2, Le/m/e/e0/s$e;->d:Le/m/e/e0/s$e;

    .line 14
    iget v3, p1, Le/m/e/e0/s;->d:I

    .line 15
    :goto_0
    iget-object v4, p1, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    if-eq v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 16
    iget-object v4, p1, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    if-eq v2, v4, :cond_4

    .line 17
    iget v4, p1, Le/m/e/e0/s;->d:I

    if-ne v4, v3, :cond_3

    .line 18
    iget-object v4, v2, Le/m/e/e0/s$e;->d:Le/m/e/e0/s$e;

    .line 19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/e/q;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    instance-of v6, v5, Le/m/e/s;

    if-eqz v6, :cond_2

    const-string v5, ""

    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {v5}, Le/m/e/q;->g()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    goto :goto_0

    .line 24
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 25
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 26
    :cond_5
    iput-object v1, v0, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v0, v0, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "f"

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, "i"

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const-string v0, "n"

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v0, v0, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    iget-wide v0, v0, Le/a/f4/f/c$a$a;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/truecaller/network/notification/NotificationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v0, v0, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    iget-object v0, v0, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f08058c

    return v0

    :pswitch_0
    const v0, 0x7f08058e

    return v0

    :pswitch_1
    const v0, 0x7f08058d

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "u"

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "{d:"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Le/a/e/c2/i0;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 8
    :goto_1
    invoke-static {p1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-static {v1, p1}, Le/a/e/c2/i0;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v2

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Le/a/e/c2/i0;->g:Z

    .line 12
    iput-object v0, p0, Le/a/e/c2/i0;->h:Ljava/lang/CharSequence;

    .line 13
    iput-object p1, p0, Le/a/e/c2/i0;->i:Ljava/lang/CharSequence;

    return-void
.end method
