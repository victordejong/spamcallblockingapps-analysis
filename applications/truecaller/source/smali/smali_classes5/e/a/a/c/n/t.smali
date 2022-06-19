.class public final Le/a/a/c/n/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/messaging/data/types/Message;

.field public final c:Ljava/lang/String;

.field public final d:[Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/t;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/n/t;->b:Lcom/truecaller/messaging/data/types/Message;

    iput-object p3, p0, Le/a/a/c/n/t;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/c/n/t;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    return-void
.end method
