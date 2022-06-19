.class public final Lcom/hiya/stingray/ui/stats/CallsStatsGraph$a;
.super Lg/e/a/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/stats/CallsStatsGraph;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/e/a/a/f/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLg/e/a/a/d/a;)Ljava/lang/String;
    .locals 0

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    invoke-static {p1}, Lkotlin/x/a;->b(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
