.class Lcom/google/firebase/inappmessaging/display/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/b;->v(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/google/firebase/inappmessaging/model/a;

.field final synthetic g:Landroid/app/Activity;

.field final synthetic h:Lcom/google/firebase/inappmessaging/display/b;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/model/a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->h:Lcom/google/firebase/inappmessaging/display/b;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/b$c;->f:Lcom/google/firebase/inappmessaging/model/a;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/b$c;->g:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->h:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "Calling callback for click action"

    .line 2
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/k;->f(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->h:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/b;->b(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/t;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$c;->f:Lcom/google/firebase/inappmessaging/model/a;

    invoke-interface {p1, v0}, Lcom/google/firebase/inappmessaging/t;->a(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/android/gms/tasks/g;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->h:Lcom/google/firebase/inappmessaging/display/b;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$c;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->f:Lcom/google/firebase/inappmessaging/model/a;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/firebase/inappmessaging/display/b;->h(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;Landroid/net/Uri;)V

    .line 5
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->h:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/b;->i(Lcom/google/firebase/inappmessaging/display/b;)V

    .line 6
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->h:Lcom/google/firebase/inappmessaging/display/b;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$c;->g:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/google/firebase/inappmessaging/display/b;->j(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V

    .line 7
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->h:Lcom/google/firebase/inappmessaging/display/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/inappmessaging/display/b;->l(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/model/i;

    .line 8
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$c;->h:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1, v0}, Lcom/google/firebase/inappmessaging/display/b;->d(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/t;)Lcom/google/firebase/inappmessaging/t;

    return-void
.end method
