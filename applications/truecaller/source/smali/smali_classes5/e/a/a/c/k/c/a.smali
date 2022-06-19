.class public final Le/a/a/c/k/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/l0/a;


# instance fields
.field public final a:J

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/conversation/ConversationAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/conversation/ConversationAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/a/a/c/k/c/a;->a:J

    iput-object p3, p0, Le/a/a/c/k/c/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/a/c/k/c/a;->a:J

    return-wide v0
.end method
