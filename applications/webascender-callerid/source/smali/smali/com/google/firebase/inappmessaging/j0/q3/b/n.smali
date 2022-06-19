.class public Lcom/google/firebase/inappmessaging/j0/q3/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/n;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/j0/s;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/s;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/s;-><init>()V

    return-object v0
.end method

.method public b()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/n;->a:Landroid/app/Application;

    return-object v0
.end method
