.class public final Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->E2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$p;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$p;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->qa()Le/a/b/b/c/q;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Le/a/b/b/c/q;->h:Z

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/c/p;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/b/b/c/p;->P2()V

    :cond_0
    return-void
.end method
