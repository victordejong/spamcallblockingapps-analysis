.class final enum Lzipkin2/reporter/b/b$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/reporter/b/b$d;",
        ">;",
        "Ljava/util/concurrent/ThreadFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/reporter/b/b$d;

.field public static final enum INSTANCE:Lzipkin2/reporter/b/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzipkin2/reporter/b/b$d;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/reporter/b/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/b/b$d;->INSTANCE:Lzipkin2/reporter/b/b$d;

    const/4 v1, 0x1

    new-array v1, v1, [Lzipkin2/reporter/b/b$d;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lzipkin2/reporter/b/b$d;->$VALUES:[Lzipkin2/reporter/b/b$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/reporter/b/b$d;
    .locals 1

    .line 1
    const-class v0, Lzipkin2/reporter/b/b$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/reporter/b/b$d;

    return-object p0
.end method

.method public static values()[Lzipkin2/reporter/b/b$d;
    .locals 1

    .line 1
    sget-object v0, Lzipkin2/reporter/b/b$d;->$VALUES:[Lzipkin2/reporter/b/b$d;

    invoke-virtual {v0}, [Lzipkin2/reporter/b/b$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/reporter/b/b$d;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "OkHttpSender Dispatcher"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
