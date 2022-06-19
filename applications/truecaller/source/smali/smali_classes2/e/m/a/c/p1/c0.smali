.class public final Le/m/a/c/p1/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/p1/c0$g;,
        Le/m/a/c/p1/c0$d;,
        Le/m/a/c/p1/c0$c;,
        Le/m/a/c/p1/c0$f;,
        Le/m/a/c/p1/c0$b;,
        Le/m/a/c/p1/c0$e;,
        Le/m/a/c/p1/c0$h;
    }
.end annotation


# static fields
.field public static final d:Le/m/a/c/p1/c0$c;

.field public static final e:Le/m/a/c/p1/c0$c;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Le/m/a/c/p1/c0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/p1/c0$d<",
            "+",
            "Le/m/a/c/p1/c0$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/m/a/c/p1/c0$c;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Le/m/a/c/p1/c0$c;-><init>(IJLe/m/a/c/p1/c0$a;)V

    sput-object v0, Le/m/a/c/p1/c0;->d:Le/m/a/c/p1/c0$c;

    .line 2
    new-instance v0, Le/m/a/c/p1/c0$c;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Le/m/a/c/p1/c0$c;-><init>(IJLe/m/a/c/p1/c0$a;)V

    sput-object v0, Le/m/a/c/p1/c0;->e:Le/m/a/c/p1/c0$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Le/m/a/c/q1/d0;->a:I

    .line 3
    new-instance v0, Le/m/a/c/q1/d;

    invoke-direct {v0, p1}, Le/m/a/c/q1/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 4
    iput-object p1, p0, Le/m/a/c/p1/c0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(ZJ)Le/m/a/c/p1/c0$c;
    .locals 2

    .line 1
    new-instance v0, Le/m/a/c/p1/c0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Le/m/a/c/p1/c0$c;-><init>(IJLe/m/a/c/p1/c0$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/c0;->b:Le/m/a/c/p1/c0$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
