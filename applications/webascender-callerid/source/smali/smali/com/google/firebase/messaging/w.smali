.class final synthetic Lcom/google/firebase/messaging/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/messaging/x;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/w;->f:Lcom/google/firebase/messaging/x;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/w;->f:Lcom/google/firebase/messaging/x;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/x;->a()V

    return-void
.end method
