.class public final Lkotlinx/coroutines/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/u;

.field public static final b:Lkotlinx/coroutines/internal/u;

.field private static final c:Lkotlinx/coroutines/internal/u;

.field private static final d:Lkotlinx/coroutines/internal/u;

.field private static final e:Lkotlinx/coroutines/internal/u;

.field private static final f:Lkotlinx/coroutines/o0;

.field private static final g:Lkotlinx/coroutines/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i1;->a:Lkotlinx/coroutines/internal/u;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i1;->b:Lkotlinx/coroutines/internal/u;

    .line 3
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i1;->c:Lkotlinx/coroutines/internal/u;

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i1;->d:Lkotlinx/coroutines/internal/u;

    .line 5
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/i1;->e:Lkotlinx/coroutines/internal/u;

    .line 6
    new-instance v0, Lkotlinx/coroutines/o0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/o0;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/i1;->f:Lkotlinx/coroutines/o0;

    .line 7
    new-instance v0, Lkotlinx/coroutines/o0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/o0;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/i1;->g:Lkotlinx/coroutines/o0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/i1;->a:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/i1;->c:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/o0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/i1;->g:Lkotlinx/coroutines/o0;

    return-object v0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/o0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/i1;->f:Lkotlinx/coroutines/o0;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/i1;->e:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/i1;->d:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/w0;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/x0;

    check-cast p0, Lkotlinx/coroutines/w0;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/x0;-><init>(Lkotlinx/coroutines/w0;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method
