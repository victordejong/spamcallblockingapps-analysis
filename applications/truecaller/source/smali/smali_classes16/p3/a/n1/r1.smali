.class public final Lp3/a/n1/r1;
.super Lp3/a/n1/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/r1$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lp3/a/n1/r1;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lp3/a/n1/r1$a;",
            "Lp3/a/n1/r1$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lp3/a/n1/r1;->b:Ljava/lang/ref/ReferenceQueue;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lp3/a/n1/r1;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    const-class v0, Lp3/a/n1/r1;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/n1/r1;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lp3/a/l0;)V
    .locals 3

    .line 1
    sget-object v0, Lp3/a/n1/r1;->b:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Lp3/a/n1/r1;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-direct {p0, p1}, Lp3/a/n1/n0;-><init>(Lp3/a/l0;)V

    .line 3
    new-instance v2, Lp3/a/n1/r1$a;

    invoke-direct {v2, p0, p1, v0, v1}, Lp3/a/n1/r1$a;-><init>(Lp3/a/n1/r1;Lp3/a/l0;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method
