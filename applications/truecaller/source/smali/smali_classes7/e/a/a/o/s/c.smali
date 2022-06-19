.class public final Le/a/a/o/s/c;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/s/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/o/s/d;",
        ">;",
        "Le/a/a/o/s/b;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Ls1/a/l;


# instance fields
.field public final b:Le/a/a/o/s/i;

.field public final c:Le/a/a/o/s/h;

.field public final d:Le/a/a/o/p;

.field public final e:Le/a/a/i1/b;

.field public final f:Le/a/a/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/a/o/s/c;

    const-string v2, "cursor"

    const-string v3, "getCursor()Lcom/truecaller/messaging/data/cursors/MediaSizeFromMessagesCursor;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/a/o/s/c;->g:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/a/o/s/i;Le/a/a/o/s/h;Le/a/a/o/p;Le/a/a/i1/b;Le/a/a/u;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemCallback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManagerUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxAvatarPresenterFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p2, p0, Le/a/a/o/s/c;->c:Le/a/a/o/s/h;

    iput-object p3, p0, Le/a/a/o/s/c;->d:Le/a/a/o/p;

    iput-object p4, p0, Le/a/a/o/s/c;->e:Le/a/a/i1/b;

    iput-object p5, p0, Le/a/a/o/s/c;->f:Le/a/a/u;

    .line 2
    iput-object p1, p0, Le/a/a/o/s/c;->b:Le/a/a/o/s/i;

    return-void
.end method


# virtual methods
.method public final A()Le/a/a/g/j0/m;
    .locals 3

    iget-object v0, p0, Le/a/a/o/s/c;->b:Le/a/a/o/s/i;

    sget-object v1, Le/a/a/o/s/c;->g:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/a/o/s/i;->nd(Le/a/a/o/s/b;Ls1/a/l;)Le/a/a/g/j0/m;

    move-result-object v0

    return-object v0
.end method

.method public final B(I)Le/a/a/g/j0/l;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/o/s/c;->A()Le/a/a/g/j0/m;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/a/g/j0/m;->getItem()Le/a/a/g/j0/l;

    move-result-object p1

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/a/o/s/d;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Le/a/a/o/s/c;->B(I)Le/a/a/g/j0/l;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Le/a/a/o/s/c;->e:Le/a/a/i1/b;

    .line 5
    iget-object v1, p2, Le/a/a/g/j0/l;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 6
    invoke-interface {v0, v1}, Le/a/a/i1/b;->n(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/o/s/d;->setTitle(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/a/o/s/c;->d:Le/a/a/o/p;

    .line 8
    iget-wide v1, p2, Le/a/a/g/j0/l;->b:J

    .line 9
    invoke-interface {v0, v1, v2}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/o/s/d;->c(Ljava/lang/String;)V

    .line 10
    iget-object v0, p2, Le/a/a/g/j0/l;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 11
    iget-object v1, p0, Le/a/a/o/s/c;->f:Le/a/a/u;

    invoke-interface {v1, p1}, Le/a/a/u;->b(Le/a/a/u$a;)Le/a/b0/a/b/a;

    move-result-object v1

    .line 12
    iget v2, v0, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    invoke-static {v0, v2}, Le/m/d/y/n;->r(Lcom/truecaller/messaging/data/types/Conversation;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 13
    invoke-static {v1, v0, v2, v3, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 14
    invoke-interface {p1, v1}, Le/a/a/o/s/d;->i(Le/a/b0/a/b/a;)V

    .line 15
    iget-object p2, p2, Le/a/a/g/j0/l;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 16
    iget-object v0, p0, Le/a/a/o/s/c;->f:Le/a/a/u;

    invoke-interface {v0, p1}, Le/a/a/u;->a(Le/a/a/u$a;)Le/a/l4/d;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->Companion:Lcom/truecaller/messaging/data/types/InboxTab$a;

    iget v2, p2, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/InboxTab$a;->a(I)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v1

    invoke-static {p2, v1}, Le/a/c/p/a;->l0(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/l4/d;->Kj(Ljava/lang/String;)V

    .line 18
    invoke-interface {p1, v0}, Le/a/a/o/s/d;->e(Le/a/l4/d;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/o/s/c;->A()Le/a/a/g/j0/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/o/s/c;->A()Le/a/a/g/j0/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/a/g/j0/m;->getItem()Le/a/a/g/j0/l;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/a/g/j0/l;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 5
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    .line 2
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ItemEvent.CLICKED"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Le/a/a/o/s/c;->B(I)Le/a/a/g/j0/l;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/a/a/o/s/c;->c:Le/a/a/o/s/h;

    .line 6
    iget-object p1, p1, Le/a/a/g/j0/l;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 7
    invoke-interface {v0, p1}, Le/a/a/o/s/h;->X5(Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
