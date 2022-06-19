.class public final Le/a/a/g/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/InboxTab;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "tab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversations"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/g/k;->a:Lcom/truecaller/messaging/data/types/InboxTab;

    iput-object p2, p0, Le/a/a/g/k;->b:Ljava/util/List;

    iput-wide p3, p0, Le/a/a/g/k;->c:J

    return-void
.end method
