.class final synthetic Lcom/google/firebase/inappmessaging/j0/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/i2;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/h2;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/h2;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;)Li/c/y/d;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/h2;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/h2;-><init>(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h2;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/h2;->g:Ljava/lang/String;

    check-cast p1, Lg/f/e/a/a/a/c;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/j0/i2;->N(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;Lg/f/e/a/a/a/c;)Li/c/n;

    move-result-object p1

    return-object p1
.end method
