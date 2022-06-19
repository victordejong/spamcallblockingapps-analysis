.class public Lcom/google/firebase/inappmessaging/display/internal/r/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/model/i;

.field private final b:Lcom/google/firebase/inappmessaging/display/internal/j;

.field private final c:Landroid/app/Application;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;->a:Lcom/google/firebase/inappmessaging/model/i;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;->b:Lcom/google/firebase/inappmessaging/display/internal/j;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;->c:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method a()Lcom/google/firebase/inappmessaging/display/internal/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;->b:Lcom/google/firebase/inappmessaging/display/internal/j;

    return-object v0
.end method

.method b()Lcom/google/firebase/inappmessaging/model/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;->a:Lcom/google/firebase/inappmessaging/model/i;

    return-object v0
.end method

.method public c()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;->c:Landroid/app/Application;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method
