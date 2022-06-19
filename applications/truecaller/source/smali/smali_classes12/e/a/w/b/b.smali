.class public interface abstract Le/a/w/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/g/b;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "referralCode"

    const-string v1, "referralLink"

    const-string v2, "redeemCode"

    const-string v3, "codeRedeemed"

    const-string v4, "smsReferralSentTo"

    const-string v5, "smsReferralPrefetchBatch"

    const-string v6, "referralSuggestionCountLogged"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/w/b/b;->a:[Ljava/lang/String;

    return-void
.end method
