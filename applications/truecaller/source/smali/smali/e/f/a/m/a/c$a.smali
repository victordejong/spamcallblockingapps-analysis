.class public Le/f/a/m/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/m/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/o<",
        "Le/f/a/n/p/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile b:Lu3/f$a;


# instance fields
.field public final a:Lu3/f$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Le/f/a/m/a/c$a;->b:Lu3/f$a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/f/a/m/a/c$a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/f/a/m/a/c$a;->b:Lu3/f$a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lu3/e0;

    .line 5
    new-instance v2, Lu3/e0$a;

    invoke-direct {v2}, Lu3/e0$a;-><init>()V

    invoke-direct {v1, v2}, Lu3/e0;-><init>(Lu3/e0$a;)V

    .line 6
    sput-object v1, Le/f/a/m/a/c$a;->b:Lu3/f$a;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Le/f/a/m/a/c$a;->b:Lu3/f$a;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Le/f/a/m/a/c$a;->a:Lu3/f$a;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Le/f/a/n/p/r;)Le/f/a/n/p/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/r;",
            ")",
            "Le/f/a/n/p/n<",
            "Le/f/a/n/p/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Le/f/a/m/a/c;

    iget-object v0, p0, Le/f/a/m/a/c$a;->a:Lu3/f$a;

    invoke-direct {p1, v0}, Le/f/a/m/a/c;-><init>(Lu3/f$a;)V

    return-object p1
.end method
