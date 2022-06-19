.class public final Le/m/a/b/i/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/e<",
        "Le/m/a/b/i/e/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/m/a/b/i/e/d;

.field public static final b:Le/m/d/r/d;

.field public static final c:Le/m/d/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/b/i/e/d;

    invoke-direct {v0}, Le/m/a/b/i/e/d;-><init>()V

    sput-object v0, Le/m/a/b/i/e/d;->a:Le/m/a/b/i/e/d;

    const-string v0, "clientType"

    .line 2
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/d;->b:Le/m/d/r/d;

    const-string v0, "androidClientInfo"

    .line 3
    invoke-static {v0}, Le/m/d/r/d;->a(Ljava/lang/String;)Le/m/d/r/d;

    move-result-object v0

    sput-object v0, Le/m/a/b/i/e/d;->c:Le/m/d/r/d;

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
    check-cast p1, Le/m/a/b/i/e/p;

    check-cast p2, Le/m/d/r/f;

    .line 2
    sget-object v0, Le/m/a/b/i/e/d;->b:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/p;->b()Le/m/a/b/i/e/p$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    .line 3
    sget-object v0, Le/m/a/b/i/e/d;->c:Le/m/d/r/d;

    invoke-virtual {p1}, Le/m/a/b/i/e/p;->a()Le/m/a/b/i/e/a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Le/m/d/r/f;->add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;

    return-void
.end method
