.class public Lcom/google/firebase/inappmessaging/j0/q3/b/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/firebase/inappmessaging/j0/r2;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/r2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/a0;->a:Lcom/google/firebase/inappmessaging/j0/r2;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;Li/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/a0;->a:Lcom/google/firebase/inappmessaging/j0/r2;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/q3/b/z;->a(Li/c/g;)Lcom/google/firebase/inappmessaging/j0/r2$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j0/r2;->a(Lcom/google/firebase/inappmessaging/j0/r2$a;)V

    return-void
.end method


# virtual methods
.method public b()Li/c/x/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/x/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/y;->b(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;)Li/c/h;

    move-result-object v0

    sget-object v1, Li/c/a;->BUFFER:Li/c/a;

    .line 2
    invoke-static {v0, v1}, Li/c/f;->e(Li/c/h;Li/c/a;)Li/c/f;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Li/c/f;->C()Li/c/x/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Li/c/x/a;->K()Li/c/w/b;

    return-object v0
.end method

.method public c()Lcom/google/firebase/inappmessaging/j0/r2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/a0;->a:Lcom/google/firebase/inappmessaging/j0/r2;

    return-object v0
.end method
