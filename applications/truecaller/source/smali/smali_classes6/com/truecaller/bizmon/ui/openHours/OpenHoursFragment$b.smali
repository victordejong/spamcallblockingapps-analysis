.class public final Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->Ly(III)V
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

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$b;->a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    iput p2, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    .line 1
    new-instance p1, Le/a/b/b/b/a;

    invoke-direct {p1, p2, p3}, Le/a/b/b/b/a;-><init>(II)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$b;->a:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    invoke-virtual {p2}, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->PA()Le/a/b/b/b/g;

    move-result-object p2

    iget p3, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$b;->b:I

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "closesAt"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p2, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v0, p3, p1}, Le/a/b/l/o;->g3(ILe/a/b/b/b/a;)Lcom/truecaller/profile/data/dto/OpenHours;

    move-result-object p1

    .line 5
    iget-object v0, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/b/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p1}, Le/a/b/b/b/f;->ha(ILcom/truecaller/profile/data/dto/OpenHours;)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Le/a/b/b/b/g;->Hj()V

    return-void
.end method
