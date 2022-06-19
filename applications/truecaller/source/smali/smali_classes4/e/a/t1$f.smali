.class public final Le/a/t1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/k/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Le/a/t1;


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t1$f;->a:Le/a/t1;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/callrecording/ui/bubble/BubblesService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t1$f;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v0}, Le/a/j2;->s3()Le/a/k0/a/j;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object v0, p1, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->h:Le/a/k0/a/j;

    return-void
.end method

.method public b(Lcom/truecaller/callrecording/worker/CallRecordingsMigrationWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t1$f;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object v0, p1, Lcom/truecaller/callrecording/worker/CallRecordingsMigrationWorker;->a:Le/a/q2/a;

    .line 6
    iget-object v0, p0, Le/a/t1$f;->a:Le/a/t1;

    .line 7
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 8
    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object v0, p1, Lcom/truecaller/callrecording/worker/CallRecordingsMigrationWorker;->b:Le/a/u3/g;

    .line 11
    iget-object v0, p0, Le/a/t1$f;->a:Le/a/t1;

    .line 12
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 13
    invoke-interface {v0}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v0

    .line 14
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object v0, p1, Lcom/truecaller/callrecording/worker/CallRecordingsMigrationWorker;->c:Lcom/truecaller/callrecording/CallRecordingManager;

    return-void
.end method

.method public c(Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t1$f;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v0}, Le/a/j2;->v0()Le/a/k0/n/c/b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object v0, p1, Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;->a:Le/a/k0/n/c/b;

    .line 6
    iget-object v0, p0, Le/a/t1$f;->a:Le/a/t1;

    .line 7
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 8
    invoke-interface {v0}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v0

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object v0, p1, Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;->b:Lcom/truecaller/callrecording/CallRecordingManager;

    return-void
.end method
