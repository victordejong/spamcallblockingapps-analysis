.class public final Le/a/a/c/t4$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->k0(Lcom/truecaller/messaging/data/types/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/t4;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/truecaller/flashsdk/models/FlashContact;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Message;ZLcom/truecaller/flashsdk/models/FlashContact;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$j;->a:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/t4$j;->b:Lcom/truecaller/messaging/data/types/Message;

    iput-boolean p3, p0, Le/a/a/c/t4$j;->c:Z

    iput-object p4, p0, Le/a/a/c/t4$j;->d:Lcom/truecaller/flashsdk/models/FlashContact;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/c/t4$j;->a:Le/a/a/c/t4;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Le/a/a/c/z4;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/c/t4$j;->b:Lcom/truecaller/messaging/data/types/Message;

    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v0, "message.participant"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/a/c/t4$j;->b:Lcom/truecaller/messaging/data/types/Message;

    iget-wide v3, v0, Lcom/truecaller/messaging/data/types/Message;->J:J

    .line 5
    iget-wide v5, v0, Lcom/truecaller/messaging/data/types/Message;->K:J

    .line 6
    iget-boolean v8, p0, Le/a/a/c/t4$j;->c:Z

    .line 7
    iget-object v9, p0, Le/a/a/c/t4$j;->d:Lcom/truecaller/flashsdk/models/FlashContact;

    move v7, p1

    .line 8
    invoke-interface/range {v1 .. v9}, Le/a/a/c/z4;->uo(Lcom/truecaller/data/entity/messaging/Participant;JJZZLcom/truecaller/flashsdk/models/FlashContact;)V

    :cond_0
    return-void
.end method
