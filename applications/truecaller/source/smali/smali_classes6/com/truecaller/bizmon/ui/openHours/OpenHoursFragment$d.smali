.class public final Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->kl(ILjava/util/SortedSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;ILjava/util/SortedSet;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$d;->a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    iput p2, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$d;->b:I

    iput-object p3, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$d;->c:Ljava/util/SortedSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$d;->a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->PA()Le/a/b/b/b/g;

    move-result-object p1

    iget p2, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$d;->b:I

    iget-object v0, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$d;->c:Ljava/util/SortedSet;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "daysOfTheWeek"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v1, p2, v0}, Le/a/b/l/o;->f3(ILjava/util/SortedSet;)Lcom/truecaller/profile/data/dto/OpenHours;

    move-result-object v0

    .line 4
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/b/b/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, v0}, Le/a/b/b/b/f;->Wd(ILcom/truecaller/profile/data/dto/OpenHours;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Le/a/b/b/b/g;->Hj()V

    return-void
.end method
