.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$c;


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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$l;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$l;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->X()Lcom/hiya/stingray/ui/local/location/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$l;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {v1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->R(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/google/android/gms/maps/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/location/a;->f(Lcom/google/android/gms/maps/c;)V

    return-void
.end method
