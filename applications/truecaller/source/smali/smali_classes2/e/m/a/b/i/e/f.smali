.class public final Le/m/a/b/i/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/a/b/i/e/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/a/b/i/e/f;

.field public static final b:Le/m/d/r/d;

.field public static final c:Le/m/d/r/d;

.field public static final d:Le/m/d/r/d;

.field public static final e:Le/m/d/r/d;

.field public static final f:Le/m/d/r/d;

.field public static final g:Le/m/d/r/d;

.field public static final h:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/b/i/e/f;

    invoke-direct {v0}, Le/m/a/b/i/e/f;-><init>()V

    sput-object v0, Le/m/a/b/i/e/f;->a:Le/m/a/b/i/e/f;

    const-string v0, "requestTimeMs"

    .line 2
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/f;->b:Le/m/d/r/d;

    const-string v0, "requestUptimeMs"

    .line 3
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/f;->c:Le/m/d/r/d;

    const-string v0, "clientInfo"

    .line 4
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/f;->d:Le/m/d/r/d;

    const-string v0, "logSource"

    .line 5
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/f;->e:Le/m/d/r/d;

    const-string v0, "logSourceName"

    .line 6
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/f;->f:Le/m/d/r/d;

    const-string v0, "logEvent"

    .line 7
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/f;->g:Le/m/d/r/d;

    const-string v0, "qosTier"

    .line 8
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/f;->h:Le/m/d/r/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/a/b/i/e/r;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/a/b/i/e/f;->b:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/r;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 3
    sget-object v0, Le/m/a/b/i/e/f;->c:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/r;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 4
    sget-object v0, Le/m/a/b/i/e/f;->d:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/r;->a()Le/m/a/b/i/e/p;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 5
    sget-object v0, Le/m/a/b/i/e/f;->e:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/r;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 6
    sget-object v0, Le/m/a/b/i/e/f;->f:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/r;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 7
    sget-object v0, Le/m/a/b/i/e/f;->g:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/r;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 8
    sget-object v0, Le/m/a/b/i/e/f;->h:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/r;->e()Le/m/a/b/i/e/u;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
