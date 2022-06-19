.class public final Le/m/d/n/j/l/a$i;
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
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/d/n/j/l/a0$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/d/n/j/l/a$i;

.field public static final b:Le/m/d/r/d;

.field public static final c:Le/m/d/r/d;

.field public static final d:Le/m/d/r/d;

.field public static final e:Le/m/d/r/d;

.field public static final f:Le/m/d/r/d;

.field public static final g:Le/m/d/r/d;

.field public static final h:Le/m/d/r/d;

.field public static final i:Le/m/d/r/d;

.field public static final j:Le/m/d/r/d;

.field public static final k:Le/m/d/r/d;

.field public static final l:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/d/n/j/l/a$i;

    invoke-direct {v0}, Le/m/d/n/j/l/a$i;-><init>()V

    sput-object v0, Le/m/d/n/j/l/a$i;->a:Le/m/d/n/j/l/a$i;

    const-string v0, "generator"

    .line 2
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->b:Le/m/d/r/d;

    const-string v0, "identifier"

    .line 3
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->c:Le/m/d/r/d;

    const-string v0, "startedAt"

    .line 4
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->d:Le/m/d/r/d;

    const-string v0, "endedAt"

    .line 5
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->e:Le/m/d/r/d;

    const-string v0, "crashed"

    .line 6
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->f:Le/m/d/r/d;

    const-string v0, "app"

    .line 7
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->g:Le/m/d/r/d;

    const-string v0, "user"

    .line 8
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->h:Le/m/d/r/d;

    const-string v0, "os"

    .line 9
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->i:Le/m/d/r/d;

    const-string v0, "device"

    .line 10
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->j:Le/m/d/r/d;

    const-string v0, "events"

    .line 11
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->k:Le/m/d/r/d;

    const-string v0, "generatorType"

    .line 12
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$i;->l:Le/m/d/r/d;

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
    check-cast p1, Le/m/d/n/j/l/a0$e;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/d/n/j/l/a$i;->b:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 3
    sget-object v0, Le/m/d/n/j/l/a$i;->c:Le/m/d/r/d;

    .line 4
    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->g()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Le/m/d/n/j/l/a0;->a:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 8
    sget-object v0, Le/m/d/n/j/l/a$i;->d:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->i()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 9
    sget-object v0, Le/m/d/n/j/l/a$i;->e:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 10
    sget-object v0, Le/m/d/n/j/l/a$i;->f:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->k()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Z)Le/m/d/r/f;

    .line 11
    sget-object v0, Le/m/d/n/j/l/a$i;->g:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->a()Le/m/d/n/j/l/a0$e$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 12
    sget-object v0, Le/m/d/n/j/l/a$i;->h:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->j()Le/m/d/n/j/l/a0$e$f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 13
    sget-object v0, Le/m/d/n/j/l/a$i;->i:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->h()Le/m/d/n/j/l/a0$e$e;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 14
    sget-object v0, Le/m/d/n/j/l/a$i;->j:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->b()Le/m/d/n/j/l/a0$e$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 15
    sget-object v0, Le/m/d/n/j/l/a$i;->k:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->d()Le/m/d/n/j/l/b0;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 16
    sget-object v0, Le/m/d/n/j/l/a$i;->l:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e;->f()I

    move-result p1

    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    return-void
.end method
