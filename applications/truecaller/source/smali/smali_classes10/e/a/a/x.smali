.class public final Le/a/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/w;


# instance fields
.field public final a:Z

.field public final b:Le/a/u3/g;

.field public final c:Le/a/c/b/j;


# direct methods
.method public constructor <init>(ZLe/a/u3/g;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/a/x;->a:Z

    iput-object p2, p0, Le/a/a/x;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/a/x;->c:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Le/a/a/x;->c:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->I()Z

    move-result v1

    .line 4
    iget-object v2, p0, Le/a/a/x;->c:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->F()Z

    move-result v2

    .line 5
    iget-object v3, p0, Le/a/a/x;->c:Le/a/c/b/j;

    invoke-interface {v3}, Le/a/c/b/j;->d()Z

    move-result v3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-boolean v1, p0, Le/a/a/x;->a:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Le/a/a/x;->b:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    :goto_0
    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
