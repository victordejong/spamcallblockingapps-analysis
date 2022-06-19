.class public abstract Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;,
        Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;,
        Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0003\u0008\t\nB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0001\u0003\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;",
        "Landroid/os/Parcelable;",
        "",
        "getAnalyticsContext",
        "()Ljava/lang/String;",
        "analyticsContext",
        "<init>",
        "()V",
        "DetailsScreen",
        "MidCall",
        "SecondCall",
        "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;",
        "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;",
        "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnalyticsContext()Ljava/lang/String;
.end method
