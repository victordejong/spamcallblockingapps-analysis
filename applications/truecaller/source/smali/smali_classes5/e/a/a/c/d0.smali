.class public final synthetic Le/a/a/c/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lcom/truecaller/flashsdk/models/FlashContact;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;Lcom/truecaller/data/entity/messaging/Participant;JJZZLcom/truecaller/flashsdk/models/FlashContact;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/d0;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/d0;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iput-wide p3, p0, Le/a/a/c/d0;->c:J

    iput-wide p5, p0, Le/a/a/c/d0;->d:J

    iput-boolean p7, p0, Le/a/a/c/d0;->e:Z

    iput-boolean p8, p0, Le/a/a/c/d0;->f:Z

    iput-object p9, p0, Le/a/a/c/d0;->g:Lcom/truecaller/flashsdk/models/FlashContact;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Le/a/a/c/d0;->a:Le/a/a/c/y3;

    iget-object v1, p0, Le/a/a/c/d0;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iget-wide v2, p0, Le/a/a/c/d0;->c:J

    iget-wide v4, p0, Le/a/a/c/d0;->d:J

    iget-boolean v6, p0, Le/a/a/c/d0;->e:Z

    iget-boolean v7, p0, Le/a/a/c/d0;->f:Z

    iget-object v8, p0, Le/a/a/c/d0;->g:Lcom/truecaller/flashsdk/models/FlashContact;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v9, Le/a/a/c/i/a;->h:Le/a/a/c/i/a$c;

    .line 3
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "participant"

    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v9, Le/a/a/c/i/a;

    invoke-direct {v9}, Le/a/a/c/i/a;-><init>()V

    .line 5
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "ArgumentParticipant"

    .line 6
    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "ArgumentStartDate"

    .line 7
    invoke-virtual {v10, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "ArgumentEndDate"

    .line 8
    invoke-virtual {v10, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "ArgumentVoipCapable"

    .line 9
    invoke-virtual {v10, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ArgumentIsFlash"

    .line 10
    invoke-virtual {v10, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ArgumentFlashContact"

    .line 11
    invoke-virtual {v10, v1, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CallsHistoryBottomSheet"

    invoke-virtual {v9, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
