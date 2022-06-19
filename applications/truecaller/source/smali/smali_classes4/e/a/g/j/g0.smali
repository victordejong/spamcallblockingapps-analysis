.class public final Le/a/g/j/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/x4/l/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b/j/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/o/a/j/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/o/c;

.field public final e:Le/a/x4/g;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/o/c;Le/a/x4/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/a/x4/l/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/b/j/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/o/a/j/b;",
            ">;",
            "Le/a/o/c;",
            "Le/a/x4/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "searchWarningsPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCallReasonPresenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContextPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/g0;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/g/j/g0;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/g/j/g0;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/g/j/g0;->d:Le/a/o/c;

    iput-object p5, p0, Le/a/g/j/g0;->e:Le/a/x4/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/HistoryEvent;Z)Lcom/truecaller/acs/util/TrueContextType;
    .locals 5

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/HistoryEvent;->a()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, p0, Le/a/g/j/g0;->d:Le/a/o/c;

    invoke-interface {v1}, Le/a/o/c;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->v:Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    sget-object p1, Lcom/truecaller/acs/util/TrueContextType;->CALL_REASON:Lcom/truecaller/acs/util/TrueContextType;

    goto :goto_2

    .line 5
    :cond_1
    iget-object p2, p0, Le/a/g/j/g0;->e:Le/a/x4/g;

    .line 6
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 7
    invoke-interface {p2, v1}, Le/a/x4/g;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    sget-object p1, Lcom/truecaller/acs/util/TrueContextType;->SEARCH_WARNINGS:Lcom/truecaller/acs/util/TrueContextType;

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Le/a/g/j/g0;->e:Le/a/x4/g;

    .line 11
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 12
    invoke-interface {p2, v0}, Le/a/x4/g;->c(Lcom/truecaller/data/entity/Contact;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    iget p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 14
    sget-object p1, Lcom/truecaller/acs/util/TrueContextType;->BUSINESS_CALL_REASON:Lcom/truecaller/acs/util/TrueContextType;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
