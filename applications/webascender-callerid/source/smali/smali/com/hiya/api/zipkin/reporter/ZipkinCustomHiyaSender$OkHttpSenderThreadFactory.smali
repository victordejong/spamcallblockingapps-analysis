.class final enum Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OkHttpSenderThreadFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;",
        ">;",
        "Ljava/util/concurrent/ThreadFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

.field public static final enum INSTANCE:Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;->INSTANCE:Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;->$VALUES:[Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

    return-object p0
.end method

.method public static values()[Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;->$VALUES:[Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

    invoke-virtual {v0}, [Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$OkHttpSenderThreadFactory;

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
