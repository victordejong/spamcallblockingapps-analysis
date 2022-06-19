.class public final Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->j5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$n;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$n;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    check-cast p1, Le/a/y/a/h/t;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/y/a/h/t;->l(Z)V

    return-void
.end method
