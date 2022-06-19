.class public final Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->Gk(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Landroid/widget/CompoundButton;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$d;->b:Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/CompoundButton;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$d;->b:Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$d;->b:Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;

    invoke-virtual {p1}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->OA()Le/a/h/g/i;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/h/g/i;->Eg(Z)V

    .line 4
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
