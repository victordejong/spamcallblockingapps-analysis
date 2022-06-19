.class final Lcom/hiya/stingray/ui/local/location/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/a;->h(Lcom/google/android/gms/maps/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/location/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/a$b;->a:Lcom/hiya/stingray/ui/local/location/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/a$b;->a:Lcom/hiya/stingray/ui/local/location/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/location/a;->c(Lcom/hiya/stingray/ui/local/location/a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
