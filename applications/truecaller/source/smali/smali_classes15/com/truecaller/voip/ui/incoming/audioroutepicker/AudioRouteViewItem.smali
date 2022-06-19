.class public abstract Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Phone;,
        Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;,
        Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;->a:Ljava/lang/String;

    iput p2, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;->b:I

    return-void
.end method
