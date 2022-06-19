.class final Lcom/hiya/stingray/ui/login/verification/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/a;->x(Lcom/google/firebase/auth/q;Landroid/app/Activity;)V
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
        "Lcom/google/android/gms/tasks/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/login/verification/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$d;->a:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/a$d;->a:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/a;->i(Lcom/hiya/stingray/ui/login/verification/a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/a$d;->a:Lcom/hiya/stingray/ui/login/verification/a;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->n()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/login/verification/a;->h(Lcom/hiya/stingray/ui/login/verification/a;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
