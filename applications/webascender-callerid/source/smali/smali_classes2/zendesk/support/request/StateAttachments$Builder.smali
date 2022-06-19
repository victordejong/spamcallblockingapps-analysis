.class public Lzendesk/support/request/StateAttachments$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/StateAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private attachmentNotSelectedButVisible:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private selectedAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/support/request/StateAttachments;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->getSelectedAttachments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/request/StateAttachments$Builder;->selectedAttachments:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lzendesk/support/request/StateAttachments$UriComparator;

    invoke-direct {v1}, Lzendesk/support/request/StateAttachments$UriComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lzendesk/support/request/StateAttachments$Builder;->attachmentNotSelectedButVisible:Ljava/util/Set;

    .line 5
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->getAllSelectedAttachments()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/request/StateAttachments;Lzendesk/support/request/StateAttachments$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/request/StateAttachments$Builder;-><init>(Lzendesk/support/request/StateAttachments;)V

    return-void
.end method


# virtual methods
.method addAllSelectedAttachments(Ljava/util/List;)Lzendesk/support/request/StateAttachments$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Lzendesk/support/request/StateAttachments$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/request/StateAttachments$Builder;->attachmentNotSelectedButVisible:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method build()Lzendesk/support/request/StateAttachments;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/StateAttachments;

    iget-object v1, p0, Lzendesk/support/request/StateAttachments$Builder;->selectedAttachments:Ljava/util/List;

    iget-object v2, p0, Lzendesk/support/request/StateAttachments$Builder;->attachmentNotSelectedButVisible:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lzendesk/support/request/StateAttachments;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v0
.end method

.method setSelectedAttachments(Ljava/util/List;)Lzendesk/support/request/StateAttachments$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Lzendesk/support/request/StateAttachments$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/StateAttachments$Builder;->selectedAttachments:Ljava/util/List;

    return-object p0
.end method
