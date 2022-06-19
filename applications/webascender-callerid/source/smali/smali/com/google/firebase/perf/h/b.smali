.class final Lcom/google/firebase/perf/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/google/firebase/perf/g/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/firebase/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/b<",
            "Lg/f/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lg/f/a/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/a/b/f<",
            "Lcom/google/firebase/perf/j/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/g/a;->e()Lcom/google/firebase/perf/g/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/h/b;->d:Lcom/google/firebase/perf/g/a;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/m/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/m/b<",
            "Lg/f/a/b/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/perf/h/b;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/perf/h/b;->b:Lcom/google/firebase/m/b;

    return-void
.end method

.method private a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/b;->c:Lg/f/a/b/f;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/h/b;->b:Lcom/google/firebase/m/b;

    invoke-interface {v0}, Lcom/google/firebase/m/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/f/a/b/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/perf/h/b;->a:Ljava/lang/String;

    const-class v2, Lcom/google/firebase/perf/j/i;

    const-string v3, "proto"

    .line 4
    invoke-static {v3}, Lg/f/a/b/b;->b(Ljava/lang/String;)Lg/f/a/b/b;

    move-result-object v3

    invoke-static {}, Lcom/google/firebase/perf/h/a;->a()Lg/f/a/b/e;

    move-result-object v4

    .line 5
    invoke-interface {v0, v1, v2, v3, v4}, Lg/f/a/b/g;->b(Ljava/lang/String;Ljava/lang/Class;Lg/f/a/b/b;Lg/f/a/b/e;)Lg/f/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/h/b;->c:Lg/f/a/b/f;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/firebase/perf/h/b;->d:Lcom/google/firebase/perf/g/a;

    const-string v1, "Flg TransportFactory is not available at the moment"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/h/b;->c:Lg/f/a/b/f;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public b(Lcom/google/firebase/perf/j/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/h/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/firebase/perf/h/b;->d:Lcom/google/firebase/perf/g/a;

    const-string v0, "Unable to dispatch event because Flg Transport is not available"

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/h/b;->c:Lg/f/a/b/f;

    invoke-static {p1}, Lg/f/a/b/c;->d(Ljava/lang/Object;)Lg/f/a/b/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/f/a/b/f;->a(Lg/f/a/b/c;)V

    return-void
.end method
