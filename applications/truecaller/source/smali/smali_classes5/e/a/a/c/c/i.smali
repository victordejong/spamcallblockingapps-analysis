.class public final Le/a/a/c/c/i;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/c/c/n;",
        ">;",
        "Le/a/a/c/c/m;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

.field public final c:Le/a/a/c/c/o;

.field public final d:Le/a/a/c/c/l;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/draft/DraftArguments;Le/a/a/c/c/o;Le/a/a/c/c/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "arguments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/c/c/i;->b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    iput-object p2, p0, Le/a/a/c/c/i;->c:Le/a/a/c/c/o;

    iput-object p3, p0, Le/a/a/c/c/i;->d:Le/a/a/c/c/l;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    check-cast p1, Le/a/a/c/c/n;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/c/i;->c:Le/a/a/c/c/o;

    invoke-interface {v0}, Le/a/a/c/c/o;->I3()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_2

    .line 4
    iget-object p2, p0, Le/a/a/c/c/i;->b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 5
    iget-object p2, p2, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const p2, 0x7f08068a

    goto :goto_0

    :cond_0
    const p2, 0x7f0807c4

    goto :goto_0

    :cond_1
    const p2, 0x7f08076d

    .line 7
    :goto_0
    invoke-interface {p1, p2}, Le/a/a/c/c/n;->Z2(I)V

    .line 8
    invoke-interface {p1, v1}, Le/a/a/c/c/n;->l(Z)V

    .line 9
    invoke-interface {p1, v1}, Le/a/a/c/c/n;->Q1(Z)V

    .line 10
    invoke-interface {p1, v1}, Le/a/a/c/c/n;->m1(Z)V

    goto :goto_4

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/a/c/c/i;->c:Le/a/a/c/c/o;

    invoke-interface {v0, p2}, Le/a/a/c/c/o;->Hg(I)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    .line 12
    iget-object v2, p0, Le/a/a/c/c/i;->c:Le/a/a/c/c/o;

    invoke-interface {v2}, Le/a/a/c/c/o;->T5()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    move p2, v1

    .line 13
    :goto_1
    iget-object v2, p0, Le/a/a/c/c/i;->b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    invoke-static {v2}, Le/a/c/p/a;->m1(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-interface {p1, v1}, Le/a/a/c/c/n;->Q1(Z)V

    .line 15
    invoke-interface {p1, v3}, Le/a/a/c/c/n;->D1(Z)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-interface {p1, p2}, Le/a/a/c/c/n;->Q1(Z)V

    .line 17
    :goto_2
    invoke-interface {p1, p2}, Le/a/a/c/c/n;->l(Z)V

    .line 18
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result p2

    invoke-interface {p1, p2}, Le/a/a/c/c/n;->m1(Z)V

    .line 19
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/BinaryEntity;->l()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/BinaryEntity;->t()Z

    move-result p2

    if-eqz p2, :cond_6

    const p2, 0x7f08037f

    invoke-interface {p1, p2}, Le/a/a/c/c/n;->j4(I)V

    goto :goto_4

    :cond_6
    const p2, 0x7f08037a

    .line 21
    invoke-interface {p1, p2}, Le/a/a/c/c/n;->j4(I)V

    goto :goto_4

    .line 22
    :cond_7
    :goto_3
    iget-object p2, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {p1, p2}, Le/a/a/c/c/n;->C(Landroid/net/Uri;)V

    :goto_4
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/i;->b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/a/c/c/i;->b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    invoke-static {v0}, Le/a/c/p/a;->m1(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/c/c/i;->c:Le/a/a/c/c/o;

    invoke-interface {v0}, Le/a/a/c/c/o;->I3()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/a/c/c/i;->c:Le/a/a/c/c/o;

    invoke-interface {v0}, Le/a/a/c/c/o;->I3()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/a/c/c/i;->c:Le/a/a/c/c/o;

    invoke-interface {v0}, Le/a/a/c/c/o;->I3()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.CLICKED"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/c/c/i;->d:Le/a/a/c/c/l;

    .line 4
    iget p1, p1, Le/a/o2/h;->b:I

    .line 5
    invoke-interface {v0, p1}, Le/a/a/c/c/l;->m9(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
