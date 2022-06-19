.class Lzendesk/support/request/AdapterAttachmentCarousel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AdapterAttachmentCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/AdapterAttachmentCarousel;


# direct methods
.method constructor <init>(Lzendesk/support/request/AdapterAttachmentCarousel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$1;->this$0:Lzendesk/support/request/AdapterAttachmentCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(Lzendesk/support/request/StateRequestAttachment;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lzendesk/support/request/StateRequestAttachment;->convert(Lzendesk/support/request/StateRequestAttachment;)Lzendesk/belvedere/r;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel$1;->this$0:Lzendesk/support/request/AdapterAttachmentCarousel;

    invoke-static {v0}, Lzendesk/support/request/AdapterAttachmentCarousel;->access$100(Lzendesk/support/request/AdapterAttachmentCarousel;)Lt/a/f;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$1;->this$0:Lzendesk/support/request/AdapterAttachmentCarousel;

    invoke-static {v1}, Lzendesk/support/request/AdapterAttachmentCarousel;->access$000(Lzendesk/support/request/AdapterAttachmentCarousel;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lzendesk/support/request/ActionFactory;->deselectAttachment(Ljava/util/List;)Lt/a/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lt/a/f;->c(Lt/a/a;)V

    return-void
.end method
