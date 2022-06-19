.class Lzendesk/support/request/AttachmentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private additionalAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private maxFileSize:J

.field private selectedAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final touchableItems:[I


# direct methods
.method varargs constructor <init>([I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lzendesk/support/request/AttachmentHelper;->maxFileSize:J

    .line 3
    iput-object p1, p0, Lzendesk/support/request/AttachmentHelper;->touchableItems:[I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/AttachmentHelper;->selectedAttachments:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/AttachmentHelper;->additionalAttachments:Ljava/util/List;

    return-void
.end method

.method private requestAttachmentsToMediaResult(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateRequestAttachment;

    .line 3
    invoke-static {v1}, Lzendesk/support/request/StateRequestAttachment;->convert(Lzendesk/support/request/StateRequestAttachment;)Lzendesk/belvedere/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method getSelectedAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AttachmentHelper;->selectedAttachments:Ljava/util/List;

    invoke-static {v0}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method showImagePicker(Landroidx/appcompat/app/c;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lzendesk/belvedere/b;->a(Landroid/content/Context;)Lzendesk/belvedere/b$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lzendesk/belvedere/b$b;->h()Lzendesk/belvedere/b$b;

    const-string v1, "*/*"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lzendesk/belvedere/b$b;->i(Ljava/lang/String;Z)Lzendesk/belvedere/b$b;

    iget-object v1, p0, Lzendesk/support/request/AttachmentHelper;->selectedAttachments:Ljava/util/List;

    .line 4
    invoke-direct {p0, v1}, Lzendesk/support/request/AttachmentHelper;->requestAttachmentsToMediaResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/belvedere/b$b;->m(Ljava/util/List;)Lzendesk/belvedere/b$b;

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lg/k/c/b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lzendesk/belvedere/b$b;->k(Z)Lzendesk/belvedere/b$b;

    iget-object v1, p0, Lzendesk/support/request/AttachmentHelper;->additionalAttachments:Ljava/util/List;

    .line 6
    invoke-direct {p0, v1}, Lzendesk/support/request/AttachmentHelper;->requestAttachmentsToMediaResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/belvedere/b$b;->j(Ljava/util/List;)Lzendesk/belvedere/b$b;

    .line 7
    iget-object v1, p0, Lzendesk/support/request/AttachmentHelper;->touchableItems:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Lzendesk/belvedere/b$b;->n([I)Lzendesk/belvedere/b$b;

    .line 9
    :cond_0
    iget-wide v1, p0, Lzendesk/support/request/AttachmentHelper;->maxFileSize:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 10
    invoke-virtual {v0, v1, v2}, Lzendesk/belvedere/b$b;->l(J)Lzendesk/belvedere/b$b;

    .line 11
    :cond_1
    invoke-virtual {v0, p1}, Lzendesk/belvedere/b$b;->g(Landroidx/appcompat/app/c;)V

    return-void
.end method

.method updateAttachments(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;",
            "Ljava/util/Collection<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/AttachmentHelper;->selectedAttachments:Ljava/util/List;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/AttachmentHelper;->additionalAttachments:Ljava/util/List;

    return-void
.end method

.method updateMaxFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lzendesk/support/request/AttachmentHelper;->maxFileSize:J

    return-void
.end method
