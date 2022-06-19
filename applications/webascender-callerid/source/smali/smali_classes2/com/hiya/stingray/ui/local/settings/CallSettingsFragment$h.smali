.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$h;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$h;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$h;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$h;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/u;->k(Landroid/content/Context;)V

    return-void
.end method
