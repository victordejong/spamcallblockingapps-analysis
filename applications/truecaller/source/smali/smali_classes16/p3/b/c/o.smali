.class public abstract Lp3/b/c/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/b/c/o$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/b/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lp3/b/c/o$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lp3/b/c/p;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lp3/b/c/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lp3/b/c/o;->c:Ljava/util/Map;

    .line 2
    const-class v0, Lp3/b/c/o$a;

    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lp3/b/c/o;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lp3/b/c/p;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/b/c/p;",
            "Ljava/util/EnumSet<",
            "Lp3/b/c/o$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "context"

    .line 2
    invoke-static {p1, p2}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/b/c/o;->a:Lp3/b/c/p;

    .line 3
    sget-object p2, Lp3/b/c/o;->d:Ljava/util/Set;

    .line 4
    iput-object p2, p0, Lp3/b/c/o;->b:Ljava/util/Set;

    .line 5
    iget-object p1, p1, Lp3/b/c/p;->c:Lp3/b/c/u;

    .line 6
    invoke-virtual {p1}, Lp3/b/c/u;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lp3/b/c/o$a;->a:Lp3/b/c/o$a;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Span is sampled, but does not have RECORD_EVENTS set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lp3/b/c/m;)V
    .locals 12

    const-string v0, "messageEvent"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    .line 2
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lp3/b/c/n;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lp3/b/c/n;

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lp3/b/c/m;->d()Lp3/b/c/m$b;

    move-result-object v0

    sget-object v1, Lp3/b/c/m$b;->b:Lp3/b/c/m$b;

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lp3/b/c/n$a;->b:Lp3/b/c/n$a;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lp3/b/c/n$a;->a:Lp3/b/c/n$a;

    :goto_0
    move-object v3, v0

    .line 8
    invoke-virtual {p1}, Lp3/b/c/m;->c()J

    move-result-wide v0

    const-string v2, "type"

    .line 9
    invoke-static {v3, v2}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lp3/b/c/m;->e()J

    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lp3/b/c/m;->b()J

    move-result-wide v4

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-nez v0, :cond_2

    const-string v2, " messageId"

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    if-nez v1, :cond_3

    const-string v4, " uncompressedMessageSize"

    .line 15
    invoke-static {v2, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-nez p1, :cond_4

    const-string v4, " compressedMessageSize"

    .line 16
    invoke-static {v2, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    new-instance v11, Lp3/b/c/e;

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lp3/b/c/e;-><init>(Lp3/b/a/a;Lp3/b/c/n$a;JJJLp3/b/c/e$a;)V

    move-object p1, v11

    .line 22
    :goto_2
    invoke-virtual {p0, p1}, Lp3/b/c/o;->b(Lp3/b/c/n;)V

    return-void

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties:"

    invoke-static {v0, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lp3/b/c/n;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "event"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lp3/b/c/m;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lp3/b/c/m;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lp3/b/c/n;->d()Lp3/b/c/n$a;

    move-result-object v0

    sget-object v1, Lp3/b/c/n$a;->b:Lp3/b/c/n$a;

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lp3/b/c/m$b;->b:Lp3/b/c/m$b;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lp3/b/c/m$b;->a:Lp3/b/c/m$b;

    .line 7
    :goto_0
    invoke-virtual {p1}, Lp3/b/c/n;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lp3/b/c/m;->a(Lp3/b/c/m$b;J)Lp3/b/c/m$a;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lp3/b/c/n;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lp3/b/c/m$a;->b(J)Lp3/b/c/m$a;

    .line 9
    invoke-virtual {p1}, Lp3/b/c/n;->a()J

    move-result-wide v1

    check-cast v0, Lp3/b/c/d$b;

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lp3/b/c/d$b;->d:Ljava/lang/Long;

    .line 11
    invoke-virtual {v0}, Lp3/b/c/d$b;->a()Lp3/b/c/m;

    move-result-object p1

    .line 12
    :goto_1
    invoke-virtual {p0, p1}, Lp3/b/c/o;->a(Lp3/b/c/m;)V

    return-void
.end method

.method public abstract c(Lp3/b/c/l;)V
.end method

.method public d(Ljava/lang/String;Lp3/b/c/a;)V
    .locals 1

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp3/b/c/o;->e(Ljava/util/Map;)V

    return-void
.end method

.method public e(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/b/c/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lp3/b/c/o;->e(Ljava/util/Map;)V

    return-void
.end method
