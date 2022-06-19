.class public final Le/a/a/g/a$p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->a(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/a/g/e0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readLatestUnreadImGroup$2"
    f = "ReadMessageStorage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/g/a;


# direct methods
.method public constructor <init>(Le/a/a/g/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$p;->e:Le/a/a/g/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$p;

    iget-object v0, p0, Le/a/a/g/a$p;->e:Le/a/a/g/a;

    invoke-direct {p1, v0, p2}, Le/a/a/g/a$p;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/g/a$p;->e:Le/a/a/g/a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 5
    invoke-static {p1, p2}, Le/a/a/g/a;->J(Le/a/a/g/a;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\n            AND im_group_id IS NOT NULL\n            AND im_group_notification_settings = 0\n        "

    invoke-static {p2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v1, "date DESC LIMIT 1"

    invoke-static {p1, v0, p2, v1}, Le/a/a/g/a;->I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/g/a$p;->e:Le/a/a/g/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Le/a/a/g/a;->J(Le/a/a/g/a;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n            AND im_group_id IS NOT NULL\n            AND im_group_notification_settings = 0\n        "

    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/a/g/a$p;->e:Le/a/a/g/a;

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v2, "date DESC LIMIT 1"

    invoke-static {v0, v1, p1, v2}, Le/a/a/g/a;->I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
