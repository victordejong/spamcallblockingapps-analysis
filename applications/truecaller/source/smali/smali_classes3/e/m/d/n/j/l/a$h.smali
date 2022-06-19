.class public final Le/m/d/n/j/l/a$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/d/n/j/l/a0$e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/d/n/j/l/a$h;

.field public static final b:Le/m/d/r/d;

.field public static final c:Le/m/d/r/d;

.field public static final d:Le/m/d/r/d;

.field public static final e:Le/m/d/r/d;

.field public static final f:Le/m/d/r/d;

.field public static final g:Le/m/d/r/d;

.field public static final h:Le/m/d/r/d;

.field public static final i:Le/m/d/r/d;

.field public static final j:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/d/n/j/l/a$h;

    invoke-direct {v0}, Le/m/d/n/j/l/a$h;-><init>()V

    sput-object v0, Le/m/d/n/j/l/a$h;->a:Le/m/d/n/j/l/a$h;

    const-string v0, "arch"

    .line 2
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->b:Le/m/d/r/d;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->c:Le/m/d/r/d;

    const-string v0, "cores"

    .line 4
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->d:Le/m/d/r/d;

    const-string v0, "ram"

    .line 5
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->e:Le/m/d/r/d;

    const-string v0, "diskSpace"

    .line 6
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->f:Le/m/d/r/d;

    const-string v0, "simulator"

    .line 7
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->g:Le/m/d/r/d;

    const-string v0, "state"

    .line 8
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->h:Le/m/d/r/d;

    const-string v0, "manufacturer"

    .line 9
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->i:Le/m/d/r/d;

    const-string v0, "modelClass"

    .line 10
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/l/a$h;->j:Le/m/d/r/d;

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
    check-cast p1, Le/m/d/n/j/l/a0$e$c;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/d/n/j/l/a$h;->b:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->a()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    .line 3
    sget-object v0, Le/m/d/n/j/l/a$h;->c:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 4
    sget-object v0, Le/m/d/n/j/l/a$h;->d:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    .line 5
    sget-object v0, Le/m/d/n/j/l/a$h;->e:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 6
    sget-object v0, Le/m/d/n/j/l/a$h;->f:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Le/m/d/r/f;->add(Le/m/d/r/d;J)Le/m/d/r/f;

    .line 7
    sget-object v0, Le/m/d/n/j/l/a$h;->g:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->i()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Z)Le/m/d/r/f;

    .line 8
    sget-object v0, Le/m/d/n/j/l/a$h;->h:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->h()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;I)Le/m/d/r/f;

    .line 9
    sget-object v0, Le/m/d/n/j/l/a$h;->i:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 10
    sget-object v0, Le/m/d/n/j/l/a$h;->j:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/d/n/j/l/a0$e$c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
