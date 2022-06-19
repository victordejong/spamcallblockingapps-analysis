.class final synthetic Lcom/google/firebase/inappmessaging/j0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/a;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/h0;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/y;->a:Lcom/google/firebase/inappmessaging/j0/h0;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/h0;)Li/c/y/a;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/y;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/y;-><init>(Lcom/google/firebase/inappmessaging/j0/h0;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/y;->a:Lcom/google/firebase/inappmessaging/j0/h0;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/h0;->f(Lcom/google/firebase/inappmessaging/j0/h0;)V

    return-void
.end method
