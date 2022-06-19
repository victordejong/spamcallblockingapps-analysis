.class public final Le/a/f5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/f5/b;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/truecaller/data/entity/Contact;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/truecaller/common/ui/avatar/AvatarXConfig;


# direct methods
.method public constructor <init>(Le/a/f5/b;Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/util/List;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 0

    iput-object p1, p0, Le/a/f5/c;->a:Le/a/f5/b;

    iput-object p2, p0, Le/a/f5/c;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/f5/c;->c:Lcom/truecaller/data/entity/Contact;

    iput-object p4, p0, Le/a/f5/c;->d:Ljava/util/List;

    iput-object p5, p0, Le/a/f5/c;->e:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/f5/c;->a:Le/a/f5/b;

    iget-object v0, p0, Le/a/f5/c;->b:Landroid/content/Context;

    iget-object v1, p0, Le/a/f5/c;->c:Lcom/truecaller/data/entity/Contact;

    iget-object v2, p0, Le/a/f5/c;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/data/entity/Number;

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Le/a/f5/c;->e:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    invoke-virtual {p1, v0, v1, p2, v2}, Le/a/f5/b;->i(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void
.end method
