.class public final Le/a/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/s1$b;
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public final b:Le/a/j2;

.field public final c:Le/a/s1;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/r0/c;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/a/k/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/q0/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i4/e;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k3/j/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j2;Le/a/s1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/s1;->c:Le/a/s1;

    .line 3
    iput-object p1, p0, Le/a/s1;->b:Le/a/j2;

    .line 4
    new-instance p1, Le/a/s1$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/s1$b;-><init>(Le/a/s1;I)V

    iput-object p1, p0, Le/a/s1;->d:Ljavax/inject/Provider;

    .line 5
    new-instance p1, Le/a/s1$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/s1$b;-><init>(Le/a/s1;I)V

    iput-object p1, p0, Le/a/s1;->e:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/s1$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/s1$b;-><init>(Le/a/s1;I)V

    iput-object p1, p0, Le/a/s1;->f:Ljavax/inject/Provider;

    .line 7
    new-instance p1, Le/a/s1$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/s1$b;-><init>(Le/a/s1;I)V

    iput-object p1, p0, Le/a/s1;->g:Ljavax/inject/Provider;

    .line 8
    new-instance p1, Le/a/s1$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/s1$b;-><init>(Le/a/s1;I)V

    iput-object p1, p0, Le/a/s1;->h:Ljavax/inject/Provider;

    .line 9
    new-instance p1, Le/a/s1$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/s1$b;-><init>(Le/a/s1;I)V

    iput-object p1, p0, Le/a/s1;->i:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/s1$b;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Le/a/s1$b;-><init>(Le/a/s1;I)V

    iput-object p1, p0, Le/a/s1;->j:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/s1$b;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Le/a/s1$b;-><init>(Le/a/s1;I)V

    iput-object p1, p0, Le/a/s1;->k:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public A(Lcom/truecaller/presence/RingerModeListenerWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b1()Le/a/r2/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/presence/RingerModeListenerWorker;->a:Le/a/r2/f;

    return-void
.end method

.method public B(Lcom/truecaller/messaging/transport/im/RetryImMessageWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/RetryImMessageWorker;->a:Le/a/b0/e/l;

    .line 4
    iget-object v0, p0, Le/a/s1;->d:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 5
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/RetryImMessageWorker;->b:Lo3/a;

    return-void
.end method

.method public C(Le/a/e/a/o3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/e/a/o3;->a:Le/a/a/i0;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Le/a/e/a/o3;->b:Le/a/o5/b0;

    return-void
.end method

.method public D(Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->M5()Le/a/a/k/a/f2/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->a:Le/a/a/k/a/f2/a;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->b:Le/a/q2/a;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->c:Le/a/u3/g;

    return-void
.end method

.method public E(Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->a:Le/a/a/i0;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->b:Le/a/a/e/m;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->I4()Le/a/a/e/o;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->c:Le/a/a/e/o;

    .line 10
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v0

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iput-object v0, p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->d:Le/a/p5/g;

    .line 13
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v0

    .line 14
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object v0, p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->e:Le/a/h5/w;

    .line 16
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iput-object v0, p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->f:Le/a/q2/a;

    .line 19
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 20
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iput-object v0, p1, Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;->g:Le/a/u3/g;

    return-void
.end method

.method public F(Lcom/truecaller/messaging/notifications/ReactionBroadcastReceiver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->U6()Le/a/r2/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/notifications/ReactionBroadcastReceiver;->a:Le/a/r2/f;

    return-void
.end method

.method public G(Le/a/l/v2/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/l/v2/b;->k:Le/a/l/a2;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Le/a/l/v2/b;->l:Le/a/b0/o/a;

    return-void
.end method

.method public H(Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->a:Le/a/q2/a;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->b:Le/a/u3/g;

    .line 7
    iget-object v0, p0, Le/a/s1;->f:Ljavax/inject/Provider;

    .line 8
    iput-object v0, p1, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->c:Ljavax/inject/Provider;

    .line 9
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->n4()Le/a/a/r0/a;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object v0, p1, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->d:Le/a/a/r0/a;

    return-void
.end method

.method public I(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a:Ls1/w/f;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->b:Ls1/w/f;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c:Landroid/content/Context;

    .line 10
    iget-object v0, p0, Le/a/s1;->h:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->d:Lo3/a;

    .line 12
    iget-object v0, p0, Le/a/s1;->i:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->e:Lo3/a;

    .line 14
    iget-object v0, p0, Le/a/s1;->j:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->f:Lo3/a;

    .line 16
    iget-object v0, p0, Le/a/s1;->k:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->g:Lo3/a;

    return-void
.end method

.method public a(Lcom/truecaller/messaging/transport/im/ImSubscriptionService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R4()Le/a/a/k/a/g0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->d:Le/a/a/k/a/g0;

    return-void
.end method

.method public b(Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o()Le/a/x3/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->b:Le/a/x3/a;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->c:Le/a/p5/g;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->d:Le/a/p5/a0;

    .line 10
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->E6()Le/a/i4/l;

    move-result-object v0

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iput-object v0, p1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->e:Le/a/i4/l;

    .line 13
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R2()Le/a/i4/o;

    move-result-object v0

    .line 14
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object v0, p1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->f:Le/a/i4/o;

    .line 16
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->J7()Le/a/l/a/t;

    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iput-object v0, p1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;->g:Le/a/l/a/t;

    return-void
.end method

.method public c(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->b:Ls1/w/f;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->c:Ls1/w/f;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->n5()Le/a/h/b/w0/d;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->d:Le/a/h/b/w0/d;

    return-void
.end method

.method public d(Lcom/truecaller/messaging/nudgetosend/MessageToNudgeWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->K3()Le/a/a/z0/b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/nudgetosend/MessageToNudgeWorker;->a:Le/a/a/z0/b;

    return-void
.end method

.method public e(Le/a/h/a/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->u7()Le/a/h/a/b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/h/a/a;->a:Le/a/h/a/b;

    return-void
.end method

.method public f(Le/a/a/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/a/c/e;->a:Le/a/a/i0;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Le/a/a/c/e;->b:Le/a/q2/i0;

    return-void
.end method

.method public g(Le/a/a/c/a/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->F1()Le/a/c/c0/k;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/a/c/a/b;->c:Le/a/c/c0/k;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Le/a/a/c/a/b;->d:Le/a/a/c/a/o;

    return-void
.end method

.method public h(Lcom/truecaller/util/background/qa/WorkActionStatusActivity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->f4()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->a:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->D()Ln3/m0/y;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->b:Ln3/m0/y;

    return-void
.end method

.method public i(Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->a:Le/a/r2/f;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->y0()Le/a/a/v0/a;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->b:Le/a/a/v0/a;

    .line 7
    iget-object v0, p0, Le/a/s1;->e:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 8
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->c:Lo3/a;

    .line 9
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->d:Le/a/a/k/t;

    .line 12
    iget-object v0, p0, Le/a/s1;->g:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->e:Lo3/a;

    .line 14
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->f:Le/a/q2/a;

    return-void
.end method

.method public j(Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;->a:Le/a/b0/e/l;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;->b:Le/a/h0/j;

    return-void
.end method

.method public k(Le/a/e/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/e/a/c;->a:Le/a/a/i0;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Le/a/e/a/c;->b:Landroid/content/ContentResolver;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W1()Le/a/a/g/x;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Le/a/e/a/c;->c:Le/a/a/g/x;

    return-void
.end method

.method public l(Le/a/e/a/y3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/e/a/y3;->d:Le/a/a/g/w;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Le/a/e/a/y3;->e:Le/a/r2/f;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Le/a/e/a/y3;->f:Le/a/a/i0;

    return-void
.end method

.method public m(Lcom/truecaller/filters/sync/FilterUploadWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/filters/sync/FilterUploadWorker;->a:Le/a/b0/e/l;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/filters/sync/FilterUploadWorker;->b:Le/a/h0/j;

    return-void
.end method

.method public n(Lcom/truecaller/fcm/FcmMessageListenerService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->C2()Le/a/o4/e;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/fcm/FcmMessageListenerService;->a:Le/a/o4/e;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->w1()Le/a/o4/b;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/fcm/FcmMessageListenerService;->b:Le/a/o4/b;

    .line 7
    new-instance v0, Le/a/w2/a;

    iget-object v2, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v2

    .line 8
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-direct {v0, v2}, Le/a/w2/a;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p1, Lcom/truecaller/fcm/FcmMessageListenerService;->c:Le/a/w2/a;

    .line 11
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->w4()Le/a/y3/c;

    move-result-object v0

    .line 12
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-object v0, p1, Lcom/truecaller/fcm/FcmMessageListenerService;->d:Le/a/y3/c;

    return-void
.end method

.method public o(Le/a/a/c/a/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->F1()Le/a/c/c0/k;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/a/c/a/b;->c:Le/a/c/c0/k;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Le/a/a/c/a/b;->d:Le/a/a/c/a/o;

    return-void
.end method

.method public p(Lcom/truecaller/filters/sync/FilterRestoreWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/filters/sync/FilterRestoreWorker;->a:Le/a/b0/e/l;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/filters/sync/FilterRestoreWorker;->b:Le/a/h0/j;

    return-void
.end method

.method public q(Lcom/truecaller/messaging/transport/im/SendImReportWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->v5()Le/a/a/k/a/t;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/SendImReportWorker;->a:Le/a/a/k/a/t;

    return-void
.end method

.method public r(Le/a/d5/g/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/d5/g/p;->l:Le/a/k/h;

    return-void
.end method

.method public s(Lcom/truecaller/notifications/OTPCopierService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/notifications/OTPCopierService;->a:Le/a/p5/c0;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/notifications/OTPCopierService;->b:Le/a/i4/e;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Lcom/truecaller/notifications/OTPCopierService;->c:Le/a/q2/a;

    .line 10
    iget-object v0, p0, Le/a/s1;->d:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/truecaller/notifications/OTPCopierService;->d:Lo3/a;

    .line 12
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->n()Le/a/c/e/c;

    move-result-object v0

    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iput-object v0, p1, Lcom/truecaller/notifications/OTPCopierService;->e:Le/a/c/e/c;

    .line 15
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->O4()Le/a/c/c0/o;

    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object v0, p1, Lcom/truecaller/notifications/OTPCopierService;->f:Le/a/c/c0/o;

    .line 18
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o7()Le/a/o5/j;

    move-result-object v0

    .line 19
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iput-object v0, p1, Lcom/truecaller/notifications/OTPCopierService;->g:Le/a/o5/j;

    .line 21
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->p6()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iput-object v0, p1, Lcom/truecaller/notifications/OTPCopierService;->h:Landroid/content/ClipboardManager;

    return-void
.end method

.method public t(Lcom/truecaller/messaging/sending/ScheduleMessageWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->d:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 2
    iput-object v0, p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->a:Lo3/a;

    .line 3
    iget-object v0, p0, Le/a/s1;->e:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->b:Lo3/a;

    .line 5
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->z5()Le/a/a/c1/d;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object v0, p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->c:Le/a/a/c1/d;

    .line 8
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v0

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object v0, p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->d:Le/a/e4/p;

    .line 11
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 12
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-object v0, p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->e:Le/a/q2/a;

    .line 14
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iput-object v0, p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->f:Le/a/p5/g;

    .line 17
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->D()Ln3/m0/y;

    move-result-object v0

    .line 18
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iput-object v0, p1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;->g:Ln3/m0/y;

    return-void
.end method

.method public u(Lcom/truecaller/push/HuaweiMessageService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->C2()Le/a/o4/e;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/push/HuaweiMessageService;->b:Le/a/o4/e;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->w1()Le/a/o4/b;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/push/HuaweiMessageService;->c:Le/a/o4/b;

    return-void
.end method

.method public v(Lcom/truecaller/messaging/transport/im/SendReactionWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->v5()Le/a/a/k/a/t;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/SendReactionWorker;->a:Le/a/a/k/a/t;

    return-void
.end method

.method public w(Le/a/a/c/a/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Le/a/a/c/a/k;->b:Le/a/c/b/j;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->F1()Le/a/c/c0/k;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Le/a/a/c/a/k;->c:Le/a/c/c0/k;

    return-void
.end method

.method public x(Lcom/truecaller/service/MissedCallsNotificationService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->a:Ls1/w/f;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->D2()Ls1/w/f;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->b:Ls1/w/f;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->c:Le/a/r2/f;

    .line 10
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v0

    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->d:Le/a/i4/e;

    .line 15
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->e:Le/a/h4/n;

    .line 18
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v0

    .line 19
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->f:Lcom/truecaller/settings/CallingSettings;

    .line 21
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->g:Le/a/p5/a0;

    .line 24
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->p3()Le/a/x4/g;

    move-result-object v0

    .line 25
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->h:Le/a/x4/g;

    .line 27
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->i7()Le/a/k3/j/j;

    move-result-object v0

    .line 28
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object v0, p1, Lcom/truecaller/service/MissedCallsNotificationService;->i:Le/a/k3/j/j;

    return-void
.end method

.method public y(Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W2()Le/a/a/k/a/a/d;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->a:Le/a/a/k/a/a/d;

    .line 4
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->b:Le/a/q2/a;

    .line 7
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->c:Le/a/r2/f;

    .line 10
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->d:Le/a/a/i0;

    .line 15
    iget-object v0, p0, Le/a/s1;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object v0, p1, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->e:Le/a/r2/f;

    return-void
.end method

.method public z(Lcom/truecaller/deeplink/DeepLinkHandlerActivity;)V
    .locals 0

    return-void
.end method
