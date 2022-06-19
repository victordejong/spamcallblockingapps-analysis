.class final synthetic Lcom/google/firebase/inappmessaging/j0/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/e;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/j3;

.field private final g:Lcom/google/firebase/inappmessaging/model/m;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/c3;->f:Lcom/google/firebase/inappmessaging/j0/j3;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/c3;->g:Lcom/google/firebase/inappmessaging/model/m;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;)Li/c/y/e;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/c3;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/c3;-><init>(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;)V

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/c3;->f:Lcom/google/firebase/inappmessaging/j0/j3;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/c3;->g:Lcom/google/firebase/inappmessaging/model/m;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/y2;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/j0/j3;->p(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/y2;)Z

    move-result p1

    return p1
.end method
