.class final Lio/grpc/f1/e1;
.super Lio/grpc/f1/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/e1$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/grpc/f1/e1;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lio/grpc/f1/e1$a;",
            "Lio/grpc/f1/e1$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/grpc/f1/e1;->b:Ljava/lang/ref/ReferenceQueue;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/grpc/f1/e1;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    const-class v0, Lio/grpc/f1/e1;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/f1/e1;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/o0;)V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/f1/e1;->b:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Lio/grpc/f1/e1;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/f1/e1;-><init>(Lio/grpc/o0;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/o0;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/o0;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/grpc/f1/e1;",
            ">;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lio/grpc/f1/e1$a;",
            "Lio/grpc/f1/e1$a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/j0;-><init>(Lio/grpc/o0;)V

    .line 3
    new-instance v0, Lio/grpc/f1/e1$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/grpc/f1/e1$a;-><init>(Lio/grpc/f1/e1;Lio/grpc/o0;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method static synthetic i()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/e1;->d:Ljava/util/logging/Logger;

    return-object v0
.end method
