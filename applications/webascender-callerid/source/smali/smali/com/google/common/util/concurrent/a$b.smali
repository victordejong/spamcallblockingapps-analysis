.class abstract Lcom/google/common/util/concurrent/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;Lcom/google/common/util/concurrent/a$e;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$e;",
            "Lcom/google/common/util/concurrent/a$e;",
            ")Z"
        }
    .end annotation
.end method

.method abstract b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method abstract c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$k;Lcom/google/common/util/concurrent/a$k;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$k;",
            "Lcom/google/common/util/concurrent/a$k;",
            ")Z"
        }
    .end annotation
.end method

.method abstract d(Lcom/google/common/util/concurrent/a$k;Lcom/google/common/util/concurrent/a$k;)V
.end method

.method abstract e(Lcom/google/common/util/concurrent/a$k;Ljava/lang/Thread;)V
.end method
