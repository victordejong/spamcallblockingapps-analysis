.class final synthetic Lcom/google/firebase/inappmessaging/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/c;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/q;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/p;->f:Lcom/google/firebase/inappmessaging/q;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/q;)Li/c/y/c;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/p;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/p;-><init>(Lcom/google/firebase/inappmessaging/q;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/p;->f:Lcom/google/firebase/inappmessaging/q;

    check-cast p1, Lcom/google/firebase/inappmessaging/model/o;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/q;->a(Lcom/google/firebase/inappmessaging/q;Lcom/google/firebase/inappmessaging/model/o;)V

    return-void
.end method
