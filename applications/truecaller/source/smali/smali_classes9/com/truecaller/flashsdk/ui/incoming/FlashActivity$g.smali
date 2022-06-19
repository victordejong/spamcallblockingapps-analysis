.class public final Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O3(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$g;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$g;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    check-cast p1, Le/a/y/a/h/t;

    invoke-interface {p1}, Le/a/y/a/h/t;->u()V

    return-void
.end method
