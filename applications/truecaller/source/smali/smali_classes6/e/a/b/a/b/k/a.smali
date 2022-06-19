.class public final Le/a/b/a/b/k/a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/b/k/a;->b:Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/a/b/k/a;->b:Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/bizmon/R$array;->DaysOfWeek:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
