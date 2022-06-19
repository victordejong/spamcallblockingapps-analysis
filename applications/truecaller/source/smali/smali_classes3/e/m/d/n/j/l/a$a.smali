.class public final Le/m/d/n/j/l/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/n/j/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/d/n/j/l/a0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/d/n/j/l/a$a;

.field public static final b:Le/m/d/r/d;

.field public static final c:Le/m/d/r/d;

.field public static final d:Le/m/d/r/d;

.field public static final e:Le/m/d/r/d;

.field public static final f:Le/m/d/r/d;

.field public static final g:Le/m/d/r/d;

.field public static final h:Le/m/d/r/d;

.field public static final i:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/d/n/j/l/a$a;

    invoke-direct {v0}, Le/m/d/n/j/l/a$a;-><init>()V

    sput-object v0, Le/m/d/n/j/l/a$a;->a:Le/m/d/n/j/l/a$a;

    const-string v0, "pid"

    .line 2
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$a;->b:Le/m/d/r/d;

    const-string v0, "processName"

    .line 3
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$a;->c:Le/m/d/r/d;

    const-string v0, "reasonCode"

    .line 4
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$a;->d:Le/m/d/r/d;

    const-string v0, "importance"

    .line 5
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$a;->e:Le/m/d/r/d;

    const-string v0, "pss"

    .line 6
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$a;->f:Le/m/d/r/d;

    const-string v0, "rss"

    .line 7
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$a;->g:Le/m/d/r/d;

    const-string v0, "timestamp"

    .line 8
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$a;->h:Le/m/d/r/d;

    const-string v0, "traceFile"

    .line 9
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$a;->i:Le/m/d/r/d;

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
    check-cast p1, Le/m/d/n/j/l/a0$a;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/d/n/j/l/a$a;->b:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$a;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    .line 3
    sget-object v0, Le/m/d/n/j/l/a$a;->c:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 4
    sget-object v0, Le/m/d/n/j/l/a$a;->d:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$a;->e()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    .line 5
    sget-object v0, Le/m/d/n/j/l/a$a;->e:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$a;->a()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    .line 6
    sget-object v0, Le/m/d/n/j/l/a$a;->f:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$a;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 7
    sget-object v0, Le/m/d/n/j/l/a$a;->g:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$a;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 8
    sget-object v0, Le/m/d/n/j/l/a$a;->h:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$a;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 9
    sget-object v0, Le/m/d/n/j/l/a$a;->i:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
