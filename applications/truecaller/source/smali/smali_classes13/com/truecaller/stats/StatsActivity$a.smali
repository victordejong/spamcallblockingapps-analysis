.class public final Lcom/truecaller/stats/StatsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/stats/StatsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/stats/StatsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/stats/StatsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/stats/StatsActivity$a;->a:Lcom/truecaller/stats/StatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/stats/StatsActivity$a;->a:Lcom/truecaller/stats/StatsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
