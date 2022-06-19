.class public interface abstract Lcom/truecaller/referral/BulkSmsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q4/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/referral/BulkSmsView$PromoLayout;,
        Lcom/truecaller/referral/BulkSmsView$a;
    }
.end annotation


# virtual methods
.method public abstract Cu(I)V
.end method

.method public abstract Ek(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract Ja(Ljava/lang/String;Z)V
.end method

.method public abstract Nf(Ljava/lang/String;)V
.end method

.method public abstract P6(ZI)V
.end method

.method public abstract f(Z)V
.end method

.method public abstract finish()V
.end method

.method public abstract ih()V
.end method

.method public abstract mh(Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/details_view/analytics/SourceType;ZZZ)V
.end method

.method public abstract p8(Landroid/content/Intent;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract q0(I)V
.end method

.method public abstract xt(Z)V
.end method
