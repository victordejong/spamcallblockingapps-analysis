.class public final Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$d;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$d;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->c()V

    return-void
.end method
