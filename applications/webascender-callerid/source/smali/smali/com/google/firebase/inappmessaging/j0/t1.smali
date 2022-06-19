.class final synthetic Lcom/google/firebase/inappmessaging/j0/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/i2;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/i2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/t1;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/i2;)Li/c/y/d;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/t1;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/t1;-><init>(Lcom/google/firebase/inappmessaging/j0/i2;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/t1;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/i2;->A(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;)Lo/a/a;

    move-result-object p1

    return-object p1
.end method
