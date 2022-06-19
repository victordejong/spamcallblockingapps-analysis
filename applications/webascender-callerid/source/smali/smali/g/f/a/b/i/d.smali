.class final Lg/f/a/b/i/d;
.super Lg/f/a/b/i/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/a/b/i/d$b;
    }
.end annotation


# instance fields
.field private f:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lj/a/a;

.field private i:Lj/a/a;

.field private j:Lj/a/a;

.field private k:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/f/a/b/i/x/j/b0;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/f/a/b/i/x/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/f/a/b/i/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg/f/a/b/i/s;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lg/f/a/b/i/d;->e(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lg/f/a/b/i/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/a/b/i/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static c()Lg/f/a/b/i/s$a;
    .locals 2

    .line 1
    new-instance v0, Lg/f/a/b/i/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/f/a/b/i/d$b;-><init>(Lg/f/a/b/i/d$a;)V

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {}, Lg/f/a/b/i/j;->a()Lg/f/a/b/i/j;

    move-result-object v0

    invoke-static {v0}, Lg/f/a/b/i/u/a/a;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lg/f/a/b/i/d;->f:Lj/a/a;

    .line 2
    invoke-static {p1}, Lg/f/a/b/i/u/a/c;->a(Ljava/lang/Object;)Lg/f/a/b/i/u/a/b;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->g:Lj/a/a;

    .line 3
    invoke-static {}, Lg/f/a/b/i/y/c;->a()Lg/f/a/b/i/y/c;

    move-result-object v0

    invoke-static {}, Lg/f/a/b/i/y/d;->a()Lg/f/a/b/i/y/d;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/datatransport/runtime/backends/j;->a(Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/google/android/datatransport/runtime/backends/j;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->h:Lj/a/a;

    .line 4
    iget-object v0, p0, Lg/f/a/b/i/d;->g:Lj/a/a;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/runtime/backends/l;->a(Lj/a/a;Lj/a/a;)Lcom/google/android/datatransport/runtime/backends/l;

    move-result-object p1

    invoke-static {p1}, Lg/f/a/b/i/u/a/a;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->i:Lj/a/a;

    .line 5
    iget-object p1, p0, Lg/f/a/b/i/d;->g:Lj/a/a;

    invoke-static {}, Lg/f/a/b/i/x/j/f;->a()Lg/f/a/b/i/x/j/f;

    move-result-object v0

    invoke-static {}, Lg/f/a/b/i/x/j/g;->a()Lg/f/a/b/i/x/j/g;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lg/f/a/b/i/x/j/i0;->a(Lj/a/a;Lj/a/a;Lj/a/a;)Lg/f/a/b/i/x/j/i0;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->j:Lj/a/a;

    .line 6
    invoke-static {}, Lg/f/a/b/i/y/c;->a()Lg/f/a/b/i/y/c;

    move-result-object p1

    invoke-static {}, Lg/f/a/b/i/y/d;->a()Lg/f/a/b/i/y/d;

    move-result-object v0

    invoke-static {}, Lg/f/a/b/i/x/j/h;->a()Lg/f/a/b/i/x/j/h;

    move-result-object v1

    iget-object v2, p0, Lg/f/a/b/i/d;->j:Lj/a/a;

    invoke-static {p1, v0, v1, v2}, Lg/f/a/b/i/x/j/c0;->a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/f/a/b/i/x/j/c0;

    move-result-object p1

    invoke-static {p1}, Lg/f/a/b/i/u/a/a;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->k:Lj/a/a;

    .line 7
    invoke-static {}, Lg/f/a/b/i/y/c;->a()Lg/f/a/b/i/y/c;

    move-result-object p1

    invoke-static {p1}, Lg/f/a/b/i/x/g;->b(Lj/a/a;)Lg/f/a/b/i/x/g;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->l:Lj/a/a;

    .line 8
    iget-object v0, p0, Lg/f/a/b/i/d;->g:Lj/a/a;

    iget-object v1, p0, Lg/f/a/b/i/d;->k:Lj/a/a;

    invoke-static {}, Lg/f/a/b/i/y/d;->a()Lg/f/a/b/i/y/d;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lg/f/a/b/i/x/i;->a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/f/a/b/i/x/i;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->m:Lj/a/a;

    .line 9
    iget-object v0, p0, Lg/f/a/b/i/d;->f:Lj/a/a;

    iget-object v1, p0, Lg/f/a/b/i/d;->i:Lj/a/a;

    iget-object v2, p0, Lg/f/a/b/i/d;->k:Lj/a/a;

    invoke-static {v0, v1, p1, v2, v2}, Lg/f/a/b/i/x/d;->a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/f/a/b/i/x/d;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->n:Lj/a/a;

    .line 10
    iget-object v0, p0, Lg/f/a/b/i/d;->g:Lj/a/a;

    iget-object v1, p0, Lg/f/a/b/i/d;->i:Lj/a/a;

    iget-object v5, p0, Lg/f/a/b/i/d;->k:Lj/a/a;

    iget-object v3, p0, Lg/f/a/b/i/d;->m:Lj/a/a;

    iget-object v4, p0, Lg/f/a/b/i/d;->f:Lj/a/a;

    invoke-static {}, Lg/f/a/b/i/y/c;->a()Lg/f/a/b/i/y/c;

    move-result-object v6

    move-object v2, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;->a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->o:Lj/a/a;

    .line 11
    iget-object p1, p0, Lg/f/a/b/i/d;->f:Lj/a/a;

    iget-object v0, p0, Lg/f/a/b/i/d;->k:Lj/a/a;

    iget-object v1, p0, Lg/f/a/b/i/d;->m:Lj/a/a;

    invoke-static {p1, v0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;->a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->p:Lj/a/a;

    .line 12
    invoke-static {}, Lg/f/a/b/i/y/c;->a()Lg/f/a/b/i/y/c;

    move-result-object p1

    invoke-static {}, Lg/f/a/b/i/y/d;->a()Lg/f/a/b/i/y/d;

    move-result-object v0

    iget-object v1, p0, Lg/f/a/b/i/d;->n:Lj/a/a;

    iget-object v2, p0, Lg/f/a/b/i/d;->o:Lj/a/a;

    iget-object v3, p0, Lg/f/a/b/i/d;->p:Lj/a/a;

    invoke-static {p1, v0, v1, v2, v3}, Lg/f/a/b/i/t;->a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/f/a/b/i/t;

    move-result-object p1

    invoke-static {p1}, Lg/f/a/b/i/u/a/a;->a(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lg/f/a/b/i/d;->q:Lj/a/a;

    return-void
.end method


# virtual methods
.method a()Lg/f/a/b/i/x/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/b/i/d;->k:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/f/a/b/i/x/j/c;

    return-object v0
.end method

.method b()Lg/f/a/b/i/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/b/i/d;->q:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/f/a/b/i/r;

    return-object v0
.end method
