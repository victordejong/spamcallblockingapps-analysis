.class final synthetic Lcom/google/firebase/inappmessaging/j0/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/c;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/j3;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/j3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/d3;->f:Lcom/google/firebase/inappmessaging/j0/j3;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/j3;)Li/c/y/c;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/d3;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/d3;-><init>(Lcom/google/firebase/inappmessaging/j0/j3;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/d3;->f:Lcom/google/firebase/inappmessaging/j0/j3;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/z2;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/j3;->a(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/z2;)V

    return-void
.end method
