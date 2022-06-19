.class public final Lcom/truecaller/calling/recorder/CallRecordingsListFragment$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Le/a/h/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/calling/recorder/CallRecordingsListFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/recorder/CallRecordingsListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$e;->b:Lcom/truecaller/calling/recorder/CallRecordingsListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    const-string p1, "view"

    .line 2
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/a/h/g/a;

    .line 4
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$e;->b:Lcom/truecaller/calling/recorder/CallRecordingsListFragment;

    .line 5
    iget-object v2, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->N:Le/a/o2/f;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 6
    iget-object v4, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->u:Le/a/l4/c;

    if-eqz v4, :cond_2

    .line 7
    iget-object v5, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->v:Le/a/p5/c;

    if-eqz v5, :cond_1

    .line 8
    iget-object v0, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->s:Le/a/h/g/g;

    if-eqz v0, :cond_0

    .line 9
    iget-object v6, v0, Le/a/h/g/g;->v:Le/a/k0/n/e/e;

    move-object v0, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 10
    invoke-direct/range {v0 .. v5}, Le/a/h/g/a;-><init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Le/a/k0/n/e/e;)V

    return-object p1

    :cond_0
    const-string p1, "callRecordingsListItemPresenter"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p1, "clock"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p1, "availabilityManager"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string p1, "callRecordingsAdapter"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
