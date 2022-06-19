.class public Lcom/google/firebase/inappmessaging/j0/q3/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/firebase/analytics/a/a;

.field private b:Lcom/google/firebase/k/d;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/a/a;Lcom/google/firebase/k/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/google/firebase/inappmessaging/j0/o3;->a:Lcom/google/firebase/inappmessaging/j0/o3;

    :goto_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/k;->a:Lcom/google/firebase/analytics/a/a;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/k;->b:Lcom/google/firebase/k/d;

    return-void
.end method


# virtual methods
.method a()Lcom/google/firebase/analytics/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/k;->a:Lcom/google/firebase/analytics/a/a;

    return-object v0
.end method

.method b()Lcom/google/firebase/k/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/k;->b:Lcom/google/firebase/k/d;

    return-object v0
.end method
