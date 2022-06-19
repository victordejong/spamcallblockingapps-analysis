.class public final Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->g1(Ljava/util/List;Ljava/lang/String;Le/a/p5/h0;Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/a/p5/h0;

.field public final synthetic c:Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;Ljava/util/List;Le/a/p5/h0;Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;->b:Le/a/p5/h0;

    iput-object p4, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;->c:Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;

    iput-object p5, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;->c:Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;->kh(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
