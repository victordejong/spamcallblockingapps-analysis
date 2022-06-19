.class public final Le/a/a/c/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/data/entity/messaging/Participant;

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Z

.field public final g:Lcom/truecaller/flashsdk/models/FlashContact;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/data/entity/messaging/Participant;JJZZLcom/truecaller/flashsdk/models/FlashContact;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participant"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/i/c;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/i/c;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iput-wide p3, p0, Le/a/a/c/i/c;->c:J

    iput-wide p5, p0, Le/a/a/c/i/c;->d:J

    iput-boolean p7, p0, Le/a/a/c/i/c;->e:Z

    iput-boolean p8, p0, Le/a/a/c/i/c;->f:Z

    iput-object p9, p0, Le/a/a/c/i/c;->g:Lcom/truecaller/flashsdk/models/FlashContact;

    return-void
.end method
