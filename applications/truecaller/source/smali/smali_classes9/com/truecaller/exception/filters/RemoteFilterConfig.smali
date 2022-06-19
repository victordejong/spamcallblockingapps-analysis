.class public final Lcom/truecaller/exception/filters/RemoteFilterConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR!\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/exception/filters/RemoteFilterConfig;",
        "",
        "",
        "Lcom/truecaller/exception/filters/RemoteFilterRule;",
        "rules",
        "[Lcom/truecaller/exception/filters/RemoteFilterRule;",
        "getRules",
        "()[Lcom/truecaller/exception/filters/RemoteFilterRule;",
        "<init>",
        "([Lcom/truecaller/exception/filters/RemoteFilterRule;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final rules:[Lcom/truecaller/exception/filters/RemoteFilterRule;


# direct methods
.method public constructor <init>([Lcom/truecaller/exception/filters/RemoteFilterRule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/exception/filters/RemoteFilterConfig;->rules:[Lcom/truecaller/exception/filters/RemoteFilterRule;

    return-void
.end method


# virtual methods
.method public final getRules()[Lcom/truecaller/exception/filters/RemoteFilterRule;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/exception/filters/RemoteFilterConfig;->rules:[Lcom/truecaller/exception/filters/RemoteFilterRule;

    return-object v0
.end method
