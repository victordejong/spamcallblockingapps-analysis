.class public final Le/a/p/a/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/b;->tn(IIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/p/a/b;


# direct methods
.method public constructor <init>(Le/a/p/a/b;Landroid/content/Context;IIIJ)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/b$h;->a:Le/a/p/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/p/a/b$h;->a:Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Le/a/p/a/m;->Mj(III)Ljava/util/Date;

    move-result-object p2

    iget-object p1, p1, Le/a/p/a/m;->q:Ljava/text/SimpleDateFormat;

    invoke-interface {v0, p2, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->qs(Ljava/util/Date;Ljava/text/DateFormat;)V

    :cond_0
    return-void
.end method
