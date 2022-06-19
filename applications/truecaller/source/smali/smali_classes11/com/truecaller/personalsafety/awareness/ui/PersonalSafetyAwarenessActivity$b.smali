.class public final Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity$b;->b:Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity$b;->b:Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
