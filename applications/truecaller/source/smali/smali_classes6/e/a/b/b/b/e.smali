.class public final Le/a/b/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/b/e;->a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/b/b/b/e;->a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->PA()Le/a/b/b/b/g;

    move-result-object p1

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/b/f;

    if-eqz v0, :cond_0

    iget-object v1, p1, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v1}, Le/a/b/l/o;->h3()Lcom/truecaller/profile/data/dto/OpenHours;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/b/b/b/f;->Gq(Lcom/truecaller/profile/data/dto/OpenHours;)V

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/b/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/b/b/b/f;->Hw()V

    :cond_1
    return-void
.end method
