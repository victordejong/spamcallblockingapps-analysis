.class final synthetic Lcom/google/firebase/iid/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/iid/e0$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/e0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/c0;->f:Lcom/google/firebase/iid/e0$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/c0;->f:Lcom/google/firebase/iid/e0$a;

    invoke-virtual {v0}, Lcom/google/firebase/iid/e0$a;->d()V

    return-void
.end method
