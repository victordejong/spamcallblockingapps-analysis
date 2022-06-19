.class public final Lcom/appnext/core/ra/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eO:Landroid/os/Bundle;

.field private eZ:Lcom/appnext/core/ra/services/a$a;

.field private fa:I

.field private fb:J

.field private fc:J

.field private fd:Z


# direct methods
.method public constructor <init>(Lcom/appnext/core/ra/services/a$a;ILandroid/os/Bundle;JJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/core/ra/b/a;->eZ:Lcom/appnext/core/ra/services/a$a;

    .line 3
    iput p2, p0, Lcom/appnext/core/ra/b/a;->fa:I

    .line 4
    iput-object p3, p0, Lcom/appnext/core/ra/b/a;->eO:Landroid/os/Bundle;

    .line 5
    iput-wide p4, p0, Lcom/appnext/core/ra/b/a;->fb:J

    .line 6
    iput-wide p6, p0, Lcom/appnext/core/ra/b/a;->fc:J

    .line 7
    iput-boolean p8, p0, Lcom/appnext/core/ra/b/a;->fd:Z

    return-void
.end method


# virtual methods
.method public final aP()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/b/a;->eO:Landroid/os/Bundle;

    return-object v0
.end method

.method public final aT()Lcom/appnext/core/ra/services/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/b/a;->eZ:Lcom/appnext/core/ra/services/a$a;

    return-object v0
.end method

.method public final aU()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/appnext/core/ra/b/a;->fb:J

    return-wide v0
.end method

.method public final aV()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/appnext/core/ra/b/a;->fc:J

    return-wide v0
.end method
