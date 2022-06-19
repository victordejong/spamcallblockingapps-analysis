.class final synthetic Lcom/google/firebase/inappmessaging/j0/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/j3;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/j3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/h3;->f:Lcom/google/firebase/inappmessaging/j0/j3;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/j3;)Li/c/y/d;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/h3;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/h3;-><init>(Lcom/google/firebase/inappmessaging/j0/j3;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h3;->f:Lcom/google/firebase/inappmessaging/j0/j3;

    check-cast p1, Lcom/google/firebase/inappmessaging/j0/z2;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/j3;->m(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/z2;)Li/c/d;

    move-result-object p1

    return-object p1
.end method
