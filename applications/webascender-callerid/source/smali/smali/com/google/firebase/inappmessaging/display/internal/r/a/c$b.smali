.class public final Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/r/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/inappmessaging/display/internal/r/b/o;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/r/a/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/display/internal/r/a/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->a:Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    const-class v1, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/display/i/a/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/r/a/c;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->a:Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c;-><init>(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;Lcom/google/firebase/inappmessaging/display/internal/r/a/c$a;)V

    return-object v0
.end method

.method public b(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/i/a/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->a:Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    return-object p0
.end method
