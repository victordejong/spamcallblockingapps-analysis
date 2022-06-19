.class public final Le/a/a/d/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Lcom/truecaller/data/entity/messaging/Participant;)Le/a/a/d/a/a;
    .locals 3

    .line 1
    new-instance v0, Le/a/a/d/a/a;

    invoke-direct {v0}, Le/a/a/d/a/a;-><init>()V

    const-string v1, "im_group_mode"

    const-string v2, "im_group_mode_create"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->X0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "participants"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
