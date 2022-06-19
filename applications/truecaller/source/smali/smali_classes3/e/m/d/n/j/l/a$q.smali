.class public final Le/m/d/n/j/l/a$q;
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
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/d/n/j/l/a0$e$d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/d/n/j/l/a$q;

.field public static final b:Le/m/d/r/d;

.field public static final c:Le/m/d/r/d;

.field public static final d:Le/m/d/r/d;

.field public static final e:Le/m/d/r/d;

.field public static final f:Le/m/d/r/d;

.field public static final g:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/d/n/j/l/a$q;

    invoke-direct {v0}, Le/m/d/n/j/l/a$q;-><init>()V

    sput-object v0, Le/m/d/n/j/l/a$q;->a:Le/m/d/n/j/l/a$q;

    const-string v0, "batteryLevel"

    .line 2
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$q;->b:Le/m/d/r/d;

    const-string v0, "batteryVelocity"

    .line 3
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$q;->c:Le/m/d/r/d;

    const-string v0, "proximityOn"

    .line 4
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$q;->d:Le/m/d/r/d;

    const-string v0, "orientation"

    .line 5
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$q;->e:Le/m/d/r/d;

    const-string v0, "ramUsed"

    .line 6
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$q;->f:Le/m/d/r/d;

    const-string v0, "diskUsed"

    .line 7
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$q;->g:Le/m/d/r/d;

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
    check-cast p1, Le/m/d/n/j/l/a0$e$d$c;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/d/n/j/l/a$q;->b:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d$c;->a()Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 3
    sget-object v0, Le/m/d/n/j/l/a$q;->c:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d$c;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    .line 4
    sget-object v0, Le/m/d/n/j/l/a$q;->d:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d$c;->f()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Z)Le/m/d/r/f;

    .line 5
    sget-object v0, Le/m/d/n/j/l/a$q;->e:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d$c;->d()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    .line 6
    sget-object v0, Le/m/d/n/j/l/a$q;->f:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d$c;->e()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 7
    sget-object v0, Le/m/d/n/j/l/a$q;->g:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$d$c;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    return-void
.end method
