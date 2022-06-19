.class public final Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->J7(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$g;->a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    iput p2, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$g;->a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->PA()Le/a/b/b/b/g;

    move-result-object p1

    iget p2, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$g;->b:I

    .line 2
    iget-object v0, p1, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v0, p2}, Le/a/b/l/o;->c3(I)V

    .line 3
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/b/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Le/a/b/b/b/f;->c3(I)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/a/b/b/b/g;->Hj()V

    return-void
.end method
