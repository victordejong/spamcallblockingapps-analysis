.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->q(Lcom/google/android/gms/maps/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$k;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$k;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->R(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/google/android/gms/maps/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$k;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->P(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/google/android/gms/maps/c$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->e(Lcom/google/android/gms/maps/c$b;)V

    :cond_0
    return-void
.end method
