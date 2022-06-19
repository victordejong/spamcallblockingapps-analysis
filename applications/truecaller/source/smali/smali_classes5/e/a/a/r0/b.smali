.class public final Le/a/a/r0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/r0/a;


# instance fields
.field public final a:Le/a/o5/f0;

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/y2/q/a;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Ljavax/inject/Provider;Le/a/y2/q/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o5/f0;",
            "Ljavax/inject/Provider<",
            "Le/a/a/i0;",
            ">;",
            "Le/a/y2/q/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundWorkTrigger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/r0/b;->a:Le/a/o5/f0;

    iput-object p2, p0, Le/a/a/r0/b;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/a/r0/b;->c:Le/a/y2/q/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/r0/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/r0/b;->c:Le/a/y2/q/a;

    sget-object v1, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->e:Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$a;

    invoke-interface {v0, v1}, Le/a/y2/q/a;->b(Le/a/y2/i;)Ln3/m0/s;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/r0/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "settings.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->a2()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/r0/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/i0;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Le/a/a/i0;->b4(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/r0/b;->a:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
