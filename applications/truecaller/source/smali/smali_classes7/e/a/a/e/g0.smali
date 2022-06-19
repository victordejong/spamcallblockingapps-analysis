.class public final Le/a/a/e/g0;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/e0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/e/f0;",
        ">;",
        "Le/a/a/e/e0;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/w/f;

.field public final f:Le/a/a/i0;

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/a/e/m;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/a/i0;Le/a/p5/c0;Le/a/a/e/m;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxCleaner"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/e/g0;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/a/e/g0;->f:Le/a/a/i0;

    iput-object p3, p0, Le/a/a/e/g0;->g:Le/a/p5/c0;

    iput-object p4, p0, Le/a/a/e/g0;->h:Le/a/a/e/m;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/e/g0;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public j2()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/e/g0;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public li(Lcom/truecaller/messaging/inboxcleanup/Mode;)V
    .locals 7

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/a/e/g0$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/a/e/g0$a;-><init>(Le/a/a/e/g0;Lcom/truecaller/messaging/inboxcleanup/Mode;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public wc(Lcom/truecaller/messaging/inboxcleanup/Mode;)V
    .locals 4

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/e/g0;->g:Le/a/p5/c0;

    const v2, 0x7f120c4d

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Le/a/a/e/g0;->f:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->y()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p1, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026.manualCleanupSpamPeriod)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/e/g0;->g:Le/a/p5/c0;

    const v2, 0x7f120c4c

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Le/a/a/e/g0;->f:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->k0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p1, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026CleanupPromotionalPeriod)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/a/e/g0;->f:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->R1()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 5
    iget-object p1, p0, Le/a/a/e/g0;->g:Le/a/p5/c0;

    const v1, 0x7f120c4a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/a/e/g0;->g:Le/a/p5/c0;

    const v2, 0x7f120c4b

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Le/a/a/e/g0;->f:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->R1()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p1, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "if (messageSettings.manu\u2026pOtpPeriod)\n            }"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :goto_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/f0;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Le/a/a/e/f0;->setTitle(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
