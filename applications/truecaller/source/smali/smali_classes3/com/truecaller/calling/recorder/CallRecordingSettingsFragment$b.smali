.class public final Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


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

    iput p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;->a:I

    iput-object p2, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 4

    iget v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;->a:I

    const-string v1, "it.selection"

    const-string v2, "it"

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;

    invoke-virtual {v0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->OA()Le/a/h/g/i;

    move-result-object v0

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/h/g/i;->Lc(Le/a/e/c2/i0;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;

    invoke-virtual {v0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->OA()Le/a/h/g/i;

    move-result-object v0

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/h/g/i;->Ua(Le/a/e/c2/i0;)V

    return-void
.end method
