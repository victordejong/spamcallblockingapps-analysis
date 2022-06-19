.class public final Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->M8(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$r;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iput-object p2, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$r;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->qa()Le/a/b/b/c/q;

    move-result-object p1

    iget-object p2, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$r;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "picture"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/b/b/c/q;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/c/p;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Le/a/b/b/c/p;->s3(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
