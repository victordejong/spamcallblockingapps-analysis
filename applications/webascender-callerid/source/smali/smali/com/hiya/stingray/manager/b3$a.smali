.class final Lcom/hiya/stingray/manager/b3$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/b3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Landroid/app/NotificationChannel;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/manager/b3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/b3$a;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/b3$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/b3$a;->f:Lcom/hiya/stingray/manager/b3$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/NotificationChannel;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/NotificationChannel;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/b3$a;->a(Landroid/app/NotificationChannel;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
