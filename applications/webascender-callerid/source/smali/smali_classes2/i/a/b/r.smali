.class final enum Li/a/b/r;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/a/b/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/a/b/r;",
        ">;",
        "Li/a/b/i;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/a/b/r;

.field public static final enum INSTANCE:Li/a/b/r;

.field private static final THREAD_LOCAL_STORAGE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Li/a/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/a/b/r;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a/b/r;->INSTANCE:Li/a/b/r;

    const/4 v1, 0x1

    new-array v1, v1, [Li/a/b/r;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/a/b/r;->$VALUES:[Li/a/b/r;

    .line 3
    const-class v0, Li/a/b/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li/a/b/r;->logger:Ljava/util/logging/Logger;

    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Li/a/b/r;->THREAD_LOCAL_STORAGE:Ljava/lang/ThreadLocal;

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

.method private synthetic c(Li/a/b/e;Li/a/b/e;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/a/b/r;->current()Li/a/b/e;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    sget-object p1, Li/a/b/r;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Context in storage not the expected context, Scope.close was not called correctly"

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object p1, Li/a/b/r;->THREAD_LOCAL_STORAGE:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/a/b/r;
    .locals 1

    .line 1
    const-class v0, Li/a/b/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a/b/r;

    return-object p0
.end method

.method public static values()[Li/a/b/r;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/r;->$VALUES:[Li/a/b/r;

    invoke-virtual {v0}, [Li/a/b/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a/b/r;

    return-object v0
.end method


# virtual methods
.method public attach(Li/a/b/e;)Li/a/b/p;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Li/a/b/r$a;->INSTANCE:Li/a/b/r$a;

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Li/a/b/r;->current()Li/a/b/e;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3
    sget-object p1, Li/a/b/r$a;->INSTANCE:Li/a/b/r$a;

    return-object p1

    .line 4
    :cond_1
    sget-object v1, Li/a/b/r;->THREAD_LOCAL_STORAGE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Li/a/b/b;

    invoke-direct {v1, p0, p1, v0}, Li/a/b/b;-><init>(Li/a/b/r;Li/a/b/e;Li/a/b/e;)V

    return-object v1
.end method

.method public current()Li/a/b/e;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/r;->THREAD_LOCAL_STORAGE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/b/e;

    return-object v0
.end method

.method public synthetic d(Li/a/b/e;Li/a/b/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li/a/b/r;->c(Li/a/b/e;Li/a/b/e;)V

    return-void
.end method
