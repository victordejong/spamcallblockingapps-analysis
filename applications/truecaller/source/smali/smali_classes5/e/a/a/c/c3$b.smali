.class public final Le/a/a/c/c3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:I

.field public H:I

.field public I:Z

.field public J:I

.field public K:Z

.field public L:Z

.field public a:Le/a/a/c/t7;

.field public b:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public c:Lcom/truecaller/messaging/data/types/Message;

.field public d:Lcom/truecaller/messaging/data/types/Entity;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/a/c/c3;
    .locals 2

    .line 1
    new-instance v0, Le/a/a/c/c3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/a/c/c3;-><init>(Le/a/a/c/c3$b;Le/a/a/c/c3$a;)V

    return-object v0
.end method

.method public b(Lcom/truecaller/messaging/data/types/Entity;)Le/a/a/c/c3$b;
    .locals 5

    .line 1
    iput-object p1, p0, Le/a/a/c/c3$b;->d:Lcom/truecaller/messaging/data/types/Entity;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2
    iget v1, p1, Lcom/truecaller/messaging/data/types/Entity;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Le/a/a/c/c3$b;->q:Z

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    .line 3
    :goto_2
    iput-boolean v4, p0, Le/a/a/c/c3$b;->r:Z

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    :cond_3
    move v0, v2

    .line 4
    :cond_4
    iput-boolean v0, p0, Le/a/a/c/c3$b;->t:Z

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Entity;->o()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Le/a/a/c/c3$b;->K:Z

    goto :goto_3

    .line 6
    :cond_5
    iput-boolean v0, p0, Le/a/a/c/c3$b;->r:Z

    iput-boolean v0, p0, Le/a/a/c/c3$b;->q:Z

    :goto_3
    return-object p0
.end method
