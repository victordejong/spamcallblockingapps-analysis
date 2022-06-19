.class public final Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->I7()V
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

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$m;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$m;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-static {p1}, Le/a/b0/q/s;->e(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImageUtils.getCapturedImageUri(this).toString()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->r:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b;

    .line 3
    invoke-virtual {p1, p2}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ua(Ljava/lang/String;)V

    return-void
.end method
