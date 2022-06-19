.class public final Le/m/a/b/i/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/a/b/i/e/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/a/b/i/e/b;

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

.field public static final m:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/b/i/e/b;

    invoke-direct {v0}, Le/m/a/b/i/e/b;-><init>()V

    sput-object v0, Le/m/a/b/i/e/b;->a:Le/m/a/b/i/e/b;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->b:Le/m/d/r/d;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->c:Le/m/d/r/d;

    const-string v0, "hardware"

    .line 4
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->d:Le/m/d/r/d;

    const-string v0, "device"

    .line 5
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->e:Le/m/d/r/d;

    const-string v0, "product"

    .line 6
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->f:Le/m/d/r/d;

    const-string v0, "osBuild"

    .line 7
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->g:Le/m/d/r/d;

    const-string v0, "manufacturer"

    .line 8
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->h:Le/m/d/r/d;

    const-string v0, "fingerprint"

    .line 9
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->i:Le/m/d/r/d;

    const-string v0, "locale"

    .line 10
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->j:Le/m/d/r/d;

    const-string v0, "country"

    .line 11
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->k:Le/m/d/r/d;

    const-string v0, "mccMnc"

    .line 12
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->l:Le/m/d/r/d;

    const-string v0, "applicationBuild"

    .line 13
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/b;->m:Le/m/d/r/d;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/a/b/i/e/a;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/a/b/i/e/b;->b:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 3
    sget-object v0, Le/m/a/b/i/e/b;->c:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 4
    sget-object v0, Le/m/a/b/i/e/b;->d:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 5
    sget-object v0, Le/m/a/b/i/e/b;->e:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 6
    sget-object v0, Le/m/a/b/i/e/b;->f:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 7
    sget-object v0, Le/m/a/b/i/e/b;->g:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 8
    sget-object v0, Le/m/a/b/i/e/b;->h:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 9
    sget-object v0, Le/m/a/b/i/e/b;->i:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 10
    sget-object v0, Le/m/a/b/i/e/b;->j:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 11
    sget-object v0, Le/m/a/b/i/e/b;->k:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 12
    sget-object v0, Le/m/a/b/i/e/b;->l:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 13
    sget-object v0, Le/m/a/b/i/e/b;->m:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
