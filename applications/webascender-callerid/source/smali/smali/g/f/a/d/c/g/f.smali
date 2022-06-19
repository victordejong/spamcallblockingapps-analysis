.class final Lg/f/a/d/c/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/c/g/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/f/a/d/c/g/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg/f/a/d/c/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method
