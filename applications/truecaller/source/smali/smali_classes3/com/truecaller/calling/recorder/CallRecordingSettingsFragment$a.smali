.class public final Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;->a:I

    iput-object p2, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;

    .line 2
    iget-object p1, p1, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->i:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;

    .line 6
    iget-object p1, p1, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->g:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method
