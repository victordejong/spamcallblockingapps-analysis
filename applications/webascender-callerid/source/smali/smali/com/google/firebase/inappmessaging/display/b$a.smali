.class Lcom/google/firebase/inappmessaging/display/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/b;->E(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/google/firebase/inappmessaging/display/internal/q/c;

.field final synthetic h:Lcom/google/firebase/inappmessaging/display/b;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$a;->h:Lcom/google/firebase/inappmessaging/display/b;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/b$a;->f:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/b$a;->g:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$a;->h:Lcom/google/firebase/inappmessaging/display/b;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b$a;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/b$a;->g:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/b;->a(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V

    return-void
.end method
