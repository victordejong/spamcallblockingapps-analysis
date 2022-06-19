.class public Lcom/google/firebase/inappmessaging/j0/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/f/e/a/a/a/e/g$b;


# direct methods
.method constructor <init>(Lg/f/e/a/a/a/e/g$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/l0;->a:Lg/f/e/a/a/a/e/g$b;

    return-void
.end method


# virtual methods
.method public a(Lg/f/e/a/a/a/e/d;)Lg/f/e/a/a/a/e/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/l0;->a:Lg/f/e/a/a/a/e/g$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lio/grpc/i1/b;->d(JLjava/util/concurrent/TimeUnit;)Lio/grpc/i1/b;

    move-result-object v0

    check-cast v0, Lg/f/e/a/a/a/e/g$b;

    invoke-virtual {v0, p1}, Lg/f/e/a/a/a/e/g$b;->h(Lg/f/e/a/a/a/e/d;)Lg/f/e/a/a/a/e/e;

    move-result-object p1

    return-object p1
.end method
