.class public Lcom/truecaller/referral/BulkSmsView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/referral/BulkSmsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/truecaller/referral/BulkSmsView$PromoLayout;

.field public final c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;",
            "Lcom/truecaller/referral/BulkSmsView$PromoLayout;",
            "Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/referral/BulkSmsView$a;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/truecaller/referral/BulkSmsView$a;->b:Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    .line 4
    iput-object p3, p0, Lcom/truecaller/referral/BulkSmsView$a;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 5
    iput-object p4, p0, Lcom/truecaller/referral/BulkSmsView$a;->d:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lcom/truecaller/referral/BulkSmsView$a;->e:Z

    return-void
.end method
