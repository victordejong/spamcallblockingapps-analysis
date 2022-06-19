.class final Lcom/google/common/util/concurrent/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final c:Lcom/google/common/util/concurrent/a$c;

.field static final d:Lcom/google/common/util/concurrent/a$c;


# instance fields
.field final a:Z

.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/util/concurrent/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Lcom/google/common/util/concurrent/a$c;->d:Lcom/google/common/util/concurrent/a$c;

    .line 3
    sput-object v1, Lcom/google/common/util/concurrent/a$c;->c:Lcom/google/common/util/concurrent/a$c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/a$c;->d:Lcom/google/common/util/concurrent/a$c;

    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/a$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/a$c;->c:Lcom/google/common/util/concurrent/a$c;

    :goto_0
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/a$c;->a:Z

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/a$c;->b:Ljava/lang/Throwable;

    return-void
.end method
