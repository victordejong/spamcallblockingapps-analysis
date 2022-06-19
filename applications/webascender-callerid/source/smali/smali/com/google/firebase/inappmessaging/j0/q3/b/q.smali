.class public Lcom/google/firebase/inappmessaging/j0/q3/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)Li/c/x/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Li/c/x/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/k0;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/k0;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/j0/k0;->a()Li/c/x/a;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Li/c/x/a;->K()Li/c/w/b;

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v1
.end method
