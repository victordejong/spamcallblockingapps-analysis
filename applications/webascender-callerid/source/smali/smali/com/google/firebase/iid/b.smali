.class final synthetic Lcom/google/firebase/iid/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/b;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/b;->g:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/b;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/iid/b;->g:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/firebase/iid/f;->d(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
