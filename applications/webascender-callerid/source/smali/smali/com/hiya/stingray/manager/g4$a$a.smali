.class final Lcom/hiya/stingray/manager/g4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/g4$a;->a(Li/c/b0/b/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/e<",
        "Lcom/google/firebase/iid/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Li/c/b0/b/q;


# direct methods
.method constructor <init>(Li/c/b0/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/g4$a$a;->a:Li/c/b0/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/iid/p;)V
    .locals 1

    :try_start_0
    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/firebase/iid/p;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.token"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4$a$a;->a:Li/c/b0/b/q;

    invoke-interface {v0, p1}, Li/c/b0/b/q;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/manager/g4$a$a;->a:Li/c/b0/b/q;

    invoke-interface {p1}, Li/c/b0/b/q;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/g4$a$a;->a:Li/c/b0/b/q;

    invoke-interface {v0, p1}, Li/c/b0/b/q;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/iid/p;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/g4$a$a;->a(Lcom/google/firebase/iid/p;)V

    return-void
.end method
