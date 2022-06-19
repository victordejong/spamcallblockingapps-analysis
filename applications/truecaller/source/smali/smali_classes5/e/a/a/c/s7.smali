.class public final Le/a/a/c/s7;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/c/q7;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/conversation/QuickAction;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/a/c/f4;

.field public final d:Le/a/a/c/c5;

.field public final e:Le/a/a/c/n4;

.field public final f:Le/a/a/c/r3;

.field public final g:Z

.field public h:I

.field public final i:Le/a/a/c/b4;

.field public final j:Le/a/a/c/n5;

.field public final k:Le/a/w/c/a;


# direct methods
.method public constructor <init>(Le/a/a/c/f4;Le/a/a/c/c5;Le/a/a/c/n4;Le/a/a/c/r3;ZILe/a/u3/g;Le/a/a/c/b4;Le/a/a/c/n5;Le/a/w/c/a;)V
    .locals 1
    .param p5    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsHiddenNumberIntent"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Ljavax/inject/Named;
            value = "Filter"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "inputPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationPresenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "headerPresenter"

    invoke-static {p8, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "conversationState"

    invoke-static {p9, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "referralTargetResolver"

    invoke-static {p10, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/c/s7;->c:Le/a/a/c/f4;

    iput-object p2, p0, Le/a/a/c/s7;->d:Le/a/a/c/c5;

    iput-object p3, p0, Le/a/a/c/s7;->e:Le/a/a/c/n4;

    iput-object p4, p0, Le/a/a/c/s7;->f:Le/a/a/c/r3;

    iput-boolean p5, p0, Le/a/a/c/s7;->g:Z

    iput p6, p0, Le/a/a/c/s7;->h:I

    iput-object p8, p0, Le/a/a/c/s7;->i:Le/a/a/c/b4;

    iput-object p9, p0, Le/a/a/c/s7;->j:Le/a/a/c/n5;

    iput-object p10, p0, Le/a/a/c/s7;->k:Le/a/w/c/a;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/s7;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/c/q7;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/s7;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/QuickAction;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/messaging/conversation/QuickAction;->getIcon()I

    move-result v1

    invoke-interface {p1, v1}, Le/a/a/c/q7;->setIcon(I)V

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/messaging/conversation/QuickAction;->getText()I

    move-result v1

    invoke-interface {p1, v1}, Le/a/a/c/q7;->y0(I)V

    .line 6
    new-instance v1, Le/a/a/c/r7;

    invoke-direct {v1, p0, p2, v0}, Le/a/a/c/r7;-><init>(Le/a/a/c/s7;ILcom/truecaller/messaging/conversation/QuickAction;)V

    invoke-interface {p1, v1}, Le/a/a/c/q7;->setOnClickListener(Ls1/z/b/a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/s7;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/s7;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/conversation/QuickAction;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
