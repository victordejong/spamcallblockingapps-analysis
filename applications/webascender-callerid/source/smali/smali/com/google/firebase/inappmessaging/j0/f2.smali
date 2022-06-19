.class final synthetic Lcom/google/firebase/inappmessaging/j0/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/e;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/f2;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Li/c/y/e;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/f2;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/f2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/f2;->f:Ljava/lang/String;

    check-cast p1, Lg/f/e/a/a/a/c;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/i2;->M(Ljava/lang/String;Lg/f/e/a/a/a/c;)Z

    move-result p1

    return p1
.end method
