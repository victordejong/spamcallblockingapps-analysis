.class public final Le/a/p/a/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/b;->Gu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/p/a/b;


# direct methods
.method public constructor <init>(Le/a/p/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/b$e;->a:Le/a/p/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/p/a/b$e;->a:Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->vb()V

    :cond_1
    return-void
.end method
