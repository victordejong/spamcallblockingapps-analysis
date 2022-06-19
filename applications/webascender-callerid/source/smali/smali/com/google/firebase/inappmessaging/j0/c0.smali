.class final synthetic Lcom/google/firebase/inappmessaging/j0/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/a;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/h0;

.field private final b:Lcom/google/firebase/inappmessaging/t$b;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/t$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/c0;->a:Lcom/google/firebase/inappmessaging/j0/h0;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/c0;->b:Lcom/google/firebase/inappmessaging/t$b;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/t$b;)Li/c/y/a;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/c0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/c0;-><init>(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/t$b;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/c0;->a:Lcom/google/firebase/inappmessaging/j0/h0;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/c0;->b:Lcom/google/firebase/inappmessaging/t$b;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/j0/h0;->e(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/t$b;)V

    return-void
.end method
