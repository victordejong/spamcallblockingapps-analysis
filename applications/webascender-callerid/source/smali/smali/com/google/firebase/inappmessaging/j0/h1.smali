.class final synthetic Lcom/google/firebase/inappmessaging/j0/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/j0/i2;

.field private final g:Ljava/lang/String;

.field private final h:Li/c/y/d;

.field private final i:Li/c/y/d;

.field private final j:Li/c/y/d;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;Li/c/y/d;Li/c/y/d;Li/c/y/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/h1;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/h1;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/h1;->h:Li/c/y/d;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/j0/h1;->i:Li/c/y/d;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/j0/h1;->j:Li/c/y/d;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;Li/c/y/d;Li/c/y/d;Li/c/y/d;)Li/c/y/d;
    .locals 7

    new-instance v6, Lcom/google/firebase/inappmessaging/j0/h1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/j0/h1;-><init>(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;Li/c/y/d;Li/c/y/d;Li/c/y/d;)V

    return-object v6
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h1;->f:Lcom/google/firebase/inappmessaging/j0/i2;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/h1;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/h1;->h:Li/c/y/d;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/j0/h1;->i:Li/c/y/d;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/j0/h1;->j:Li/c/y/d;

    move-object v5, p1

    check-cast v5, Lg/f/e/a/a/a/e/e;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/j0/i2;->s(Lcom/google/firebase/inappmessaging/j0/i2;Ljava/lang/String;Li/c/y/d;Li/c/y/d;Li/c/y/d;Lg/f/e/a/a/a/e/e;)Li/c/j;

    move-result-object p1

    return-object p1
.end method
