.class public abstract Le/a/h/b/d/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/truecaller/data/entity/HistoryEvent;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/HistoryEvent;Ls1/z/c/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    new-array v2, v1, [Ljava/lang/Long;

    aput-object p2, v2, v0

    invoke-static {v2}, Ls1/u/i;->f0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    iput-object p2, p0, Le/a/h/b/d/b/i;->a:Ljava/util/Set;

    .line 3
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Ls1/u/i;->f0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_1
    iput-object p1, p0, Le/a/h/b/d/b/i;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/h/b/d/b/i;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Le/a/h/b/d/b/i;->b:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
