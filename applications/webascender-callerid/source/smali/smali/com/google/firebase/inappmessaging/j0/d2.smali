.class final synthetic Lcom/google/firebase/inappmessaging/j0/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# instance fields
.field private final f:Lg/f/e/a/a/a/c;


# direct methods
.method private constructor <init>(Lg/f/e/a/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/d2;->f:Lg/f/e/a/a/a/c;

    return-void
.end method

.method public static a(Lg/f/e/a/a/a/c;)Li/c/y/d;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/d2;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/d2;-><init>(Lg/f/e/a/a/a/c;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/d2;->f:Lg/f/e/a/a/a/c;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/i2;->K(Lg/f/e/a/a/a/c;Ljava/lang/Boolean;)Lg/f/e/a/a/a/c;

    return-object v0
.end method
