.class public final Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView$a;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView$a;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
