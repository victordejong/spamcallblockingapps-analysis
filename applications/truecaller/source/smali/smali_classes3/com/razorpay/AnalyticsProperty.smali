.class public Lcom/razorpay/AnalyticsProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lproguard/annotation/Keep;
.end annotation

.annotation build Lproguard/annotation/KeepClassMembers;
.end annotation


# instance fields
.field public scope:Lcom/razorpay/AnalyticsProperty$Scope;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/razorpay/AnalyticsProperty$Scope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/razorpay/AnalyticsProperty;->scope:Lcom/razorpay/AnalyticsProperty$Scope;

    return-void
.end method

.method public constructor <init>(JLcom/razorpay/AnalyticsProperty$Scope;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/razorpay/AnalyticsProperty;->scope:Lcom/razorpay/AnalyticsProperty$Scope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/razorpay/AnalyticsProperty;->scope:Lcom/razorpay/AnalyticsProperty$Scope;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/razorpay/AnalyticsProperty$Scope;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/razorpay/AnalyticsProperty;->scope:Lcom/razorpay/AnalyticsProperty$Scope;

    return-void
.end method

.method public constructor <init>(ZLcom/razorpay/AnalyticsProperty$Scope;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/razorpay/AnalyticsProperty;->scope:Lcom/razorpay/AnalyticsProperty$Scope;

    return-void
.end method
