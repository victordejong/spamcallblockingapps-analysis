.class Lcom/google/firebase/components/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/m/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/m/b<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/firebase/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/firebase/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/google/firebase/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/google/firebase/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/components/v;->b()Lcom/google/firebase/m/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/x;->c:Lcom/google/firebase/m/a;

    .line 2
    invoke-static {}, Lcom/google/firebase/components/w;->a()Lcom/google/firebase/m/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/x;->d:Lcom/google/firebase/m/b;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/m/a;Lcom/google/firebase/m/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/m/a<",
            "TT;>;",
            "Lcom/google/firebase/m/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/components/x;->a:Lcom/google/firebase/m/a;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/components/x;->b:Lcom/google/firebase/m/b;

    return-void
.end method

.method static a()Lcom/google/firebase/components/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/components/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/x;

    sget-object v1, Lcom/google/firebase/components/x;->c:Lcom/google/firebase/m/a;

    sget-object v2, Lcom/google/firebase/components/x;->d:Lcom/google/firebase/m/b;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/components/x;-><init>(Lcom/google/firebase/m/a;Lcom/google/firebase/m/b;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/firebase/m/b;)V
    .locals 0

    return-void
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method d(Lcom/google/firebase/m/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/m/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/x;->b:Lcom/google/firebase/m/b;

    sget-object v1, Lcom/google/firebase/components/x;->d:Lcom/google/firebase/m/b;

    if-ne v0, v1, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/x;->a:Lcom/google/firebase/m/a;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/firebase/components/x;->a:Lcom/google/firebase/m/a;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/components/x;->b:Lcom/google/firebase/m/b;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v0, p1}, Lcom/google/firebase/m/a;->a(Lcom/google/firebase/m/b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/x;->b:Lcom/google/firebase/m/b;

    invoke-interface {v0}, Lcom/google/firebase/m/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
