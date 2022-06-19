.class public final Le/a/d/c0/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/n0;


# instance fields
.field public final a:Le/a/d/v/d;

.field public final b:Le/a/d/w/d;

.field public final c:Le/a/d/c0/t;


# direct methods
.method public constructor <init>(Le/a/d/v/d;Le/a/d/w/d;Le/a/d/c0/t;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "groupCallManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invitationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeCallStateModel"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/o0;->a:Le/a/d/v/d;

    iput-object p2, p0, Le/a/d/c0/o0;->b:Le/a/d/w/d;

    iput-object p3, p0, Le/a/d/c0/o0;->c:Le/a/d/c0/t;

    return-void
.end method


# virtual methods
.method public a(Z)Le/a/d/c0/c;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/c0/o0;->b:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->e()Le/a/d/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Le/a/d/c0/c$a;

    invoke-interface {v0}, Le/a/d/w/b;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/a/d/c0/c$a;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/d/c0/o0;->a:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->b()Le/a/d/v/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Le/a/d/c0/c$a;

    invoke-interface {v0}, Le/a/d/v/b;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/a/d/c0/c$a;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/d/c0/o0;->c:Le/a/d/c0/t;

    invoke-interface {v0}, Le/a/d/c0/t;->n()Le/a/d/c0/s;

    move-result-object v0

    .line 6
    instance-of v1, v0, Le/a/d/c0/s$c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    instance-of v1, v0, Le/a/d/c0/s$b;

    if-eqz v1, :cond_3

    .line 7
    :goto_0
    new-instance p1, Le/a/d/c0/c$a;

    invoke-direct {p1, v3, v2}, Le/a/d/c0/c$a;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 8
    :cond_3
    instance-of v0, v0, Le/a/d/c0/s$a;

    .line 9
    sget-boolean v0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->l:Z

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Le/a/d/c0/c$a;

    invoke-direct {p1, v3, v2}, Le/a/d/c0/c$a;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_4
    if-nez p1, :cond_5

    .line 11
    sget-boolean p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->l:Z

    if-eqz p1, :cond_5

    .line 12
    new-instance p1, Le/a/d/c0/c$a;

    invoke-direct {p1, v3, v2}, Le/a/d/c0/c$a;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 13
    :cond_5
    sget-object p1, Le/a/d/c0/c$b;->a:Le/a/d/c0/c$b;

    return-object p1
.end method
