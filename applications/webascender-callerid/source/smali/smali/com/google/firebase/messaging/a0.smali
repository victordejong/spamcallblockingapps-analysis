.class final synthetic Lcom/google/firebase/messaging/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final i:Lcom/google/firebase/iid/r;

.field private final j:Lcom/google/firebase/iid/o;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/iid/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/a0;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/a0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/firebase/messaging/a0;->h:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p4, p0, Lcom/google/firebase/messaging/a0;->i:Lcom/google/firebase/iid/r;

    iput-object p5, p0, Lcom/google/firebase/messaging/a0;->j:Lcom/google/firebase/iid/o;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/messaging/a0;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/a0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/firebase/messaging/a0;->h:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v3, p0, Lcom/google/firebase/messaging/a0;->i:Lcom/google/firebase/iid/r;

    iget-object v4, p0, Lcom/google/firebase/messaging/a0;->j:Lcom/google/firebase/iid/o;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/firebase/messaging/b0;->i(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/r;Lcom/google/firebase/iid/o;)Lcom/google/firebase/messaging/b0;

    move-result-object v0

    return-object v0
.end method
